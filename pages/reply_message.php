<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 25/05/2017
 * Time: 23.52
 */
if (isset($_POST['submit'])) {
    if (MyQuery::insertMessage($_SESSION['id_user'], $_POST['penerima'], $_POST['isi'])) {
        scriptAlert("Pesan berhasil dikirim!");
        ?>
        <script>
            window.location.replace("index.php?page=inbox");
        </script>
        <?php
    }
    else{
        scriptAlert("Pesan gagal dikirim!");
        ?>
        <script>
            window.location.replace("index.php?page=inbox");
        </script>
        <?php
    }
}
?>