<?php
namespace Users\V1\Rest\Login;

class LoginResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $loginMapper = $services->get('Users\V1\Rest\Login\LoginMapper');         

        return new LoginResource($adapter,$loginMapper);
    }
}
