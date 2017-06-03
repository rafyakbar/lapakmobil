<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 26/05/2017
 * Time: 02.31
 */
if (isset($_POST['submit'])){
    if ($_POST['submit']=='Favoritkan Iklan Ini'){
        if (MyQuery::insertFavorit($_SESSION['id_user'],$_POST['id_mobil'])){
            scriptAlert("Iklan berhasil difavoritkan");
            ?>
            <script type="text/javascript">
                window.location.replace('index.php?page=favorit')
            </script>
            <?php
        }
    }
    else if ($_POST['submit']=='Hapus Iklan dari Favorit'){
        if (MyQuery::deleteFavorit($_SESSION['id_user'],$_POST['id_mobil'])){
            scriptAlert("Iklan berhasil dihapus dari favorit");
            ?>
            <script type="text/javascript">
                window.location.replace('index.php?page=favorit')
            </script>
            <?php
        }
    }
}