<?php
namespace Users\V1\Rest\Role;

class RoleResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $roleMapper = $services->get('Users\V1\Rest\Role\RoleMapper');
        
        return new RoleResource($adapter,$roleMapper);
    }
}
