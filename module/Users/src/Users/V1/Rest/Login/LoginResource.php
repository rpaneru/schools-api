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
        
            ////////////////////////////////////////////////////////////////////////////////////////
            $paramsUnsupportedArray = array();            
            foreach($paramObject as $key => $val)
            {
                if( !in_array($key, $paramsSupportedArray) ) 
                {
                    array_push($paramsUnsupportedArray, $key);
                }
            }
            if( count($paramsUnsupportedArray)>0 )
            {
                return new ApiProblem(201, implode(', ', $paramsUnsupportedArray).' not supported.');
            }
            ////////////////////////////////////////////////////////////////////////////////////////
            
            $arrayNotPresent = array();
            foreach($paramsSupportedArray as $key => $val)
            {                       
                if( !array_key_exists($val, $paramArray ) )
                {
                    array_push( $arrayNotPresent ,$val );
                }
            }
            if(count($arrayNotPresent) >0)
            {
                return new ApiProblem(201, implode(', ',$arrayNotPresent) .' not entered.');
            }
            ////////////////////////////////////////////////////////////////////////////////////////        
            
            $secObj = new \Security();
            $newHash = $secObj->generateAndMatchHash($paramObject); 
            $ret = $secObj->checkCompulsion();
            if( $newHash != $paramObject->hash && $ret == 'Yes' )
            {
                return new ApiProblem(201, 'Hash not matched.');
            }
            
            $userDetails = $this->loginMapper->fetchOne( $paramObject );
            var_dump($userDetails);die;
        }
        else
        {
           return new ApiProblem(201, 'Invalid format input.');
        }
    }
}
