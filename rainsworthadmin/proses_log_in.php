<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 30/05/2017
 * Time: 23.25
 */
ob_start();
session_start();
include "../database/connection.php";
if (isset($_POST['submit'])){
    $username=$_POST['email_username'];
    $password=md5($_POST['password']);
    $admin=$GLOBALS['koneksi']->query("
    SELECT * 
    FROM admin
    WHERE (username_admin='$username' AND password_admin='$password') OR (email_admin='$username' AND 
    password_admin='$password')
    ")->fetchAll();
    if (isset($admin[0]['id_admin'])){
        $_SESSION['id_admin']=$admin[0]['id_admin'];
        header("location:logged_in.php");
    }
    else{
        ?>
        <script>
            alert("Username atau Password salah");
            window.location.replace('index.php');
        </script>
        <?php
    }
}