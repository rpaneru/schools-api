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
        $select = new Select('profile_types');
        $paginatorAdapter = new DbSelect($select, $this->adapter);
        $collection = new ProfileTypeCollection($paginatorAdapter);
        return $collection;
    }
    
    public function fetchOne($data)
    { 
        $sql = " SELECT * FROM ` profile_types` where profileTypeId = ? ";
        $resultset = $this->adapter->query($sql, array($data->profileTypeId));
        $result = $resultset->toArray();
        
        if (!$result) 
        {
            return false;
        }

        $entity = new ProfileTypeEntity();
        $entity->exchangeArray($result[0]);
        return $entity;       
    }
}