<?php

require_once 'connect.php';

$satu = $_GET['text1'];
$dua = $_GET['text2'];
$tiga = $_GET['text3'];
$empat = $_GET['text4'];


$mysqli->query("UPDATE `tb_berita_pilihan` SET `id_berita`=$satu WHERE `id`=1");
$mysqli->query("UPDATE `tb_berita_pilihan` SET `id_berita`=$dua WHERE `id`=2");
$mysqli->query("UPDATE `tb_berita_pilihan` SET `id_berita`=$tiga WHERE `id`=3");
$mysqli->query("UPDATE `tb_berita_pilihan` SET `id_berita`=$empat WHERE `id`=4");

header("Location: ../index.php");