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
        $userId = $data->userId;
        $password = $data->password;       
        $profileType = $data->profileType;       
                
        $sql = " SELECT case when count(*) = 1 then 'success' when count(*) = 0 then 'fail' end as `countUser` FROM `users` where `userId` = ? and `password` = ? and `profileTypeId` = ? ";
        $resultset = $this->adapter->query($sql, array($userId,$password,$profileType));
        return $resultset->toArray();
    }
}
