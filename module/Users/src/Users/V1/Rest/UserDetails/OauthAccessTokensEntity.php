<?php
namespace Users\V1\Rest\UserDetails;

class OauthAccessTokensEntity
{
    public $access_token;
    public $client_id;
    public $user_id;
    public $expires;
    public $scope;

    public function getArrayCopy()
    {
        return array( 
            'access_token' => $this->access_token,
            'client_id' => $this->client_id,
            'user_id' => $this->user_id,
            'expires' => $this->expires,
            'scope' => $this->scope           
        );
    }
 
    public function exchangeArray(array $array)
    {   
        $this->access_token = $array['access_token'];
        $this->client_id = $array['client_id'];
        $this->user_id = $array['user_id'];   
        $this->expires = $array['expires'];
        $this->scope = $array['scope'];        
    }
}
