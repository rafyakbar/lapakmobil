<!--Header-->
<header class="header_style2 nav-stacked affix-top" data-spy="affix" data-offset-top="1">
    <!-- Navigation -->
    <nav id="navigation_bar" class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <div class="logo"><a href="index.php"><img src="../images/logo.png" alt="image"></a></div>
                <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse"
                        class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="header_wrap">
                <?php if (isset($_SESSION['id_user']))
                {
                    $ft=new User($_SESSION['id_user']);
                    ?>
                    <div class="user_login">
                        <ul style="margin-top: -5px">
                            <li class="dropdown"><a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../images/users/<?php
                                    print $ft->foto; ?>" class="img-circle" width="30" height="30"></a>
                                <ul class="dropdown-menu">
                                    <li><a href="?page=profile_setting">Pengaturan profil</a></li>
                                    <li><a href="?page=my_ads">Iklanku</a></li>
                                    <li><a href="?page=post_ads">Pasang iklan</a></li>
                                    <li><a href="?page=favorit">Favorit</a></li>
                                    <li><a href="?page=inbox">Pesan masuk</a></li>
                                    <li><a href="?page=logout">Keluar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                <?php } ?>
                <div class="login_btn">
                    <?php if (!isset($_SESSION['id_user'])) { ?>
                        <a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Masuk / Daftar</a>
                    <?php } else {
                        print "<a href='?page=profile_setting' class='btn btn-xs uppercase'>" . MyQuery::getFirstName($_SESSION['id_user']) . "</a>";
                    }
                    ?>
                </div>
            </div>
        </div>
    </nav>
    <!-- Navigation end -->
</header>
<!-- /Header --> 