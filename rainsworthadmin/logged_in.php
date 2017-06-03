<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Labil | Admin</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="../css/font-awesome.css" rel="stylesheet">
    <link href="assets/css/themify-icons.css" rel="stylesheet">
</head>
<body>

<div class="wrapper">
    <?php
    ob_start();
    session_start();
    if (isset($_SESSION['id_admin'])) {
        include "../database/connection.php";
        $admin = $GLOBALS['koneksi']->query("
        SELECT * 
        FROM public.admin
        WHERE id_admin=" . $_SESSION['id_admin'] . "
    ")->fetchAll()[0];
        include "sidebar.php";
        ?>
        <div class="main-panel">
            <?php
            if (isset($_GET['page'])) {
                $_SESSION['menu'] = $_GET['page'];
                include "navbar.php";
                if (file_exists($_GET['page'] . ".php")) {
                    include $_GET['page'] . ".php";
                }
            } else {
                include "navbar.php";
                include "dashboard.php";
            }
            ?>
        </div>
        <?php
    }
    ?>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

</html>
