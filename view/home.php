<?php

//include_once '../classes/database.php';
//include_once '../initial.php';

require_once("../session.php");
	
	require_once("../classes/class.user.php");
	$auth_user = new USER();
	
	
	$user_id = $_SESSION['user_session'];
	
	$stmt = $auth_user->runQuery("SELECT * FROM users WHERE user_id=:user_id");
	$stmt->execute(array(":user_id"=>$user_id));
	
	$userRow=$stmt->fetch(PDO::FETCH_ASSOC);

$page_title = "IPSI Kota Magelang";
include_once "../template/header.php";
//echo "<img src='../library/images/ipsi.png'>";
?>

<div class='content'>
<div class='col-md-12'>
<h3 align='center'>
        <strong> Selamat Datang di Sistem Penilaian Pertandingan Pencak Silat </strong>
      </h3>
</div>
<div class='content'>
<div class='col-md-12'>
<div class='isi'>
	Sebuah sistem penilaian digital pertandingan Pencak Silat yang telah terkomputerisasi<br>
	Sistem ini mampu melakukan pengolahan data pertandingan Pencak Silat, antara lain:<br>
	1. Mengolah data <strong>Peserta</strong> pertandingan Pencak Silat<br>
	2. Mengolah data <strong>Juri</strong> pertandingan Pencak Silat<br>
	3. Mengolah data <strong>Partai</strong> pertandingan Pencak Silat<br>
	4. Mengolah data <strong>Hasil</strong> pertandingan Pencak Silat<br>
	5. Menampilkan data <strong>Penilaian</strong> pertandingan Pencak Silat<br>
	</div>
	</div>


<?php
include_once "../template/footer.php";
?>