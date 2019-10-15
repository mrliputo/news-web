<?php

if(!isset($_GET['id'])) {
  die("Error!");
}

session_start();

require_once 'php/connect.php';

$id = $_GET['id'];
$date = date("Y-m-d H:i:s");

$email = $_SESSION['email'];

$select_counter = $mysqli->query("SELECT dibaca FROM tb_berita WHERE id=$id");
$row = $select_counter->fetch_assoc();
$baru = $row['dibaca'] + 1;
$mysqli->query("UPDATE `tb_berita` SET `dibaca`=$baru WHERE id=$id");

if(isset($_SESSION['email'])) {
  $mysqli->query("INSERT INTO `log_baca`(`email`, `id_berita`, `waktu`) VALUES ('$email',$id,'$date')");
}

$result = $mysqli->query("SELECT * FROM tb_berita WHERE id=$id");
$row = $result->fetch_assoc();
$judul = $row['judul'];
$waktu = $row['waktu_post'];
$penulis = $row['penulis'];
$kategori = $row['kategori'];
$isi = $row['isi'];
$image_name = substr($waktu,0,4).substr($waktu,5,2).substr($waktu,8,2).substr($waktu,11,2).substr($waktu,14,2).substr($waktu,17,2).".jpg";

$select_komen = $mysqli->query("SELECT * FROM tb_komen INNER JOIN tb_user ON tb_komen.email=tb_user.email WHERE tb_komen.id_berita=$id ORDER BY tb_komen.waktu DESC");
$komen_rows = $select_komen->num_rows;

?>

<html>
<head>
  <title> News </title>
  <link rel="stylesheet" type="text/css" href="cssnya.css">
</head>


<body>

  <div class="container1">

    <?php require_once 'nav.php' ?>

    <div style="line-height: 27px" class="left">

      <p id="title"><?php echo $judul ?></p>
      <p id="info">Oleh <?php echo $penulis ?> pada <?php echo date_format(date_create($waktu), "j M Y, H:i") ?></p>
      <img id="image" src="images/pic/<?php echo $image_name ?>" />
      <p id="article"><?php echo $isi ?></p>
      <p id="comment_counter"><?php echo $komen_rows ?> Komentar</p>
      <div id="input_comment">

        <?php
        if(isset($_SESSION['email'])) {
          echo '<form action="php/proses_komen.php" method="get">
          <input name="id" type="hidden" value="'.$id.'">
          <textarea name="komen" placeholder="Tulis komentar..."></textarea>
          <button type="submit">post!</button>
          </form>';
        }else{
          echo '<p>Silahkan <a href="login.php">login</a> untuk dapat memberi komentar</p>';
        }
        ?>

      </div>

      <?php

      if($komen_rows != 0) {
        while ($komen_row = $select_komen->fetch_assoc()) {
          echo '<div id="comments">
          <p><span style="font-weight: bold">'.$komen_row['nama'].'</span><span style="font-size:80%"> pada '.date_format(date_create($komen_row['waktu']), "j M Y, H:i").'</span></p>
          <p style="font-size: 95%">
          '.$komen_row['isi'].'
          </p>
          </div>';
        }
      }else{
        echo '<div id="comments">
        <p style="font-size: 95%">
        Tidak ada komentar.
        </p>
        </div>';
      }

      ?>

    </div>

    <?php require_once 'side.php' ?>

  </div>



  <?php require_once 'foot.php' ?>

</body>
</html>
