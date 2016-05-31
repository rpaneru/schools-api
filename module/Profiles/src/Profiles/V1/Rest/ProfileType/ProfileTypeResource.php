<?php
namespace Profiles\V1\Rest\ProfileType;

use ZF\ApiProblem\ApiProblem;
use ZF\Rest\AbstractResourceListener;

class ProfileTypeResource extends AbstractResourceListener
{
    protected $adapter;
    protected $profileTypeMapper;
    
    public function __construct($adapter,$profileTypeMapper)
    {
        $this->adapter = $adapter;
        $this->profileTypeMapper = $profileTypeMapper;
    }
    
    public function fetch($profileTypeId)
    {
        return $this->profileTypeMapper->fetchOne(array('profileTypeId'=>$profileTypeId));
    }

    public function fetchAll($params = array())
    {        
        return $this->profileTypeMapper->fetchAll($params);
    }
}