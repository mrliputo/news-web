<html>
<head>
  <title> News </title>
  <link rel="stylesheet" type="text/css" href="cssnya.css">
</head>


<body>

  <div class="container1">

    <?php require_once 'nav.php' ?>

    <div style="position: relative; left: 23%; top: 100px">

      <?php
        if(isset($_GET['unmatch'])) {
          echo '<p class="alert_danger">Password tidak cocok!</p>';
        }elseif(isset($_GET['signup_success'])){
          echo '<p class="alert_success">Berhasil daftar!</p>';
        }elseif (isset($_GET['signup_fail'])) {
          echo '<p class="alert_danger">Gagal daftar!</p>';
        }elseif (isset($_GET['wrong'])) {
          echo '<p class="alert_danger">Password salah!</p>';
        }elseif (isset($_GET['404'])){
          echo '<p class="alert_danger">Email tidak terdaftar!</p>';
        }elseif (isset($_GET['logout'])) {
          echo '<p class="alert_success">Berhasil logout!</p>';
        }
      ?>


      <form action="php/proses_login.php" method="get">

        <div class="box">

          <label>LOG IN</label><br />
          <input name="email" type="email" placeholder="Email"><br />
          <input name="pass" type="password" placeholder="Password"><br />
          <input type="submit" name="button" value="Log in">

        </div>

      </form>

      <form action="php/proses_login.php" method="get">

        <div class="box">

          <label>SIGN UP</label><br />
          <input name="nama" type="text" placeholder="Full Name"><br />
          <input name="email" type="email" placeholder="Email"><br />
          <input name="pass" type="password" placeholder="Password"><br />
          <input name="pass2" type="password" placeholder="Password lagi"><br />
          <input type="submit" name="button" value="Sign up">

        </div>

      </form>

    </div>


  </div>



  <?php require_once 'foot.php' ?>

</body>
</html>
