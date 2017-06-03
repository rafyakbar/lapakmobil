<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 25/05/2017
 * Time: 07.52
 */
if (isset($_POST['submit']) && isset($_POST['isi'])){
    if (MyQuery::insertComment($_SESSION['id_user'],$_POST['id_mobil'],$_POST['isi'])){
        ?>
        <script type="text/javascript">
            window.location.replace("index.php?page=detail&id_mobil=<?php print $_POST['id_mobil']; ?>&submit=submit")
        </script>
        <?php
    }
    else{
        scriptAlert("Komentar gagal dikirim!");
        ?>
        <script type="text/javascript">
            window.location.replace("index.php?page=detail&id_mobil=<?php print $_POST['id_mobil']; ?>&submit=submit")
        </script>
        <?php
    }
}
?>