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
    
    public function fetch($param)
    {
        $paramObject = json_decode($param);
        $paramArray = (array)$paramObject;
        
        if( json_last_error() == JSON_ERROR_NONE )
        {
            
            $paramsSupportedArray = array("userId","password","profileTypeId","hash");

            ////////////////////////////////////////////////////////////////////////////////////
            $secObj = new \Security( );
            
            $errorMessage = $secObj->checkUnsupportedFields($paramObject, $paramsSupportedArray);
            if( isset($errorMessage) )
            {
                return new ApiProblem(201, $errorMessage);
            }

            $errorMessage = $secObj->checkMissingFields($paramArray, $paramsSupportedArray);
            if( isset($errorMessage) )
            {
                return new ApiProblem(201, $errorMessage);
            }

            $newHash = $secObj->generateAndMatchHash($paramObject); 
            
            $ret = $secObj->checkCompulsion();
            if( $newHash != $paramObject->hash && $ret == 'Yes' )
            {
                return new ApiProblem(201, 'Hash not matched.');
            }
            ////////////////////////////////////////////////////////////////////////////////////

            $userDetails = $this->loginMapper->fetchOne( $paramObject );
            var_dump($userDetails);die;
        }
        else
        {
           return new ApiProblem(201, 'Invalid format input.');
        }
    }
}
