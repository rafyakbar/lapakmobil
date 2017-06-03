<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 25/05/2017
 * Time: 09.12
*/
if (isset($_POST['submit'])){
    if (MyQuery::insertMessage($_SESSION['id_user'], $_POST['penerima'], $_POST['isi'])) {
        scriptAlert("Pesan telah dikirim");
        ?>
        <script type="text/javascript">
            window.location.replace("index.php?page=detail&id_mobil=<?php print $_POST['id_mobil']; ?>&submit=submit")
        </script>
        <?php
    }
    else{
        scriptAlert("Pesan gagal dikirim!");
        ?>
        <script type="text/javascript">
            window.location.replace("index.php?page=detail&id_mobil=<?php print $_POST['id_mobil']; ?>&submit=submit")
        </script>
        <?php
    }
}
?>