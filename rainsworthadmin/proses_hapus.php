<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 31/05/2017
 * Time: 14.39
 */
include "../function/function.php";
if (isset($_POST['hapus'])){
    print_r($_POST);
    if ($_POST['tabel']=='merek'){
        if ($GLOBALS['koneksi']->exec("
        DELETE FROM public.merek
        WHERE merek.id_merek=".$_POST['id'].";
        DELETE FROM public.tipe
        WHERE tipe.id_merek=".$_POST['id'].";
        ")){
            scriptAlert("Merek berhasil dihapus");
            ?>
            <script>
                window.location.replace('logged_in.php?page=tabel_merek');
            </script>
            <?php
        }
        else{
            scriptAlert("Merek gagal dihapus");
            print "
            DELETE FROM public.merek
            WHERE merek.id_merek=".$_POST['id'].";
            DELETE FROM public.tipe
            WHERE tipe.id_merek=".$_POST['id'].";
            ";
        }
    }
    elseif ($_POST['tabel']=='tipe'){
        if ($GLOBALS['koneksi']->exec("
        DELETE FROM public.tipe
        WHERE tipe.id_tipe=".$_POST['id'].";
        ")){
            scriptAlert("Tipe berhasil dihapus");
            ?>
            <script>
                window.location.replace('logged_in.php?page=tabel_merek');
            </script>
            <?php
        }
        else{
            scriptAlert("Tipe gagal dihapus");
            print "
            DELETE FROM public.tipe
            WHERE tipe.id_tipe=".$_POST['id'].";
            ";
        }
    }
    elseif ($_POST['tabel']=='user'){
        $fotoUser=$GLOBALS['koneksi']->query("SELECT * FROM public.user WHERE id_user=".$_POST['id'])->fetchAll()[0]['gambar_user'];
        if (file_exists("../images/users/$fotoUser")){
            unlink("../images/users/$fotoUser");
            foreach ($GLOBALS['koneksi']->query("SELECT id_mobil FROM public.mobil WHERE id_user=".$_POST['id'])->fetchAll() as $item){
                foreach ($GLOBALS['koneksi']->query("SELECT * FROM public.gambar_mobil WHERE id_mobil=".$item['id_mobil'])->fetchAll() as $value){
                    if (file_exists("../images/cars/".$value['url_gambar_mobil'])){
                        unlink("../images/cars/".$value['url_gambar_mobil']);
                    }
                }
                $GLOBALS['koneksi']->exec("DELETE FROM public.gambar_mobil WHERE id_mobil=".$item['id_mobil']);
            }
        }
        if ($GLOBALS['koneksi']->exec("
        DELETE FROM public.user
        WHERE id_user=".$_POST['id'].";
        DELETE FROM public.mobil
        WHERE id_user=".$_POST['id'].";
        DELETE FROM public.komentar
        WHERE id_user=".$_POST['id'].";
        DELETE FROM public.pesan
        WHERE id_pengirim=".$_POST['id']." OR id_penerima=".$_POST['id'].";
        ")){
            scriptAlert("Pengguna berhasil dihapus");
            ?>
            <script>
                window.location.replace('logged_in.php?page=tabel&tabel=user');
            </script>
            <?php
        }
        else{
            scriptAlert("Pengguna gagal dihapus");
            print "
            DELETE FROM public.user
            WHERE id_user=".$_POST['id'].";
            DELETE FROM public.mobil
            WHERE id_user=".$_POST['id'].";
            DELETE FROM public.komentar
            WHERE id_user=".$_POST['id'].";
            DELETE FROM public.pesan
            WHERE id_pengirim=".$_POST['id']." OR id_penerima=".$_POST['id'].";
            ";
        }
    }
    elseif ($_POST['tabel']=='mobil'){
//        foreach ($GLOBALS['koneksi']->query("SELECT * FROM public.gambar_mobil WHERE id_mobil=".$_POST['id'])->fetchAll() as $value){
//            if (file_exists("../images/cars/".$value['url_gambar_mobil'])){
//                unlink("../images/cars/".$value['url_gambar_mobil']);
//            }
//        }
//        $GLOBALS['koneksi']->exec("DELETE FROM public.gambar_mobil WHERE id_mobil=".$_POST['id']);
//        if ($GLOBALS['koneksi']->exec("
//            DELETE FROM public.mobil
//            WHERE id_mobil=".$_POST['id'].";
//        ")){
//            scriptAlert("Iklan berhasil dihapus");
//            ?>
<!--            <script>-->
<!--                window.location.replace('logged_in.php?page=tabel&tabel=mobil');-->
<!--            </script>-->
<!--            --><?php
//        }
//        else{
//            scriptAlert("Iklan gagal dihapus");
//            print "
//            DELETE FROM public.mobil
//            WHERE id_mobil=".$_POST['id'].";
//            ";
//        }
    }
}