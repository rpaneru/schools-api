<?php
class Email
{
    private $apiKey;
    private $accountEmailAddress;
    
    function __construct() 
    {
        $this->apiKey = 'c468d563-f16b-46e2-bfe7-df99a37115c6';
        $this->accountEmailAddress = 'rpaneru1986@gmail.com';
    }
    
    function cURLElasticEmail($to, $subject, $body_text, $body_html, $from, $from_name) 
    {
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://api.elasticemail.com/mailer/send');
        curl_setopt($ch, CURLOPT_POST, 1);

        $data = 'username='.urlencode($this->accountEmailAddress).
                        '&api_key='.urlencode($this->apiKey).
                        '&from='.urlencode($from).
                        '&from_name='.urlencode($from_name).
                        '&to='.urlencode($to).
                        '&subject='.urlencode($subject);

        if($body_html)	$data .= '&body_html='.urlencode($body_html);
        if($body_text)	$data .= '&body_text='.urlencode($body_text);

        // Set parameter data to POST fields
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);

        $header = "Content-Type: application/x-www-form-urlencoded\r\n";
        $header .= "Content-Length: ".strlen($data)."\r\n\r\n";

        // Set header
        curl_setopt($ch, CURLOPT_HEADER, $header);

        // Set to receive server response
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        // Set cURL to verify SSL
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);

        // Set the path to the certificate used by Elastic Mail API
        //curl_setopt($ch, CURLOPT_CAINFO, getcwd()."/DOWNLOADED_CERTIFICATE.CRT");


        $result = curl_exec($ch);
        curl_close($ch);

        // Return the response or NULL on failure
        return ($result === false) ? NULL : $result;

        // Alternative error checking return
        // return ($result === false) ? 'Curl error: ' . curl_error($ch): $result;
    }         
}

//$obj = new Email();
//echo $obj->cURLElasticEmail('rajeshpaneru@myworkforce.org', 'Test Subject', '', '<strong>Test HTML Body</strong>', 'rpaneru1986@gmail.com', 'Rajesh Paneru');
