<?php
class Security 
{    
    public static $secKey = '59c84ab';
    public static $compulsion = 'Yes';
    
    public function generateAndMatchHash($data)    
    {	        
        $array = (array)$data;        
        unset($array['hash']);
        $str = '';
        foreach($array as $key=>$val)	
        {
            $str.= '|'.$key.'|'.$val;
        }
        $str = trim($str,'|');        
        $str.='|key|'.self::$secKey;
        return md5($str);        
    } 
    
    public function checkCompulsion()
    {
        return self::$compulsion;
    }
    
    public function checkUnsupportedFields($paramObject, $paramsSupportedArray)
    {
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
            return implode(', ', $paramsUnsupportedArray).' not supported.';
        }
    }
    
    public function checkMissingFields($paramArray, $paramsSupportedArray)
    {        
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
            return implode(', ',$arrayNotPresent) .' not entered.';
        }
    }
    
}