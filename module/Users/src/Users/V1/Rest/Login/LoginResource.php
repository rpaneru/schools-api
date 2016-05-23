<?php
namespace Users\V1\Rest\Login;

use ZF\ApiProblem\ApiProblem;
use ZF\Rest\AbstractResourceListener;

class LoginResource extends AbstractResourceListener
{
    protected $adapter;
    protected $loginMapper;
    
    public function __construct($adapter,$loginMapper)
    {
        $this->adapter = $adapter;
        $this->loginMapper = $loginMapper;
    }
    
    public function fetch($userId,$password,$profileTypeId)
    {
        echo $userId;
        echo $password;
        echo $profileTypeId;
        die;
        return new ApiProblem(405, 'The GET method has not been defined for individual resources');
    }
}
