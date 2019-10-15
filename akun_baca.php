<?php
session_start();
require_once 'php/connect.php';

$email = $_SESSION['email'];

$result = $mysqli->query("SELECT * FROM `log_baca` INNER JOIN `tb_berita` ON log_baca.id_berita=tb_berita.id WHERE log_baca.email='$email'");

if(!isset($_SESSION['email'])) {
  header("Location: login.php");
}
?>

<html>
<head>
  <title> News </title>
  <link rel="stylesheet" type="text/css" href="cssnya.css">
</head>

<body>

  <div class="container1">

    <?php require_once 'nav.php' ?>

    <div class="akun" style="position: relative; width: 100%; top: 30px; height: 100px">

      <a href="akun_baca.php" class="menu_akun aktif">Saya membaca</a>
      <a href="akun_setting.php" class="menu_akun">Setting akun</a>
      <?php
      if($_SESSION['status'] == "editor") {
        echo '<a href="tambah_berita.php" class="menu_akun">Post berita</a>
        <a href="pilih_berita.php" class="menu_akun">Pilih berita</a>';
      }
      ?>


      <div class="clear"></div>

      <div class="content_akun">


      <?php

        if($result->num_rows != 0) {
          while($row=$result->fetch_assoc()) {
            $image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
            echo '<div class="akun_item">
          <img class="akun_image" src="images/pic/'.$image_name.'"><br>
          <p style="font-size: 110%"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p><br>
          <p style="font-size: 90%">'.date_format(date_create($row['waktu_post']), "j M Y, H:i").'</p>
        </div><br>';
          }
        }

      ?>

      </div>

  </div>


  </div>



  <?php require_once 'foot.php' ?>

</body>
</html>
