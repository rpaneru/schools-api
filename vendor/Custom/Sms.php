<?php
use Zend\Db\Sql\Sql;
use Zend\Db\Sql\Where;
use Zend\Db\Sql\Expression;
use Zend\Db\ResultSet\Resultset;

class Sms {
    public $user;
    public $pass;
    public $sender;
    public $priority;
    public $stype;
    public $dbAdapter;

	
    public function __construct()
    {
        $this->user = '8130654757';
        $this->pass = '59c84ab';
        $this->sender = 'MWFRAJ';				
        $this->priority = 'ndnd';
        $this->stype = 'normal';
        
    }
    
    public function setDbAdapter($dbAdapter) 
    {
        $this->dbAdapter = $dbAdapter;
    }
    
    public function sendSMS( $data )
    {	        
        $receiverMobNo = $data['receiverMobNo']; 
        $templateType = $data['templateType'];
                 
        $retArr = $this->getTemplateText($data['templateType'], $data['receiverMobNo'] );
        
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => 'http://bhashsms.com/api/sendmsg.php',
            CURLOPT_POST => 1,
            CURLOPT_POSTFIELDS => array(
                    'user' => $this->user,
                    'pass' => $this->pass,
                    'sender' => $this->sender,
                    'phone' => $data['receiverMobNo'],
                    'text' => $retArr['msg'],
                    'priority' => $this->priority,
                    'stype' => $this->stype
            )
        ));
        $resp = curl_exec($curl);

        if( strpos($resp,'S.') == 0)
        {
            $bhasSMSId = $resp;
            $deliveryStatus = 'success';
            $errorReason = '';
        }
        else
        {
            $bhasSMSId ='';
            $deliveryStatus = 'fail';
            $errorReason = $resp;
        }
        
        $data['bhasSMSId'] = $bhasSMSId;
        $data['senderMobNo'] = $this->user;
        $data['message'] = $retArr['msg'];
        $data['deliveryStatus'] = $deliveryStatus;
        $data['errorReason'] = $errorReason;
        $data['templateType'] = $data['templateType'];
        
        
        return json_encode( $data );        
    }
}
