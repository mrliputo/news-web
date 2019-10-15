<?php
session_start();
require_once 'connect.php';

// function anti_hacker($gak_safe) {
// 		$udah_safe = stripslashes(strip_tags(htmlspecialchars($gak_safe, ENT_QUOTES)));
// 		return $udah_safe;
// }

$judul = $mysqli->real_escape_string($_POST['judul']);
$kategori = $_POST['kategori'];
$isi = $mysqli->real_escape_string($_POST['editor1']);
$penulis = $_SESSION['nama'];
$gambar = $_FILES['pic']['name'];
$date = date("Y-m-d H:i:s");
$gambar_new_name = date("YmdHis").".jpg";

if($mysqli->query("INSERT INTO `tb_berita`(`judul`, `waktu_post`, `penulis`, `kategori`, `dibaca`) VALUES ('$judul','$date','$penulis','$kategori',0)")){
  $mysqli->query("UPDATE `tb_berita` SET `isi` = '$isi' WHERE `tb_berita`.`waktu_post` = '$date';");
  if(move_uploaded_file($_FILES['pic']['tmp_name'], "../images/pic/" . $gambar_new_name)){
    header("Location: ../tambah_berita.php");
  }else{
    echo "gambar gagal";
  }
}else{
  echo "gagal";
}




 ?>
