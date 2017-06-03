<?php
try {
    ob_start();
    date_default_timezone_set('Asia/Jakarta');
    include "../database/connection.php";
    include "top.php";
    include "../function/function.php";

    session_start();

    include "navbar.php";

    if (isset($_GET['page'])) {
        $_SESSION["breadcrump"] = $_GET['page'];
        include "breadcrumb.php";
        if (file_exists($_GET['page'] . ".php"))
            include($_GET['page'] . ".php");
    } else {
        include("beranda.php");
    }

    include "footer.php";

    if (!isset($_SESSION['id_user'])) {
        include 'login_form.php';
        include 'register_form.php';
    }

    print "</body></html>";
} catch (Exception $exception) {

}
?>