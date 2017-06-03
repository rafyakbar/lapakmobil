<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 02/05/2017
 * Time: 12.47
 */
try {
    if ($_POST['new_password'] == $_POST['new_kpassword']) {
        if (MyQuery::insert($_POST['ndepan'],$_POST['nbelakang'],$_POST['email'],$_POST['new_password'])) {
            header("location:index.php");
            scriptAlert("Pendaftaran berhasil");
        } else {
            header("location:index.php");
            scriptAlert("Register gagal");
        }
    } else {
        header("location:index.php");
        scriptAlert("password dan konfirmasi password harus sama!");
    }
} catch (PDOException $exception) {

}
?>
