<?php
require_once 'php/connect.php';
$latest = $mysqli->query("SELECT * FROM tb_berita ORDER BY waktu_post DESC LIMIT 4");

?>

<html>
<head>
	<title> News </title>
	<link rel="stylesheet" type="text/css" href="cssnya.css">
</head>


<body>

	<div class="container1">

		<?php require_once 'nav.php' ?>

		<?php
		$row = $latest->fetch_assoc();
		$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
		echo '<div class="container2">
		<div class="label">'.$row['kategori'].'</div>
		<img src="images/pic/'.$image_name.'" width="600px" height="380px" class="bter">
		<div class="box-judul"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></div>
	</div>';
	?>

	<div class="container3">
		<div class="brta">
			<?php
			$row = $latest->fetch_assoc();
			$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
			echo '<div style="left: 56%" class="label">'.$row['kategori'].'</div>
			<img src="images/pic/'.$image_name.'" width="455px" height="225px" class="a">
			<div class="box-judul-md"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></div>';
			?>

		</div>
		<div class="brt">

			<?php
			$row = $latest->fetch_assoc();
			$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
			echo '<div class="b" style="margin-right: 10px">
			<div style="left: 56%" class="label">'.$row['kategori'].'</div>
			<img src="images/pic/'.$image_name.'" width="222px" height="135px">
			<div class="box-judul-sm"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></div>
		</div>';

		$row = $latest->fetch_assoc();
		$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
		echo '<div class="b">
		<div style="left: 73.2%" class="label">'.$row['kategori'].'</div>
		<img src="images/pic/'.$image_name.'" width="222px" height="135px">
		<div class="box-judul-sm2"><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></div>
	</div>';
	?>

</div>
</div>

<div class="clear"></div>

<div style="float: left; margin-right: 10px; width: 65%">

	<div style="margin-top: 30px">

		<div class="container4" style="margin-right: 20px">
			<p class="border"> BERITA POPULER </p>
			<?php

			$populer = $mysqli->query("SELECT * FROM tb_berita ORDER BY dibaca DESC LIMIT 4");

			while($row=$populer->fetch_assoc()) {
				$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
				echo '<div class="b1">
				<img src="images/pic/'.$image_name.'" width="150" height="100px" class="g1">
				<div class="p1">
					<p><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p>
					<p class="tgl">'.date_format(date_create($row['waktu_post']), "d M Y").'</p>
				</div>
			</div>';
		}

		?>

	</div>

	<div class="container4">
		<p class="border"> BERITA PILIHAN </p>

		<?php

		$populer = $mysqli->query("SELECT * FROM tb_berita_pilihan INNER JOIN tb_berita ON tb_berita_pilihan.id_berita=tb_berita.id ORDER BY tb_berita.waktu_post DESC LIMIT 4");

		while($row=$populer->fetch_assoc()) {
			$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
			echo '<div class="b1">
			<img src="images/pic/'.$image_name.'" width="150" height="100px" class="g1">
			<div class="p1">
				<p><a href="baca.php?id='.$row['id'].'">'.$row['judul'].'</a></p>
				<p class="tgl">'.date_format(date_create($row['waktu_post']), "d M Y").'</p>
			</div>
		</div>';
	}

	?>

</div>

</div>

<div class="clear"></div>

<div class="ar" style="width: 99%">
	<p style="margin-bottom: 10px" class="border"> SAINS </p>

	<?php
	$select_sains = $mysqli->query("SELECT * FROM tb_berita WHERE kategori = 'Sains' LIMIT 4");
	$row = $select_sains->fetch_assoc();
	$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
	echo '<div style="margin-right: 20px; float: left; width: 49%">
	<img src="images/pic/'.$image_name.'" width="350px" height="250px">
	<p class="judul-kecil"><a href="#">'.$row['judul'].'</a></p>
	<p style="font-size: 80%; margin-top: 10px">'.date_format(date_create($row['waktu_post']), "d M Y").'</p>
	<p class="isi-kecil">'.substr($row['isi'],50,200).'</p>
</div>';

	?>


<div class="container4">

	<?php

	while ($row = $select_sains->fetch_assoc()) {
		$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
		echo '<div class="b1">
		<img src="images/pic/'.$image_name.'" width="150" height="100px" class="g1">
		<div class="p1">
			<p><a href="">'.$row['judul'].'</a></p>
			<p class="tgl">'.date_format(date_create($row['waktu_post']), "d M Y").'</p>
		</div>
	</div>';
}

?>

</div>

</div>

<div class="clear"></div>

<div class="ar" style="width: 99%">
	<p style="margin-bottom: 10px" class="border"> TEKNOLOGI </p>

	<?php
	$select_sains = $mysqli->query("SELECT * FROM tb_berita WHERE kategori = 'Teknologi' LIMIT 4");
	$row = $select_sains->fetch_assoc();
	$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
	echo '<div style="margin-right: 20px; float: left; width: 49%">
	<img src="images/pic/'.$image_name.'" width="350px" height="250px">
	<p class="judul-kecil"><a href="#">'.$row['judul'].'</a></p>
	<p style="font-size: 80%; margin-top: 10px">'.date_format(date_create($row['waktu_post']), "d M Y").'</p>
	<p class="isi-kecil">'.substr($row['isi'],50,200).'</p>
</div>';

	?>

		<div class="container4">
			
<?php

	while ($row = $select_sains->fetch_assoc()) {
		$image_name = substr($row['waktu_post'],0,4).substr($row['waktu_post'],5,2).substr($row['waktu_post'],8,2).substr($row['waktu_post'],11,2).substr($row['waktu_post'],14,2).substr($row['waktu_post'],17,2).".jpg";
		echo '<div class="b1">
		<img src="images/pic/'.$image_name.'" width="150" height="100px" class="g1">
		<div class="p1">
			<p><a href="">'.$row['judul'].'</a></p>
			<p class="tgl">'.date_format(date_create($row['waktu_post']), "d M Y").'</p>
		</div>
	</div>';
}

?>
		</div>

	</div>

</div>

<div style="float: left; width: 33%" >

	<div class="ar" style="width: 100%; margin-top: 30px;">
		<p style="margin-bottom: 10px" class="border"> TETAP TERHUBUNG </p>

		<div class="sos">
			<img src="images/facebook.png" class="gb" width="50px" height="50px">
			<img style="margin: 0 20px" src="images/twitter.png" class="gb" width="50px" height="50px">
			<img src="images/instagram.png" class="gb" width="50px" height="50px">
		</div>

	</div>

	<div class="clear"></div>

	<div class="ar" style="width: 100%; margin-top: 30px;">
		<p style="margin-bottom: 10px" class="border"> VIDEO PILIHAN </p>

		<video width="350" controls>
			<source src="videos/vid.mp4" type="video/mp4" />
		</video>

	</div>

	<div class="clear"></div>


</div>

<div class="clear"></div>

</div>

<?php require_once 'foot.php' ?>

</body>
</html>
