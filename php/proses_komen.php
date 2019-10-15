<?php

session_start();

require_once 'connect.php';

$id = $_GET['id'];
$komen = $_GET['komen'];
$user = $_SESSION['email'];
$email = $_SESSION['email'];
$waktu = date("Y-m-d H:i:s");


$mysqli->query("INSERT INTO `tb_komen`(`email`, `id_berita`, `waktu`, `isi`) VALUES ('$email',$id,'$waktu','$komen')");

header("Location: ../baca.php?id=$id");

 ?>
