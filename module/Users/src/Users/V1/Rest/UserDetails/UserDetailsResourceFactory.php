<?php
namespace Users\V1\Rest\UserDetails;

class UserDetailsResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $userDetailsMapper = $services->get('Users\V1\Rest\UserDetails\UserDetailsMapper');
        
        return new UserDetailsResource($adapter,$userDetailsMapper);
    }
}
