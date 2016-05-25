<?php
namespace Users\V1\Rest\Login;
 
use Zend\Db\Sql\Select;
use Zend\Db\Adapter\AdapterInterface;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Db\TableGateway\TableGateway;
 
class LoginMapper
{
    protected $adapter;
    
    public function __construct(AdapterInterface $adapter)
    {
        $this->adapter = $adapter;
    }
 
    public function getAdapter()
    {
       return $this->adapter;
    }
    
    public function fetchOne($data)
    { 
        $sql = " SELECT * FROM `users` where `userid` = ? and `password` = ? and `profileTypeId` = ? ";
        $resultset = $this->adapter->query($sql, array($data->userId,$data->password,$data->profileTypeId));
        $result = $resultset->toArray();
        return $result;
        /*if (!$result) 
        {
            return false;
        }

        $entity = new UserDetailsEntity();
        $entity->exchangeArray($result[0]);
        return $entity;  */           
    }
}
