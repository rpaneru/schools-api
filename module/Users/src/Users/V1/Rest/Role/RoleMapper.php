<?php
namespace Users\V1\Rest\Role;
 
use Zend\Db\Sql\Select;
use Zend\Db\Adapter\AdapterInterface;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Db\TableGateway\TableGateway;
 
class RoleMapper
{
    protected $adapter;
    
    public function __construct(AdapterInterface $adapter)
    {
        $this->adapter = $adapter;
    }
    
    public function fetchAll($params)
    {
        $select = new Select('role');
        $paginatorAdapter = new DbSelect($select, $this->adapter);
        $collection = new RoleCollection($paginatorAdapter);
        return $collection;
    }
    
    public function fetchOne($data)
    { 
        $sql = " SELECT * FROM `role` where `roleId` = ? ";
        $resultset = $this->adapter->query($sql, array($data['roleId']));
        $result = $resultset->toArray();
        
        if (!$result) 
        {
            return false;
        }

        $entity = new RoleEntity();
        $entity->exchangeArray($result[0]);
        return $entity;       
    }
    
    public function getRoleIdByUserId($data)
    { 
        $sql = " SELECT group_concat(`roleId`) as `roleId` FROM `user_role` where `userId` = ? ";
        $resultset = $this->adapter->query($sql, array($data['userId']));
        $result = $resultset->toArray();
        
        if (!$result) 
        {
            return false;
        }
        
        return $result[0]["roleId"];      
    }
}
