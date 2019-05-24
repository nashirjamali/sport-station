<?php
//Function Upload
function upload()
{
    $namafoto = $_FILES['uploadfoto']['name'];
    $ukuranfoto = $_FILES['uploadfoto']['size'];
    $tmpfoto = $_FILES['uploadfoto']['tmp_name'];

    //Validasi ekstensi file
    $ektensivalid = ['jpg', 'jpeg', 'png', 'bmp'];
    $ekstensifoto = explode('.', $namafoto);
    $ekstensifoto = strtolower(end($ekstensifoto));
    
    if(!in_array($ekstensifoto, $ektensivalid)){
        return false;
    }

    //Batas Ukuran File
    if($ukuranfoto > 2000000) {
        return false;
    }

    //Upload Foto
    $destFile = __DIR__ . '/imgposter' . $namafoto;
    move_uploaded_file($tmpfoto, $destFile);
    chmod($destFile, 0666);
    return $namafoto;
}
?>