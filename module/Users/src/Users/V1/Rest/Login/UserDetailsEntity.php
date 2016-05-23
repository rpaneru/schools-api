<?php
namespace Users\V1\Rest\Login;

class UserDetailsEntity
{
    public $profileTypeId;
    public $userid;
    public $password;
    public $name;
    public $fatherName;
    public $motherName;
    public $gender;
    public $dob;
    public $maritalStatus;
    public $primaryEmail;
    public $primaryMobile;
    public $primaryProfilePic;
    public $religion;
    public $category;
    public $nationality;

    public function getArrayCopy()
    {
        return array( 
            'profileTypeId' => $this->profileTypeId,
            'userid' => $this->userid,
            'password' => $this->password,
            
            
            'name' => $this->name,
            'email' => $this->email,
            'mobile' => $this->mobile,
            
            'status' => $this->status,
            'sessionId' => $this->sessionId,
            'createdBy' => $this->createdBy,
            'createdDateTime' => $this->createdDateTime            
        );
    }
 
    public function exchangeArray(array $array)
    {                     
        $this->name = $array['name'];
        $this->email = $array['email'];
        $this->mobile = $array['mobile'];
        $this->userid = $array['userid'];   
        $this->password = $array['password'];   
        $this->profileTypeId = $array['profileTypeId'];
        $this->status = $array['status'];
        $this->sessionId = $array['sessionId'];
        $this->createdBy = $array['createdBy'];
        $this->createdDateTime = $array['createdDateTime'];
    }
}
