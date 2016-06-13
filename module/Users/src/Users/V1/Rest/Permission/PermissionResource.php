<?php
namespace Users\V1\Rest\Permission;

use ZF\ApiProblem\ApiProblem;
use ZF\Rest\AbstractResourceListener;

class PermissionResource extends AbstractResourceListener
{
    protected $adapter;
    protected $permissionMapper;
    
    public function __construct($adapter,$permissionMapper)
    {
        $this->adapter = $adapter;
        $this->permissionMapper = $permissionMapper;
    }
    
    public function fetch($userId)
    {
        $permission = $this->permissionMapper->fetchOne(array('userId'=>$userId));
        return $permission;
    }
    
}
