<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 01/06/2017
 * Time: 20.11
 */
include "../function/function.php";
if (isset($_POST['submit'])){
    $counter=0;
    foreach (explode(PHP_EOL, $_POST['isi']) as $item){
        $item=ucwords($item);
        if ($GLOBALS['koneksi']->exec("INSERT INTO merek (nama_merek) VALUES ('$item')")){
            $counter++;
        }
    }
    if ($counter==0){
        scriptAlert('Gagal menambahkan karena duplikasi merek!');
    }
    else{
        $teks='berhasil menambahkan '.$counter.' merek';
        scriptAlert($teks);
    }
}
?>
<script>
    window.location.replace('logged_in.php?page=tabel_merek');
</script>
