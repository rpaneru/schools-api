<?php
include('../phpmailer/phpmailer/PHPMailerAutoload.php');

class Email extends PHPMailer
{
    public function __construct() 
    {
        parent::__construct();
        
        $this->IsSMTP();
        $this->SMTPAuth   = true;     
        $this->SMTPDebug = 2;
        $this->Port = 2525;
        $this->Host       = "smtp.mailgun.org";
        $this->Username   = "";
        $this->Password   = "";
    }
}
  