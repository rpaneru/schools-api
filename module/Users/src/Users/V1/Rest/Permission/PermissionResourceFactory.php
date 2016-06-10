<?php
namespace Users\V1\Rest\Permission;

class PermissionResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $permissionMapper = $services->get('Users\V1\Rest\Permission\PermissionMapper');
        
        return new PermissionResource($adapter,$permissionMapper);
    }
}
