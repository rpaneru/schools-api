<?php
namespace Users\V1\Rest\Login;

use ZF\ApiProblem\ApiProblem;
use ZF\Rest\AbstractResourceListener;

class LoginResource extends AbstractResourceListener
{
    protected $adapter;
    protected $userDetailsMapper;
    
    public function __construct($adapter,$userDetailsMapper)
    {
        $this->adapter = $adapter;
        $this->userDetailsMapper = $userDetailsMapper;
    }
    
    public function fetch($param)
    {
        $paramObject = json_decode($param);
        $paramArray = (array)$paramObject;
        
        if( json_last_error() == JSON_ERROR_NONE )
        {
            
            $paramsSupportedArray = array("userId","password","hash");

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
            unset($paramObject->hash);
            $userDetails = $this->userDetailsMapper->fetchOne( $paramObject );
            
            if($userDetails->verified == 'No')
            {
                return new ApiProblem(201, "User's mobile number is not verified.");
            }
            
            if($userDetails->status == 'Inactive')
            {
                return new ApiProblem(201, "User is deleted.");
            }

            /*$mail = new \Email();                                   
            $mail->From = 'rpaneru1986@gmail.com';
            $mail->FromName = 'SRTechnologies';
            $mail->addAddress('rajeshpaneru@myworkforce.org');
            $mail->WordWrap = 50;
            $mail->Subject = 'Test Email Subject';
            $mail->Body    = 'Test Email Body.';
            $mail->AddAttachment("/var/www/html/demo-api/public/img/ag-hero.png");

            if(!$mail->send()) 
            {
                return 'Message could not be sent.';
                //return 'Mailer Error: ' . $mail->ErrorInfo;
            } 
            else 
            {
                return 'Message has been sent';
            }*/
            
            return $userDetails;

        }
        else
        {
           return new ApiProblem(201, 'Invalid format input.');
        }
    }
}
