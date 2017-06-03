<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 02/05/2017
 * Time: 07.43
 */
try {
    $GLOBALS['koneksi'] = new PDO("pgsql:dbname=labil;host=localhost", "postgres", "10karakter");
} catch (PDOException $e) {
    print "<script> alert('koneksi ke database gagal!') </script>";
}