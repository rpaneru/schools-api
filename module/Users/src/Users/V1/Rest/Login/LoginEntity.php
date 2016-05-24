<?php
namespace Users\V1\Rest\Login;

class UserDetailsEntity
{
    public $id;
    public $profileTypeId;
    public $userId;
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
    public $verified;
    public $status;
    public $sessionId;
    public $createdBy;
    public $createDateTime;

    public function getArrayCopy()
    {
        return array( 
            'id' => $this->id,
            'profileTypeId' => $this->profileTypeId,
            'userId' => $this->userId,
            'password' => $this->password,
            'name' => $this->name,
            'fatherName' => $this->fatherName,
            'motherName' => $this->motherName,
            'gender' => $this->gender,
            'dob' => $this->dob,
            'maritalStatus' => $this->maritalStatus,
            'primaryEmail' => $this->primaryEmail,
            'primaryMobile' => $this->primaryMobile,
            'primaryProfilePic' => $this->primaryProfilePic,
            'religion' => $this->religion,
            'category' => $this->category,
            'nationality' => $this->nationality,
            'verified' => $this->verified,
            'status' => $this->status,
            'sessionId' => $this->sessionId,
            'createdBy' => $this->createdBy,
            'createdDateTime' => $this->createdDateTime            
        );
    }
 
    public function exchangeArray(array $array)
    {   
        $this->id = $array['id'];
        $this->profileTypeId = $array['profileTypeId'];
        $this->userId = $array['userId'];   
        $this->password = $array['password'];
        $this->name = $array['name'];
        $this->fatherName = $array['fatherName'];
        $this->motherName = $array['motherName'];
        $this->gender = $array['gender'];
        $this->dob = $array['dob'];
        $this->maritalStatus = $array['maritalStatus'];
        $this->primaryEmail = $array['primaryEmail'];
        $this->primaryMobile = $array['primaryMobile'];
        $this->primaryProfilePic = $array['primaryProfilePic'];
        $this->religion = $array['religion'];
        $this->category = $array['category'];   
        $this->nationality = $array['nationality'];   
        $this->verified = $array['verified'];
        $this->status = $array['status'];
        $this->sessionId = $array['sessionId'];
        $this->createdBy = $array['createdBy'];        
    }
}
