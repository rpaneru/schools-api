<?php
include('../phpmailer/phpmailer/class.phpmailer.php');
include('../phpmailer/phpmailer/class.smtp.php');

class Email extends PHPMailer
{
    public function __construct() 
    {
        parent::__construct();
        $this->IsSMTP();
        $this->SMTPAuth   = true;     
        $this->SMTPDebug = 2;
        $this->Port = 2525;
        $this->Host       = "smtp.elasticemail.com";
        $this->Username   = "rpaneru1986@gmail.com";
        $this->Password   = "c468d563-f16b-46e2-bfe7-df99a37115c6";
    }
}
  