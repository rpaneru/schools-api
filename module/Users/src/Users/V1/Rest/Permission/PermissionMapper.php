<?php
namespace Users\V1\Rest\Permission;
 
use Zend\Db\Sql\Select;
use Zend\Db\Adapter\AdapterInterface;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Db\TableGateway\TableGateway;
 
class PermissionMapper
{
    protected $adapter;
    
    public function __construct(AdapterInterface $adapter)
    {
        $this->adapter = $adapter;
    }
    
    public function fetchOne($userId)
    { 
        $sql = "select `m1`.`menuId`,`m2`.`menu`,`m2`.`display` from ( SELECT DISTINCT `menuId` FROM `role_permission` WHERE `roleId` in (select distinct `roleId` FROM `user_role` WHERE `userId` = '".$userId."' ) ) as `m1` join menu `m2` on `m1`.`menuId` = `m2`.`menuId`";        
        $resultset = $this->adapter->query($sql);
        return $resultset;
    }
}
