<?php
session_start();
if(!isset($_SESSION['email']) && $_SESSION['status'] != "editor") {
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
        echo '
          <a href="tambah_berita.php" class="menu_akun aktif">Post berita</a>
          <a href="pilih_berita.php" class="menu_akun">Pilih berita</a>';
      }
      ?>

      <div class="clear"></div>

      <div class="content_akun">
        <div>
          <form action="php/proses_tambah_berita.php" method="post" enctype="multipart/form-data">
            <input name="judul" type="text" placeholder="Judul berita" style="width:50%; height: 30px; padding: 5px; margin-right:30px">
            <select name="kategori" style="margin-right: 30px">
              <option value="-">--Kategori--</option>
              <option value="Sains">Sains</option>
              <option value="Teknologi">Teknologi</option>
              <option value="Gadget">Gadget</option>
              <option value="Film">Film</option>
              <option value="Lain-lain">Lain-lain</option>
            </select>
            Gambar :
            <input name="pic" type="file" style="margin-bottom:20px">
            <textarea name="editor1" id="editor1" rows="10" cols="10"></textarea>
            <button id="post_button" type="input">Post</button>
          </form>
        </div>
      </div>

    </div>


  </div>



  <?php require_once 'foot.php' ?>
  <script>
  CKEDITOR.replace( 'editor1', {
    extraPlugins: 'imageuploader'
  });
  </script>
</body>
</html>
