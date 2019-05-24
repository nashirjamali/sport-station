<?php
require_once '../conn.php';
$id = $_GET[ 'id' ];
$delete = mysqli_query($conn, "DELETE FROM penjualan WHERE id = $id" );
if($delete) {
// Mengarahkan ke halaman read.php
header( "Location: penjualan.php" );
}
