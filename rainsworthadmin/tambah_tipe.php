<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 01/06/2017
 * Time: 20.43
 */
include "../function/function.php";
if (isset($_POST['submit'])){
    print_r(explode(PHP_EOL, $_POST['isi']));
    $counter=0;
    foreach (explode(PHP_EOL, $_POST['isi']) as $item){
        $item=ucwords($item);
        if ($GLOBALS['koneksi']->exec("INSERT INTO tipe (nama_tipe, id_merek) VALUES ('$item', ".$_POST['id_merek'].")")){
            $counter++;
        }
    }
    $teks='berhasil menambahkan '.$counter.' tipe '.$GLOBALS['koneksi']->query("SELECT nama_merek FROM public.merek WHERE id_merek=".$_POST['id_merek'])->fetchAll()[0][0];
    scriptAlert($teks);
}
?>
<script>
    window.location.replace('logged_in.php?page=tabel_merek');
</script>
