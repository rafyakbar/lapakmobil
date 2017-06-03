<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Labil | Lapak Mobil</title>
    <!--Bootstrap -->
    <link rel="stylesheet" href="../css/bootstrap.css" type="text/css">
    <!--Custome Style -->
    <link rel="stylesheet" href="../css/style.css" type="text/css">
    <!--OWL Carousel slider-->
    <link rel="stylesheet" href="../css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.transitions.css" type="text/css">
    <!--slick-slider -->
    <link href="../css/slick.css" rel="stylesheet">
    <!--bootstrap-slider -->
    <link href="../css/bootstrap-slider.min.css" rel="stylesheet">
    <!--FontAwesome Font Style -->
    <link href="../css/font-awesome.css" rel="stylesheet">

    <link rel="stylesheet" href="../css/sb-admin-2.css">

    <!-- Scripts -->
    <script src="../js/jquery-3.2.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/interface.js"></script>
    <!--bootstrap-slider-JS-->
    <script src="../js/bootstrap-slider.min.js"></script>
    <!--Slider-JS-->
    <script src="../js/slick.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <!--set-->
    <script src="../js/set.js"></script>

    <script src="../js/sb-admin-2.js"></script>
    <script src="../tinymce/js/tinymce/tinymce.min.js"></script>
    <script>
        tinymce.init({
            selector:'textarea#editor',
            height:150,
            menubar:false,
            statusbar:false
        });
    </script>
    <script>
        // Prevent Bootstrap dialog from blocking focusin
        $(document).on('focusin', function(e) {
            if ($(e.target).closest(".mce-window").length) {
                e.stopImmediatePropagation();
            }
        });

        function konfirmasi() {
            return confirm("Apakah anda yakin ingin menghapusnya?");
        }
    </script>
</head>
<body style="font-family:Calibri">