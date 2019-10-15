<?php
session_start();
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

      <a href="akun_baca.php" class="menu_akun">Saya membaca</a>
      <a href="akun_setting.php" class="menu_akun aktif">Setting akun</a>
      <?php
      if($_SESSION['status'] == "editor") {
        echo '<a href="tambah_berita.php" class="menu_akun">Post berita</a>
        <a href="pilih_berita.php" class="menu_akun">Pilih berita</a>';
      }
      ?>

      <div class="clear"></div>

      <div class="content_akun">
        <div class="box" style="position: relative; left: 40%; top: 20px;">

          <?php
            if(isset($_GET['success'])) {
              echo '<p style="color: green; font-weight: bold; margin-bottom: 20px">Password berhasil diganti!</p>';
            }elseif(isset($_GET['error'])) {
              echo '<p style="color: red; font-weight: bold; margin-bottom: 20px">Password gagal diganti!</p>';
            }elseif(isset($_GET['wrong'])) {
              echo '<p style="color: red; font-weight: bold; margin-bottom: 20px">Password tidak cocok!</p>';
            }
          ?>

          <label>UBAH PASSWORD</label><br />
          <form action="php/proses_ubah_pass.php" method="get">
            <input name="pass" type="password" placeholder="Password baru"><br />
            <input name="pass2" type="password" placeholder="Ulangi password"><br />
            <input type="submit" name="button" value="Ubah">
          </form>

        </div>
      </div>

  </div>


  </div>



  <?php require_once 'foot.php' ?>

</body>
</html>
