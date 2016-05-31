<?php
namespace Profiles\V1\Rest\ProfileType;

class ProfileTypeResourceFactory
{
    public function __invoke($services)
    {
        $adapter = $services->get('Zend\Db\Adapter\Adapter');
        $profileTypeMapper = $services->get('Profiles\V1\Rest\ProfileTypeMapper'); 
        
        return new ProfileTypeResource($adapter,$profileTypeMapper);
    }
}
