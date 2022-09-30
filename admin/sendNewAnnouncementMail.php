<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require '../assets/mail/vendor/autoload.php';

function sendNewAnnouncementEmail($userMails,$announcement,$bloodneed,$dat,$organizer,$requirements){       

foreach($userMails as $to_email){
$mail = new PHPMailer(false);
//Server settings
$mail->SMTPDebug = false;                      //Enable verbose debug output
$mail->isSMTP();                                            //Send using SMTP
$mail->Host       = 'caveoclient.com';                     //Set the SMTP server to send through
$mail->SMTPAuth   = true;                                   //Enable SMTP authentication
$mail->Username   = 'test@caveoclient.com';                     //SMTP username
$mail->Password   = '}Y,Hd}Bo#r]%';                               //SMTP password
$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
$mail->Port       = 465;
$mail->setFrom('blooddonations@gmail.com',  'Blood Donations');
$mail->addAddress($to_email, 'Mailer');
$mail->isHTML(true);                                  //Set email format to HTML
//$mail->addAttachment($attachment);         //Add attachments

$subject = $announcement;
$mail->Subject = $subject;

$txt = '<html>' .
  '<head>' .
  '<title>' . $subject . '</title>' .
  '</head>' .
  '<body>' .
  '<h1>' . $subject . '</h1>' .
  '<p>' . $organizer. ' has made a new announcement. They need ' . $bloodneed . ' blood type. The date of the blood collection is ' . $dat . '. The requirements are ' . $requirements . '.</p>' .
  '</body>' .
  '</html>';
$mail->Body    = $txt;
$mail->send();
}   

}

function sendNewCampaignEmail($userMails,$cname,$oname,$phn,$cdate,$descp){

    foreach($userMails as $to_email){
        $mail = new PHPMailer(false);
        //Server settings
        $mail->SMTPDebug = false;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'caveoclient.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'test@caveoclient.com';                     //SMTP username
        $mail->Password   = '}Y,Hd}Bo#r]%';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
        $mail->Port       = 465;
        $mail->setFrom('blooddonations@gmail.com',  'Blood Donations');
        $mail->addAddress($to_email, 'Mailer');
        $mail->isHTML(true);                                  //Set email format to HTML
        //$mail->addAttachment($attachment);         //Add attachments
        
        $subject = $cname;
        $mail->Subject = $subject;
        
        $txt = '<html>' .
          '<head>' .
          '<title>' . $subject . '</title>' .
          '</head>' .
          '<body>' .
          '<h1>' . $subject . '</h1>' .
          '<p>' . $oname. ' has made a new announcement. They stated a new ' . $cname . ' blood campaign. The campaign is starting from ' . $cdate . '. Campaign details are ' . $descp . '. Further details can be found in the website.</p>' .
          '</body>' .
          '</html>';
        $mail->Body    = $txt;
        $mail->send();
        }   

    }
    if (false) {
        echo 'Message could not be sent.';
        echo 'Mailer Error: ' . $mail->ErrorInfo;
      } else {
      
          echo 'Announcement is sent to all doners.';
      
      }