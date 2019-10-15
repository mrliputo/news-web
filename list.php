<?php

require_once 'php/connect.php';

?>
<html>
<head>
	<title> News </title>
	<link rel="stylesheet" type="text/css" href="cssnya.css">
</head>


<body>

	<div class="container1">

		<?php require_once 'nav.php' ?>

		<div class="left">

			<?php

			if(isset($_GET['s'])){
				$kata_kunci = $mysqli->real_escape_string(trim($_GET['s']));

				if(strlen($kata_kunci)<3){
					echo '<p>Kata kunci terlalu pendek.</p>';
				}else{
					$where = "";
					$kata_kunci_split = preg_split('/[\s]+/', $kata_kunci);
					$total_kata_kunci = count($kata_kunci_split);

					foreach($kata_kunci_split as $key=>$kunci){
						$where .= "judul LIKE '%$kunci%' OR isi LIKE '%$kunci%'";
						if($key != ($total_kata_kunci - 1)){
							$where .= " OR ";
						}
					}

					$results = $mysqli->query("SELECT * FROM tb_berita WHERE $where");

					$num = $results->num_rows;

					if($num == 0){
						echo '<p class="cari_sum">Hasil pencarian : <strong>"'.$kata_kunci.'"</strong> tidak ditemukan!</p>';
					}else{
						echo '<p class="cari_sum">Hasil pencarian : <strong>"'.$kata_kunci.'"</strong>.</p>';
						while($row = $results->fetch_assoc()){
							$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
							echo '
							<div class="item">
							<br /><img src="images/pic/'.$image_name.'" alt="thumbnail">
							<div>
							<br />
							<p class="item_title"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p>
							<br />
							<p class="item_date">'.date_format(date_create($row['waktu_post']), "j M Y, H:i").'</p>
							</div>
							</div>
							<div class="clear"></div>';
						}
					}
				}
			}elseif(isset($_GET['kategori'])){

				$kategori = $_GET['kategori'];

				$results = $mysqli->query("SELECT * FROM tb_berita WHERE kategori = '$kategori' ORDER BY waktu_post DESC");

				$num = $results->num_rows;

				if($num != 0){
					echo '<p class="cari_sum">Berita di kategori <strong>"'.$kategori.'"</strong>.</p>';
					while($row = $results->fetch_assoc()){
						$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
						echo '
						<div class="item">
						<br /><img src="images/pic/'.$image_name.'" alt="thumbnail">
						<div>
						<br />
						<p class="item_title"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p>
						<br />
						<p class="item_date">'.date_format(date_create($row['waktu_post']), "j M Y, H:i").'</p>
						</div>
						</div>
						<div class="clear"></div>';
					}
				}else{
					echo "<p>Tidak ada berita di kateogri <strong>$kategori</strong></p>";
				}

			}elseif(isset($_GET['latest'])){

				$results = $mysqli->query("SELECT * FROM tb_berita ORDER BY waktu_post DESC");

				$num = $results->num_rows;

				if($num != 0){
					echo '<p class="cari_sum">Berita Terbaru</p>';
					while($row = $results->fetch_assoc()){
						$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
						echo '
						<div class="item">
						<br /><img src="images/pic/'.$image_name.'" alt="thumbnail">
						<div>
						<br />
						<p class="item_title"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p>
						<br />
						<p class="item_date">'.date_format(date_create($row['waktu_post']), "j M Y, H:i").'</p>
						</div>
						</div>
						<div class="clear"></div>';
					}
				}else{
					echo "<p>Tidak ada berita</p>";
				}

		}elseif(isset($_GET['popular'])) {
			$results = $mysqli->query("SELECT * FROM tb_berita ORDER BY dibaca DESC");

			$num = $results->num_rows;

			if($num != 0){
				echo '<p class="cari_sum">Berita Terpopuler</p>';
				while($row = $results->fetch_assoc()){
					$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
					echo '
					<div class="item">
					<br /><img src="images/pic/'.$image_name.'" alt="thumbnail">
					<div>
					<br />
					<p class="item_title"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p>
					<br />
					<p class="item_date">'.date_format(date_create($row['waktu_post']), "j M Y, H:i").'</p>
					</div>
					</div>
					<div class="clear"></div>';
				}
			}else{
				echo "<p>Tidak ada berita</p>";
			}
		}elseif(isset($_GET['pilihan'])) {
			$results = $mysqli->query("SELECT * FROM tb_berita_pilihan INNER JOIN tb_berita ON tb_berita_pilihan.id_berita=tb_berita.id ORDER BY tb_berita.waktu_post DESC");

			$num = $results->num_rows;

			if($num != 0){
				echo '<p class="cari_sum">Berita Pilihan</p>';
				while($row = $results->fetch_assoc()){
					$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
					echo '
					<div class="item">
					<br /><img src="images/pic/'.$image_name.'" alt="thumbnail">
					<div>
					<br />
					<p class="item_title"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p>
					<br />
					<p class="item_date">'.date_format(date_create($row['waktu_post']), "j M Y, H:i").'</p>
					</div>
					</div>
					<div class="clear"></div>';
				}
			}else{
				echo "<p>Tidak ada berita</p>";
			}
		}

		?>


	</div>

	<?php require_once 'side.php' ?>

</div>



<?php require_once 'foot.php' ?>

</body>
</html>
