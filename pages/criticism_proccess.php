<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 30/05/2017
 * Time: 21.21
 */
if (isset($_POST['submit'])){
    if (MyQuery::insertCriticism($_POST['isi'])){
        scriptAlert("Berhasil dikirim");
        ?>
        <script>
            window.location.replace('index.php');
        </script>
        <?php
    }
}