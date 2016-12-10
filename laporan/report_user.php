<?php
require "../core/init.php";
require "fpdf.php";


$pdf = new FPDF();
$pdf-> AddPage();

$pdf->SetFont('Arial','B',16);
$pdf->Cell(190,0.6,'','0','1','C',true);
$pdf->Ln(4);


?>
