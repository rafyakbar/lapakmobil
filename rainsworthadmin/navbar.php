<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar bar1"></span>
                <span class="icon-bar bar2"></span>
                <span class="icon-bar bar3"></span>
            </button>
            <p class="navbar-brand"><?php print ucwords(str_replace('_',' ',$_SESSION['menu'])); ?></p>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <p><?php print $admin['username_admin']; ?></p>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="?page=proses_log_out">Keluar dari Halaman Admin</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>
</nav>