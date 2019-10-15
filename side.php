<div class="right">

    <p style="margin-bottom: 10px" class="border">BERITA TERBARU</p>

    <?php
      $select_terbaru = $mysqli->query("SELECT * FROM tb_berita ORDER BY waktu_post LIMIT 4");
      if($select_terbaru->num_rows != 0) {
        while($row_terbaru=$select_terbaru->fetch_assoc()) {
          $image_name = substr($row_terbaru['waktu_post'],0,4).substr($row_terbaru['waktu_post'],5,2).substr($row_terbaru['waktu_post'],8,2).substr($row_terbaru['waktu_post'],11,2).substr($row_terbaru['waktu_post'],14,2).substr($row_terbaru['waktu_post'],17,2).".jpg";
          echo '<div class="b1">
            <img src="images/pic/'.$image_name.'" width="110" height="65px" class="g1">
            <div class="p1">
              <p><a href="baca.php?id='.$row_terbaru['id'].'">'.$row_terbaru['judul'].'</a></p>
              <p class="tgl">'.date_format(date_create($row_terbaru['waktu_post']), "d M Y").'</p>
            </div>
          </div>';
        }
      }
     ?>

    <div class="clear"></div>

    <button class="list"><a href="list.php?latest">Full list</a></button>

    <p style="margin-bottom: 10px" class="border">BERITA PILIHAN</p>

    <?php
      $select_pilihan = $mysqli->query("SELECT * FROM tb_berita_pilihan INNER JOIN tb_berita ON tb_berita_pilihan.id_berita=tb_berita.id ORDER BY tb_berita.waktu_post DESC LIMIT 4");
      if($select_pilihan->num_rows != 0) {
        while($row_pilihan=$select_pilihan->fetch_assoc()) {
          $image_name = substr($row_pilihan['waktu_post'],0,4).substr($row_pilihan['waktu_post'],5,2).substr($row_pilihan['waktu_post'],8,2).substr($row_pilihan['waktu_post'],11,2).substr($row_pilihan['waktu_post'],14,2).substr($row_pilihan['waktu_post'],17,2).".jpg";
          echo '<div class="b1">
            <img src="images/pic/'.$image_name.'" width="110" height="65px" class="g1">
            <div class="p1">
              <p><a href="baca.php?id='.$row_pilihan['id'].'">'.$row_pilihan['judul'].'</a></p>
              <p class="tgl">'.date_format(date_create($row_pilihan['waktu_post']), "d M Y").'</p>
            </div>
          </div>';
        }
      }
     ?>

    <div class="clear"></div>

    <button class="list"><a href="list.php?pilihan">Full list</a></button>

</div>

<div class="clear"></div>
