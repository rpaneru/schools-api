<?php
namespace Users\V1\Rest\UserDetails;
 
use Zend\Db\Sql\Select;
use Zend\Db\Adapter\AdapterInterface;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Db\TableGateway\TableGateway;
 
class OauthAccessTokensMapper
{
    protected $adapter;
    
    public function __construct(AdapterInterface $adapter)
    {
        $this->adapter = $adapter;
    }
    
    public function fetchOne($accessToken)
    { 
        $sql = " SELECT `user_id` FROM `oauth_access_tokens` where access_token = ? ";
        $resultset = $this->adapter->query($sql,array('access_token'=>$accessToken));
        $result = $resultset->toArray(); 

        if (!$result) 
        {
            return false;
        }

        $entity = new OauthAccessTokensEntity();
        $entity->exchangeArray($result[0]);
        return $entity;       
    }
}
