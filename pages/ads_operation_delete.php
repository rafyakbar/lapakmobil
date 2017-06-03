<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 23/05/2017
 * Time: 14.31
 */
try{
    if (isset($_POST['id_mobil'])){
        foreach (MyQuery::getCarImage($_POST['id_mobil']) as $row){
            unlink("../images/cars/".$row['url_gambar_mobil']);
        }
        if (MyQuery::deleteCar($_POST['id_mobil'])){
            header("location:index.php?page=my_ads");
        }
        else{
            print "Hapus gagal!";
        }
    }
} catch (Exception $exception){

}