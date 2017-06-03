<?php

include "../database/connection.php";
$tipe_query="SELECT id_tipe, nama_tipe FROM public.tipe WHERE id_merek=".$_POST['merek']." ORDER BY nama_tipe;";
try {
    //print "<option> ".$_POST['provinsi']." </option>";
    foreach ($GLOBALS['koneksi']->query($tipe_query)->fetchAll() as $row) {
        ?>
        <option value="<?php print $row['id_tipe']; ?>"><?php print ucwords(strtolower($row['nama_tipe'])); ?></option>
        <?php
    }
    $GLOBALS['koneksi']->close();
} catch (PDOException $e) {

}