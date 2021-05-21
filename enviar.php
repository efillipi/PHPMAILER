<html>

<head>
  <title>VERIFICA LOGIN</title>
  <link rel="icon" type="image/png" href="images/icons/favicon.ico" />

</head>
<?php

require_once('src/PHPMailer.php');
require_once('src/SMTP.php');
require_once('src/Exception.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

$mail = new PHPMailer(true);


if (isset($_POST["Submit"])) {

  $nome = $_POST["nome"];
  $email =  $_POST["email"];
  $subject = $_POST["subject"];
  $mensagem =  $_POST["texto"];

  if (empty($nome) || empty($email) || empty($mensagem)) {
    if (empty($nome)) {
      echo "<font color='red'>Name Em branco.</font><br/>";
    }
    if (empty($email)) {
      echo "<font color='red'>email Em branco.</font><br/>";
    }
    if (empty($mensagem)) {
      echo "<font color='red'>mensagem Em branco.</font><br/>";
    }
    echo "<br/><a href='javascript:self.history.back();'>Go Back</a><br>";
  }
  try {
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;
    $mail->isSMTP();
    $mail->Host = 'mail.maktub.tech';
    $mail->SMTPAuth = true;
    $mail->Username = 'EMAIL';
    $mail->Password = 'SENHA';
    $mail->Port = 587;

    $mail->setFrom('equipe@maktub.tech.com');
    $mail->addAddress($email);

    $mail->isHTML(true);
    $mail->Subject = $subject;
    $mail->Body = $mensagem;
    $mail->AltBody = $mensagem;

    if ($mail->send()) {
      echo 'Email enviado com sucesso';
      echo "<br/><a href='javascript:self.history.back();'>Voltar</a>";
    } else {
      echo 'Email nao enviado';
    }
  } catch (Exception $e) {
    echo "Erro ao enviar mensagem: {$mail->ErrorInfo}";
  }
} else {
  header('location: form.html');
}

?>

</html>
