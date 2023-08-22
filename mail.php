<?php
require("PHPMailerAutoload.php");
function mailsend($email,$uname,$pwd,$name)
{
	
$mail = new PHPMailer();

$mail->IsSMTP();                                      // set mailer to use SMTP
$mail->Host = "mx1.hostinger.in";  // specify main and backup server
$mail->SMTPAuth = true;     // turn on SMTP authentication
$mail->Username = "admin@smartgreenhouse.online";  // SMTP username
$mail->Password = "Neha@7500"; // SMTP password


$mail->Port = 587;
$mail->From = "admin@smartgreenhouse.online";
$mail->FromName = "Smart Green House";
$mail->AddAddress($email);


$mail->WordWrap = 50;                                 // set word wrap to 50 characters
//$mail->AddAttachment("/var/tmp/file.tar.gz");         // add attachments
//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");    // optional name
$mail->IsHTML(true);                                  // set email format to HTML

$mail->Subject = "Welcome to Smart Green House";
$mail->Body    = "Dear ".$name."  ,  <br/>

Your Account is Created at Smart Green House as User. <br/> We thank you for registering with us.<br/><br/>

Your login ID is :". $uname."<br/>
Your Password is : ". $pwd."<br/><br/>
We request you to keep your login information confidential.<br/><br/>
Thanks for Showing interest in our company.<br/><br/><br/>
Regards,<br/>
Smart Green House Team

";
$mail->AltBody = "This is the body in plain text for non-HTML mail clients";

if(!$mail->Send())
{
   	echo '<script language="javascript">';
		echo 'alert("Mail is Not Send.")';
		echo '</script>';	
   
}
else
{
echo '<script language="javascript">';
		echo 'alert("Mail has been sent to given Email-ID to get your login credentials.")';
		echo '</script>';	
}


}


function adminmailsend($email,$pwd,$name)
{
	
$mail = new PHPMailer();

$mail->IsSMTP();                                      // set mailer to use SMTP
$mail->Host = "mx1.hostinger.in";  // specify main and backup server
$mail->SMTPAuth = true;     // turn on SMTP authentication
$mail->Username = "admin@smartgreenhouse.online";  // SMTP username
$mail->Password = "Neha@7500"; // SMTP password


$mail->Port = 587;
$mail->From = "admin@smartgreenhouse.online";
$mail->FromName = "Smart Green House";
$mail->AddAddress($email, "User");
//$mail->AddAddress("dindeshailesh@rediffmail.com");                  // name is optional
$mail->AddReplyTo("admin@smartgreenhouse.online", "Information");

$mail->WordWrap = 50;                                 // set word wrap to 50 characters
//$mail->AddAttachment("/var/tmp/file.tar.gz");         // add attachments
//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");    // optional name
$mail->IsHTML(true);                                  // set email format to HTML

$mail->Subject = "Welcome Smart Green House";
$mail->Body    = "Dear ".$name."  ,  <br/>

Your Account is Created as Admin of Smart Green House. <br/> We thank you for registering with us.<br/><br/>

Your login ID is :". $email."<br/>
Your Password is : ". $pwd."<br/><br/>
We request you to keep your login information confidential.<br/><br/>
Thanks for Showing interest in Smart Green House.<br/><br/><br/>
Regards,<br/>
Smart Green House Team

";
$mail->AltBody = "This is the body in plain text for non-HTML mail clients";

if(!$mail->Send())
{
   	echo '<script language="javascript">';
		echo 'alert("Mail is Not Send.")';
		echo '</script>';	
   //exit;
}
else
{
echo '<script language="javascript">';
		echo 'alert("Mail has been sent to given Email-ID to get your login credentials.")';
		echo '</script>';	
}


}




//User Forgot password
function forgotmail($email,$pwd)
{
	
$mail = new PHPMailer();

$mail->IsSMTP();                                      // set mailer to use SMTP
$mail->Host = "mx1.hostinger.in";  // specify main and backup server
$mail->SMTPAuth = true;     // turn on SMTP authentication
$mail->Username = "admin@smartgreenhouse.online";  // SMTP username
$mail->Password = "Neha@7500"; // SMTP password


$mail->Port = 587;
$mail->From = "admin@smartgreenhouse.online";
$mail->FromName = "Smart Green House";
$mail->AddAddress($email);


$mail->WordWrap = 50;                                 // set word wrap to 50 characters
//$mail->AddAttachment("/var/tmp/file.tar.gz");         // add attachments
//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");    // optional name
$mail->IsHTML(true);                                  // set email format to HTML

$mail->Subject = "Password reset  to Smart Green House Account";
$mail->Body    = "Dear ".$email."  ,  <br/>

Your Account Password is reset successfully at our Smart Green House Account. <br/> We thank you for registering with us.<br/><br/>


Your  New Password is : ". $pwd."<br/><br/>
We request you to keep your login information confidential.<br/><br/>
Thanks for Showing interest in our company.<br/><br/><br/>
Regards,<br/>
Smart Green House

";
$mail->AltBody = "This is the body in plain text for non-HTML mail clients";

if(!$mail->Send())
{
   	echo '<script language="javascript">';
		echo 'alert("Mail is Not Send.")';
		echo '</script>';	
   //exit;
echo $mail->ErrorInfo;
}
else
{
echo '<script language="javascript">';
		echo 'alert("Mail has been sent to given Email-ID to get your login credentials.")';
		echo '</script>';	
}


}
