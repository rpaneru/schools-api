<?php
namespace Users\V1\Rest\Login;

class LoginResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $userDetailsMapper = $services->get('Users\V1\Rest\UserDetails\UserDetailsMapper'); 
        
        return new LoginResource($adapter,$userDetailsMapper);
    }
}
