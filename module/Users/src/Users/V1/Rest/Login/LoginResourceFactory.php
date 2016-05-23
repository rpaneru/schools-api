<?php
namespace Users\V1\Rest\Login;

class LoginResourceFactory
{
    public function __invoke($services)
    {
        $loginMapper = $services->get('Users\V1\Rest\Login\LoginMapper'); 
        
        return new LoginResource($loginMapper);
    }
}
