<?php
require "core/init.php";
require "laporan/fpdf.php";

$pdf = new FPDF();
$pdf-> AddPage();

$pdf->SetFont('Arial','B',16);
$pdf->Cell(0,5,'BelajarNgoding','0','1','C',false);
$pdf->Ln(3);
$pdf->Cell(28,6,'',0,0,'L');
$pdf->Cell(134,0.6,'','0','2','C',true);
$pdf->Ln(4);

$pdf->SetFont('Arial','B',9);
$pdf->Cell(0,5,'Laporan Data User','0','1','C',false);
$pdf->Ln(2);

$pdf->SetFont('Arial','B',7);
$pdf->Cell(31,6,'',0,0,'C');
$pdf->Cell(8,6,'No',1,0,'C');
$pdf->Cell(40,6,'Username',1,0,'C');
$pdf->Cell(40,6,'E-Mail',1,0,'C');
$pdf->Cell(40,6,'Level',1,0,'C');
$no = 0;
$sql = mysqli_query($link, "SELECT * FROM anggota");
while ($data = mysqli_fetch_array($sql)) {
  if($data['level'] == 1){
    $level = 'Super User';
  }else{
    $level = 'User';
  }
  $no++;
  $pdf->Ln(6);
  $pdf->SetFont('Arial','',9);
  $pdf->Cell(31,6,'',0,0,'C');
  $pdf->Cell(8,6,$no,1,0,'C');
  $pdf->Cell(40,6,$data['username'],1,0,'L');
  $pdf->Cell(40,6,$data['email'],1,0,'C');
  $pdf->Cell(40,6,$level,1,0,'C');
}
$pdf->Output();
?>
