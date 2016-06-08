<?php
namespace Users\V1\Rest\UserDetails;

class UserDetailsResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $userDetailsMapper = $services->get('Users\V1\Rest\UserDetails\UserDetailsMapper');
        
        
        $oauthAccessTokensMapper = $services->get('Users\V1\Rest\UserDetails\OauthAccessTokensMapper');
        
        
        return new UserDetailsResource($adapter,$userDetailsMapper,$oauthAccessTokensMapper);
    }
}
