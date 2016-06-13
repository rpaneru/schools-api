<?php
namespace Users\V1\Rest\Role;

class RoleEntity
{
    public $roleId;
    public $role;
    public $parentRoleId;
    public $status;
    public $sessionId;
    public $createdBy;
    public $createdDateTime;

    public function getArrayCopy()
    {
        return array( 
            'roleId' => $this->roleId,
            'role' => $this->role,
            'parentRoleId' => $this->parentRoleId,            
            'status' => $this->status,
            'sessionId' => $this->sessionId,
            'createdBy' => $this->createdBy,
            'createdDateTime' => $this->createdDateTime            
        );
    }
 
    public function exchangeArray(array $array)
    {   
        $this->roleId = $array['roleId'];
        $this->role = $array['role'];   
        $this->parentRoleId = $array['parentRoleId'];        
        $this->status = $array['status'];
        $this->sessionId = $array['sessionId'];
        $this->createdBy = $array['createdBy'];        
        $this->createdDateTime = $array['createdDateTime'];
    }
}
