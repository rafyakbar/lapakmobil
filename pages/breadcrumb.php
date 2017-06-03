<!--Page Header-->
<section class="page-header profile_page">
    <div class="container">
        <div class="page-header_wrap">
            <div class="page-heading">
                <h1>labil.com</h1>
            </div>
            <ul class="coustom-breadcrumb">
                <li><a href="index.php">Beranda</a></li>
                <li>
                    <?php
                    if ($_SESSION["breadcrump"]=='profile_setting'){
                        print "Pengaturan Profil";
                    }
                    else if ($_SESSION["breadcrump"]=='search'){
                        print "Pencarian";
                    }
                    else if ($_SESSION["breadcrump"]=='post_ads'){
                        print "Pasang Iklan";
                    }
                    else if ($_SESSION["breadcrump"]=='my_ads'){
                        print "Iklanku";
                    }
                    else if ($_SESSION["breadcrump"]=='detail'){
                        print "Detail Iklan";
                    }
                    else if ($_SESSION["breadcrump"]=='inbox'){
                        print "Pesan Masuk";
                    }
                    else{
                        print "Halaman Tidak Ditemukan";
                    }
                    ?>
                </li>
            </ul>
        </div>
    </div>
    <!-- Dark Overlay-->
    <div class="dark-overlay"></div>
</section>
<!-- /Page Header-->