<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 04/05/2017
 * Time: 10.54
 */

try {
    $_SESSION['id_user'] = MyQuery::getID($_POST['email'], $_POST['password']);
    if (count($_SESSION['id_user'])==0) {
        $_SESSION=null;
        ?>
        <script>
            alert('Password atau email salah');
            window.location.replace('index.php');
        </script>
        <?php
    } else {
        $_SESSION['id_user']=$_SESSION['id_user'][0]['id_user'];
        header("location:index.php");
    }
} catch (Exception $exception) {
    //header("location:index.php");
}
?>