<?php session_start() ?>
<h1> BERITA </h1>
<p style="float: right; font-size: 90%">
  <?php
    if(isset($_SESSION['email'])) {
      echo '<a href="akun_baca.php">'.$_SESSION['nama'].'</a> | <a href="php/proses_logout.php">Logout</a>';
    }else{
      echo '<a href="login.php">Login</a>';
    }
   ?>

</p>
<div class="clear"></div>
<div style="margin-top: 0" class="cari">
  <form action="list.php">
    <input type="text" name="s" placeholder="Cari berita...">
    <input type="submit" value="Cari">
  </form>
</div>

<div class="clear"></div>

<nav class="full1">
  <ul>
    <li><a href="index.php" class="nv"> BERANDA </a></li>
    <li><a href="list.php?kategori=sains" class="nv"> SAINS </a></li>
    <li><a href="list.php?kategori=teknologi" class="nv"> TEKNOLOGI </a></li>
    <li><a href="list.php?kategori=gadget" class="nv"> GADGET </a></li>
    <li><a href="list.php?kategori=film" class="nv"> FILM </a></li>
    <li><a href="list.php?kategori=lain" class="nv"> LAIN-LAIN </a></li>
  </ul>
</nav>

<div class="clear"></div>
