<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 03/05/2017
 * Time: 20.37
 */
include "../database/connection.php";
$kota_query="SELECT id_kota, nama_kota FROM kota WHERE id_provinsi=".$_POST['provinsi']." ORDER BY nama_kota;";
try {
    foreach ($GLOBALS['koneksi']->query($kota_query)->fetchAll() as $row) {
        ?>
        <option value="<?php print $row['id_kota']; ?>"><?php print ucwords(strtolower($row['nama_kota'])); ?></option>
        <?php
    }
    $GLOBALS['koneksi']->close();
} catch (PDOException $e) {

}
?>