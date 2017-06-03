<div class="content">
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-4">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-warning text-center">
                                    <i class="ti-server"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <p>Kapasitas</p>
                                    <?php
                                    print $GLOBALS['koneksi']->query("
                                    SELECT pg_size_pretty(pg_database_size('labil')) as kapasitas;
                                    ")->fetchAll()[0]['kapasitas'];
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr/>
                            <div class="stats">
                                <i class="ti-reload"></i> Besaran Database
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-info text-center">
                                    <i class="ti-comment"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <p>Kritik dan Saran</p>
                                    <?php
                                    print $GLOBALS['koneksi']->query("
                                    SELECT count(isi_kritik_saran)
                                    FROM public.kritik_saran
                                    ")->fetchAll()[0]['count'];
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr/>
                            <div class="stats">
                                <i class="ti-arrow-top-right"></i> Total Kritik dan Saran
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">

                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-primary text-center">
                                    <i class="ti-user"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <p>Pengguna Baru</p>
                                    <?php
                                    print $GLOBALS['koneksi']->query("
                                    SELECT count(id_user)
                                    FROM public.user
                                    WHERE tanggal_user = (now()::DATE AT TIME ZONE 'Asia/Jakarta')
                                    ")->fetchAll()[0]['count'];
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr/>
                            <div class="stats">
                                <i class="ti-calendar"></i> Hari Ini
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-success text-center">
                                    <i class="ti-user"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <p>Total Pengguna</p>
                                    <?php
                                    print $GLOBALS['koneksi']->query("
                                    SELECT count(id_user)
                                    FROM public.user
                                    ")->fetchAll()[0]['count'];
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr/>
                            <div class="stats">
                                <i class="ti-calendar"></i>Sampai Hari Ini
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-primary text-center">
                                    <i class="ti-car"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <p>Iklan Baru</p>
                                    <?php
                                    print $GLOBALS['koneksi']->query("
                                    SELECT count(id_mobil)
                                    FROM public.mobil
                                    WHERE tanggal_mobil::DATE = (now()::DATE AT TIME ZONE 'Asia/Jakarta')
                                    ")->fetchAll()[0]['count'];
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr/>
                            <div class="stats">
                                <i class="ti-calendar"></i>Hari Ini
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-success text-center">
                                    <i class="ti-car"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <p>Total Iklan</p>
                                    <?php
                                    print $GLOBALS['koneksi']->query("
                                    SELECT count(id_mobil)
                                    FROM public.mobil
                                    ")->fetchAll()[0]['count'];
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr/>
                            <div class="stats">
                                <i class="ti-calendar"></i>Sampai Hari Ini
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            Kritik dan Saran
                        </div>
                        <div class="content table-responsive table-full-width">
                            <div style="height: 450px;overflow: auto">
                                <table class="table table-striped">
                                    <thead>
                                    <th>No</th>
                                    <th>Kritik dan Saran</th>
                                    <th>Tanggal</th>
                                    <th>Waktu</th>
                                    </thead>
                                    <tbody>
                                    <?php
                                    foreach ($GLOBALS['koneksi']->query("SELECT row_number() OVER () AS no, * FROM public.kritik_saran")->fetchAll() as $item) {
                                        ?>
                                        <tr>
                                            <td><?php print $item['no'] ?></td>
                                            <td><?php print $item['isi_kritik_saran']; ?></td>
                                            <td><?php print explode(' ',$item['tanggal_kritik_saran'])[0]; ?></td>
                                            <td><?php print substr(explode(' ',$item['tanggal_kritik_saran'])[1], 0,8) ?></td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>