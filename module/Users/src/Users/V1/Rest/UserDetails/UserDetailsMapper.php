<?php
namespace Users\V1\Rest\UserDetails;
 
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
        $sql = " SELECT * FROM `user_details` where 1 = 1";
        
        foreach($data as $key => $val)
        {
            $sql = $sql ." and ". $key ." = ? ";
        }
        
        $arrVal = array();
        foreach($data as $key => $val)
        {
            array_push($arrVal, $val);
        }
                
        $resultset = $this->adapter->query($sql,$arrVal);
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
