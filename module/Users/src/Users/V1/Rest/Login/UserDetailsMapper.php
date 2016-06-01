<?php
namespace Users\V1\Rest\Login;
 
use Zend\Db\Sql\Select;
use Zend\Db\Adapter\AdapterInterface;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Db\TableGateway\TableGateway;
 
class UserDetailsMapper
{
    protected $adapter;
    
    public function __construct(AdapterInterface $adapter)
    {
        $this->adapter = $adapter;
    }
    
    public function fetchOne($data)
    { 
        $sql = " SELECT * FROM `user_details` where `userid` = ? and `password` = ? ";
        $resultset = $this->adapter->query($sql, array($data->userId,$data->password));
        $result = $resultset->toArray();
        
        if (!$result) 
        {
            return false;
        }

        $entity = new UserDetailsEntity();
        $entity->exchangeArray($result[0]);
        return $entity;       
    }
}
