<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

$mail = new PHPMailer(true);

try {
    // Server settings
    // $mail->SMTPDebug = 2;                                       // Enable verbose debug output
    $mail->isSMTP();                                            // Set mailer to use SMTP
    $mail->Host       = 'mailnoble.nbrest.com';                     // Specify main and backup SMTP servers
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'nbrit@nbrest.com';               // SMTP username
    $mail->Password   = '21fb16Ss7';                        // SMTP password
    $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
    $mail->Port       = 587;                                    // TCP port to connect to
    $mail->CharSet = "utf-8";
    // Recipients
    $mail->setFrom('nbrit@nbrest.com', 'IT Service Support');
    $mail->addAddress($mailDepartment, $toDepartment);
    // $mail->addReplyTo('info@example.com', 'Information');
    $mail->addCC('kongkiat.0174@gmail.com'); // หัวหน้า
    $mail->addCC('nbrit@nbrest.com'); // ลูกน้อง
    // CCTV
    #$mail->addCC('nbrit@nbrest.com'); // ลูกน้อง
    //
    $mail->addBCC('nbrit@nbrest.com');
    // $mail->addBCC('bcc@example.com');

    // Attachments
    // $mail->addAttachment('/var/tmp/file.tar.gz');             // Add attachments
    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');        // Optional name

    // Content
    $mail->isHTML(true);                                        // Set email format to HTML
    $mail->Subject = 'Ticket Number: ' . $runticket;
    $mail->Body    = $mail_text;
    $mail->AltBody = strip_tags($mail_text);
    // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    // echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
