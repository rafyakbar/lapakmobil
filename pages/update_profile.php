<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 06/05/2017
 * Time: 13.25
 */
$cekpassword = '';
try {
    if (isset($_POST['update'])) {
        $cekpassword = MyQuery::getPassword($_SESSION['id_user']);
        if ($_POST['sandi_baru'] == '' && $_POST['sandi_lama'] == '') {
            $cekpassword = md5('');
        }
        if (md5($_POST['sandi_lama']) == $cekpassword) {
            $gambar = (new User($_SESSION['id_user']))->foto;
            if ($_FILES['foto']['size'] != 0) {
                if (file_exists("../images/users/" . $gambar))
                    unlink("../images/users/" . $gambar);
                $gambar = $_SESSION['id_user'] . "_" . (new DateTime())->format('Y-m-d_H-i-s') . ".jpg";
                $target_file = "../images/users/" . $gambar;
                compressCropImage($_FILES["foto"]["tmp_name"], $_FILES['foto']['size'], $target_file);
            }
            if ($_POST['sandi_baru'] == $_POST['ksandi_baru']) {
                if (MyQuery::updateUser($_SESSION['id_user'], $_POST['ndepan'], $_POST['nbelakang'], $_POST['email'], $_POST['sandi_baru'], $_POST['kelamin'], $_POST['no_hp'], $_POST['alamat'], $_POST['kota'], $gambar)) {
                    header("location:index.php?page=profile_setting");
                } else {
                    print ("Data gagal diperbarui");
                }
            } else {
                print ("Konfirmasi kata sandi salah ");
            }
        } else {
            print ("Kata sandi lama salah! ");
        }
    }
} catch (Exception $exception) {
    print ("Data gagal diperbarui");
}