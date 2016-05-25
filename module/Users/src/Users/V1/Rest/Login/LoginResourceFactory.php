<?php
namespace Users\V1\Rest\Login;

class LoginResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $loginMapper = $services->get('Users\V1\Rest\Login\LoginMapper'); 
        var_dump($adapter);
        var_dump($loginMapper);die;
        
        return new LoginResource($adapter,$loginMapper);
    }
}
