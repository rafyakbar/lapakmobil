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
            scriptAlert("Pendaftaran berhasil! Coba masuk dengan akun anda yang baru");
        } else {
            scriptAlert("Register gagal");
        }
    } else {
        scriptAlert("password dan konfirmasi password harus sama!");
    }
    ?>
    <script>
        window.location.replace('index.php');
    </script>
    <?php
} catch (PDOException $exception) {

}
?>
