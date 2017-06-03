<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 27/05/2017
 * Time: 11.33
 */
if (isset($_POST['submit'])){
    $_POST['nego']=(isset($_POST['nego']))?$_POST['nego']:'false';
    if (MyQuery::updateAds($_POST['id_mobil'],$_POST['jenis'],$_POST['tipe'],$_POST['judul'],$_POST['harga'],$_POST['nopol'],$_POST['cc'],$_POST['transmisi'],$_POST['bbakar'],$_POST['tahun'],$_POST['keterangan'],$_POST['kota'],$_POST['nego'])){
        if ($_FILES['upload']['size'][0]!=0){
            foreach (MyQuery::getCarImage($_POST['id_mobil']) as $item){
                $url="../images/cars/".$item['url_gambar_mobil'];
                if (file_exists($url)){
                    unlink($url);
                }
            }
            MyQuery::deleteCarImage($_POST['id_mobil']);
            ini_set("memory_limit", "512M");
            for ($c=0;$c<8;$c++){
                if ($c>count($_FILES['upload']['tmp_name'])-1)
                    break;
                $gambar = $_SESSION['id_user'] . "_" . $_POST['id_mobil'] . "_" . $c . "_" . (new DateTime())->format('Y-m-d_H-i-s') . ".jpg";
                $targetFile = "../images/cars/" . $gambar;
                compressImage($_FILES['upload']['tmp_name'][$c], $_FILES['upload']['size'][$c], $targetFile);
                MyQuery::setCarImages($_POST['id_mobil'], $gambar);
            }
            ini_set("memory_limit", "128M");
        }
        ?>
        <script>
            window.location.replace('index.php?page=my_ads');
        </script>
        <?php
    }
    else{
        scriptAlert("Gagal diperbarui");
    }
}