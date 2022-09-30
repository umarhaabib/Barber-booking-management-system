<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require 'assets/mail/vendor/autoload.php';

function sendNewAppointmentEmail($aptnumber, $adate, $atime, $msg) {
   

 $to_email = $_SESSION['loggedinuseremail'];
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
$mail->setFrom('barbershop@gmail.com',  'Barber Shop');
$mail->addAddress($to_email, 'Mailer');
$mail->isHTML(true);                                  //Set email format to HTML
//$mail->addAttachment($attachment);         //Add attachments

$subject = "Your Appointment Successfully Booked";
$mail->Subject = $subject;

$txt = '<html>' .
  '<head>' .
  '<title>' . $subject . '</title>' .
  '</head>' .
  '<body>' .
  '<h1>' . "Your Appointment Notification has been sent to admin. ".'</h1>'.
  '<p>' . "Your Appointment Number is: " . $aptnumber . '</p>' .
  '</body>' .
  '</html>';
$mail->Body    = $txt;
$mail->send();
}   



function sendEmailToAdmin($aptnumber, $adate, $atime, $msg,$to_email){

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
        $mail->setFrom('barbershop@gmail.com',  'Barber Shop');
        $mail->addAddress($to_email, 'Mailer');
        $mail->isHTML(true);                                  //Set email format to HTML
        //$mail->addAttachment($attachment);         //Add attachments
        
        $subject = "New Appointment Request";
        $mail->Subject = $subject;
        
        $txt = '<html>' .
          '<head>' .
          '<title>' . $subject . '</title>' .
          '</head>' .
          '<body>' .
          '<h1>' . "You have a new appointment request. ". '</h1>'.
          '<p>' . "Please check your dashboard for more details. Appointment Number is: " . $aptnumber . '</p>'.
          '</body>' .
          '</html>';
        $mail->Body    = $txt;
        $mail->send();
        }   
       function sendMailTOUser($remark,$status,$to_email){
       
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
        $mail->setFrom('barbershop@gmail.com',  'Barber Shop');
        $mail->addAddress($to_email, 'Mailer');
        $mail->isHTML(true);                                  //Set email format to HTML
        //$mail->addAttachment($attachment);         //Add attachments
        
        $subject = "Appointment Status has been changed";
        $mail->Subject = $subject;
        
        $txt = '<html>' .
          '<head>' .
          '<title>' . $subject . '</title>' .
          '</head>' .
          '<body>' .
          '<h1>' . "Your Appointment has been ".$status. '</h1>'.
          '<p>' . "Please check your dashboard for more details. Following is the remark: " . $remark . '</p>'.
          '</body>' .
          '</html>';
        $mail->Body    = $txt;
        $mail->send();
        }   


    
    if (false) {
        echo 'Message could not be sent.';
        echo 'Mailer Error: ' . $mail->ErrorInfo;
      } else {
      
          echo 'Announcement has been sent successfully.';
      
      }