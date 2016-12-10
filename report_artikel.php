<?php
require "core/init.php";
require "laporan/fpdf.php";

$pdf = new FPDF();
$pdf-> AddPage();

$pdf->SetFont('Arial','B',16);
$pdf->Cell(0,5,'BelajarNgoding','0','1','C',false);
$pdf->Ln(3);
$pdf->Cell(8,6,'',0,0,'L');
$pdf->Cell(174,0.6,'','0','2','C',true);
$pdf->Ln(4);

$pdf->SetFont('Arial','B',9);
$pdf->Cell(0,5,'Laporan Data Artikel','0','1','C',false);
$pdf->Ln(2);

$pdf->SetFont('Arial','B',7);
$pdf->Cell(11,6,'',0,0,'C');
$pdf->Cell(8,6,'No',1,0,'C');
$pdf->Cell(60,6,'Judul',1,0,'C');
$pdf->Cell(35,6,'Waktu',1,0,'C');
$pdf->Cell(35,6,'Penulis',1,0,'C');
$pdf->Cell(30,6,'Kategori',1,0,'C');
$no = 0;
$sql = mysqli_query($link, "SELECT * FROM berita");
while ($data = mysqli_fetch_array($sql)) {
  $no++;
  $pdf->Ln(6);
  $pdf->SetFont('Arial','',9);
  $pdf->Cell(11,6,'',0,0,'C');
  $pdf->Cell(8,6,$no,1,0,'C');
  $pdf->Cell(60,6,$data['judul'],1,0,'C');
  $pdf->Cell(35,6,date("D, d/M/Y", strtotime($data['waktu'])),1,0,'C');
  $pdf->Cell(35,6,$data['penulis'],1,0,'C');
  $pdf->Cell(30,6,$data['tag'],1,0,'C');
}
$pdf->Output();
?>
