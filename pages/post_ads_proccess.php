<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 20/05/2017
 * Time: 15.59
 */
try {
    //print_r($_POST);
    if (isset($_POST['iklan'])) {
        $fileCount = count($_FILES['upload']['tmp_name']);
        if ($fileCount > 0) {
            ini_set("memory_limit", "512M");
            if (!isset($_POST['nego'])) {
                $_POST['nego'] = 'false';
            }
            $id_mobil = MyQuery::postAds($_SESSION['id_user'], $_POST['jenis'], $_POST['tipe'], $_POST['judul'], $_POST['harga'], $_POST['nopol'], $_POST['cc'], $_POST['transmisi'], $_POST['bbakar'], $_POST['tahun'], $_POST['keterangan'], $_POST['kota'], $_POST['nego']);
            for ($c = 0; $c < 8; $c++) {
                if ($c > $fileCount - 1) {
                    break;
                } else {
                    $gambar = $_SESSION['id_user'] . "_" . $id_mobil . "_" . $c . "_" . (new DateTime())->format('Y-m-d_H-i-s') . ".jpg";
                    $targetFile = "../images/cars/" . $gambar;
                    compressImage($_FILES['upload']['tmp_name'][$c], $_FILES['upload']['size'][$c], $targetFile);
                    MyQuery::setCarImages($id_mobil, $gambar);
                }
            }
            ini_set("memory_limit", "128M");
            header("location:index.php?page=my_ads");
        }
    }
} catch (Exception $exception) {
    print $exception;
}