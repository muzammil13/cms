<?php
$kategori = tampilkan_kategori();
$super_user = $login = false;
if(isset($_SESSION['user'])){
  $login = true;
  if(cek_status($_SESSION['user']) == 1){
    $super_user = true;
  }
}
?>

<!DOCTYPE HTML>
<html>
	<head>
	  <title>BelajarNgoding</title>
	  <meta name="description" content="website description" />
	  <meta name="keywords" content="website keywords, website keywords" />
	  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
	  <link rel="stylesheet" type="text/css" href="template/style/style.css" />
	</head>


<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
					<h1><a href="index.php">Belajar<span class="logo_colour">Ngoding</span></a></h1>
	        <h2>Informasi Seputar Ilmu Komputer</h2>
	      </div>
	    </div>
	    <div id="menubar">
	      <ul id="menu">
	        <li><a href="index.php">Home</a></li>
	        <li><a href="category.php">Kategori</a></li>
	        <li><a href="contact.php">Contact US</a></li>
	        <li><a href="about.php">About</a></li>
          <li><a href="report.php">Laporan</a></li>
        </ul>
      </div>
    </div>
		<div id="content_header"></div>
