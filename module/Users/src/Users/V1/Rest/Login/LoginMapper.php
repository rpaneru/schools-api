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
    
    public function fetchOne($userId)
    { 
        $sql = 'SELECT * FROM users WHERE userId = ?';
        $resultset = $this->adapter->query($sql, array($userId));
        $data = $resultset->toArray();
        if (!$data) 
        {
            return false;
        }

        $entity = new LoginEntity();
        $entity->exchangeArray($data[0]);
        return $entity;             
    }
}
