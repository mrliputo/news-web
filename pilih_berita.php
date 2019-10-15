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
  <script src="ckeditor/ckeditor.js"></script>
</head>

<body>

  <div class="container1">

    <?php require_once 'nav.php' ?>

    <div class="akun" style="position: relative; width: 100%; top: 30px; height: 100px">

      <a href="akun_baca.php" class="menu_akun">Saya membaca</a>
      <a href="akun_setting.php" class="menu_akun">Setting akun</a>
      <?php
      if($_SESSION['status'] == "editor") {
        echo '<a href="tambah_berita.php" class="menu_akun">Post berita</a>
        <a href="pilih_berita.php" class="menu_akun aktif">Pilih berita</a>';
      }
      ?>

      <div class="clear"></div>

      <div class="content_akun">
        <form action="php/set_pilihan.php" action="get">
          <div class="box" style="position: relative; left: 40%; top: 20px;">

            <label>BERITA PILIHAN</label><br />
            <input name="text1" type="text" placeholder="#1"><br />
            <input name="text2" type="text" placeholder="#2"><br />
            <input name="text3" type="text" placeholder="#3"><br />
            <input name="text4" type="text" placeholder="#4"><br />
            <input type="submit" value="Update">

          </div>
        </form>
      </div>

  </div>


  </div>



  <?php require_once 'foot.php' ?>

</body>
</html>
