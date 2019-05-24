<?php
require_once '../conn.php';
$id = $_GET[ 'id' ];
$delete = mysqli_query($conn, "DELETE FROM users WHERE id =
$id" );
if($delete) {
// Mengarahkan ke halaman read.php
header( "Location: user.php" );
}
