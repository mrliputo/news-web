<?php
session_start();
require_once 'connect.php';

$pass = $_GET['pass'];
$pass2 = $_GET['pass2'];

if($pass == $pass2) {
  $email = $_SESSION['email'];
  if($mysqli->query("UPDATE `tb_user` SET `password`='$pass' WHERE email='$email'")) {
    $_SESSION['password'] = $pass;
    header("Location: ../akun_setting.php?success");
  }else{
    header("Location: ../akun_setting.php?error");
  }
}else{
  header("Location: ../akun_setting.php?wrong");
}

 ?>
