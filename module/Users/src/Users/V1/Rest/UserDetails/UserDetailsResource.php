<?php
namespace Users\V1\Rest\UserDetails;

use ZF\ApiProblem\ApiProblem;
use ZF\Rest\AbstractResourceListener;

class UserDetailsResource extends AbstractResourceListener
{
    protected $adapter;
    protected $userDetailsMapper;
    protected $roleMapper;
    protected $oauthAccessTokensMapper;
    
    public function __construct($adapter,$userDetailsMapper,$roleMapper,$oauthAccessTokensMapper)
    {
        $this->adapter = $adapter;
        $this->userDetailsMapper = $userDetailsMapper;
        $this->roleMapper = $roleMapper;
        $this->oauthAccessTokensMapper = $oauthAccessTokensMapper;
    }

    public function create($data)
    {
        return new ApiProblem(405, 'The POST method has not been defined');
    }

    public function delete($id)
    {
        return new ApiProblem(405, 'The DELETE method has not been defined for individual resources');
    }

    public function deleteList($data)
    {
        return new ApiProblem(405, 'The DELETE method has not been defined for collections');
    }

    public function fetch($param)
    {
        $authData = $this->getIdentity()->getAuthenticationIdentity();
        $accessToken = $authData['access_token'];
        
        $userId = $this->oauthAccessTokensMapper->getUserIdByAccessToken( $accessToken );
        
        $userDetails = $this->userDetailsMapper->fetchOne( array('userId'=>$userId) );
        
        $roleDetails = $this->roleMapper->getRoleIdByUserId( array('userId'=>$userId) );
        
        $userDetails->roleId = $roleDetails;
        
        
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
    
    public function fetchAll($params = array())
    {
        return new ApiProblem(405, 'The GET method has not been defined for collections');
    }
    
    public function patch($id, $data)
    {
        return new ApiProblem(405, 'The PATCH method has not been defined for individual resources');
    }

    public function replaceList($data)
    {
        return new ApiProblem(405, 'The PUT method has not been defined for collections');
    }

    public function update($id, $data)
    {
        return new ApiProblem(405, 'The PUT method has not been defined for individual resources');
    }
}
