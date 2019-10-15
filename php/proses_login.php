<?php
session_start();
require_once 'connect.php';

if($_GET['button'] == "Sign up") {

  $pass = $_GET['pass'];
  $pass2 = $_GET['pass2'];

  if($pass == $pass2) {

    $nama = $_GET['nama'];
    $email = $_GET['email'];

    if($mysqli->query("INSERT INTO `tb_user`(`email`, `nama`, `password`, `status`) VALUES ('$email','$nama','$pass','user')")) {
      header("Location: ../login.php?signup_success");
    }else{
      header("Location: ../login.php?signup_fail");
    }

  }else{
    header("Location: ../login.php?unmatch");
  }

}elseif ($_GET['button'] == "Log in") {

    $email = $_GET['email'];
    $pass = $_GET['pass'];

    $result = $mysqli->query("SELECT * FROM tb_user WHERE email='$email'");

    if($result->num_rows != 0) {
      $row = $result->fetch_assoc();
      if($row['password'] == $pass) {
        $_SESSION['email'] = $row['email'];
        $_SESSION['password'] = $row['password'];
        $_SESSION['nama'] = $row['nama'];
        $_SESSION['status'] = $row['status'];
        header("Location: ../index.php");
      }else{
        header("Location: ../login.php?wrong");
      }
    }else{
      header("Location: ../login.php?404");
    }

  }else{
    header("Location: ../login.php");
  }

?>
