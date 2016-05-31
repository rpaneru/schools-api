<?php
namespace Profiles\V1\Rest\ProfileType;

class ProfileTypeEntity
{
    public $profileTypeId;
    public $profileType;
    public $parentProfileTypeId;
    public $status;
    public $sessionId;
    public $createdBy;
    public $createdDateTime;

    public function getArrayCopy()
    {
        return array( 
            'profileTypeId' => $this->profileTypeId,
            'profileType' => $this->profileType,
            'parentProfileTypeId' => $this->parentProfileTypeId,            
            'status' => $this->status,
            'sessionId' => $this->sessionId,
            'createdBy' => $this->createdBy,
            'createdDateTime' => $this->createdDateTime            
        );
    }
 
    public function exchangeArray(array $array)
    {   
        $this->profileTypeId = $array['profileTypeId'];
        $this->profileType = $array['profileType'];   
        $this->parentProfileTypeId = $array['parentProfileTypeId'];        
        $this->status = $array['status'];
        $this->sessionId = $array['sessionId'];
        $this->createdBy = $array['createdBy'];        
        $this->createdDateTime = $array['createdDateTime'];
    }
}
