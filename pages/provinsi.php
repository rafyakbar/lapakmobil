<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 03/05/2017
 * Time: 20.45
 */
try {
    foreach (MyQuery::getProvinsi() as $row) {
        ?>
        <option value="<?php print $row['id_provinsi']; ?>"><?php print ucwords(strtolower($row['nama_provinsi']));
        ?></option>
        <?php
    }
} catch (PDOException $e) {

}