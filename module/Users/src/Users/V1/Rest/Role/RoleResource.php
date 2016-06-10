<?php
namespace Users\V1\Rest\Role;

use ZF\ApiProblem\ApiProblem;
use ZF\Rest\AbstractResourceListener;

class RoleResource extends AbstractResourceListener
{
    protected $adapter;
    protected $roleMapper;
    
    public function __construct($adapter,$roleMapper)
    {
        $this->adapter = $adapter;
        $this->roleMapper = $roleMapper;
    }
    
    public function fetch($roleId)
    {
        return $this->roleMapper->fetchOne(array('roleId'=>$roleId));
    }

    public function fetchAll($params = array())
    {        
        return $this->roleMapper->fetchAll($params);
    }
}
