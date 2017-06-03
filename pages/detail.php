<?php
$car = MyQuery::carDetail($_GET['id_mobil']);
$pk = MyQuery::getProvinsiNCity($car['id_kota']);
$mt = MyQuery::getBrandType($car['id_tipe']);
$penjual = new User($car['id_user']);
?>
<!-- Listing-detail-header -->
<section class="listing_detail_header">
    <div class="container">
        <div class="listing_detail_head white-text div_zindex row">
            <div class="col-md-9">
                <h3><?php print $car['judul_iklan_mobil']; ?></h3>
                <div class="car-location">
                    <span>
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <?php
                        print $pk['nama_kota'] . ", " . $pk['nama_provinsi'];
                        ?>
                    </span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="price_info">
                    <p><?php print (new NumberFormatter('id-ID', NumberFormatter::CURRENCY))->format($car['harga_mobil']); ?></p>
                </div>
                <p class="text-right"><?php print (($car['nego_mobil']) ? 'Harga nego' : 'Harga pas'); ?></p>
            </div>
        </div>
    </div>
    <div class="dark-overlay"></div>
</section>
<!-- /Listing-detail-header -->

<!--Listing-detail-->
<section class="listing-detail">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="listing_images">
                    <div class="listing_images_slider">
                        <?php
                        foreach (MyQuery::getCarImage($_GET['id_mobil']) as $row) {
                            print "<div><img class='img-responsive center-block' src='../images/cars/" . $row['url_gambar_mobil'] . "' alt='image'></div>";
                        }
                        ?>
                    </div>
                    <div class="listing_images_slider_nav">
                        <?php
                        foreach (MyQuery::getCarImage($_GET['id_mobil']) as $row) {
                            print "<div><img src='../images/cars/" . $row['url_gambar_mobil'] . "' alt='image' width='170' height='100'></div>";
                        }
                        ?>
                    </div>
                </div>
                <div class="listing_more_info">
                    <div class="listing_detail_wrap">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs gray-bg" role="tablist">
                            <li role="presentation" class="active"><a href="#vehicle-overview " aria-controls="vehicle-overview" role="tab" data-toggle="tab">Keterangan</a></li>
                            <li role="presentation"><a href="#specification" aria-controls="specification" role="tab" data-toggle="tab">Info</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!-- vehicle-overview -->
                            <div role="tabpanel" class="tab-pane active" id="vehicle-overview">
                                <p style="text-align: justify"><?php print $car['keterangan_mobil']; ?></p>
                            </div>

                            <!-- Technical-Specification -->
                            <div role="tabpanel" class="tab-pane" id="specification">
                                <div class="table-responsive">
                                    <!--Basic-Info-Table-->
                                    <table>
                                        <thead>
                                        <tr>
                                            <th colspan="2">Umum</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Merek</td>
                                            <td><?php print $mt['nama_merek']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Tipe</td>
                                            <td><?php print $mt['nama_tipe'] ?></td>
                                        </tr>
                                        <tr>
                                            <td>Jenis</td>
                                            <td><?php print MyQuery::getTypeName($car['id_jenis'])['nama_jenis']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Tahun</td>
                                            <td><?php print $car['tahun_mobil']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Nomor Polisi</td>
                                            <td><?php print $car['plat_mobil']; ?></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <!--Technical-Specification-Table-->
                                    <table>
                                        <thead>
                                        <tr>
                                            <th colspan="2">Spesifikasi</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Kapasitas Mesin</td>
                                            <td><?php print $car['cc_mobil']; ?>cc</td>
                                        </tr>
                                        <tr>
                                            <td>Transmisi</td>
                                            <td><?php print $car['transmisi_mobil']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Bahan Bakar</td>
                                            <td><?php print $car['bahan_bakar_mobil']; ?></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="chat-panel panel panel-red">
                        <div class="panel-heading">
                            <h6 style="color: white">Komentar</h6>
                        </div>
                        <ul class="chat panel-body">
                            <br>
                            <?php
                            foreach (MyQuery::getComment($car['id_mobil']) as $row) {
                                $pekomen=new User($row['id_user']);
                                ?>
                                <li class="left clearfix" style="margin-left: 2%; margin-right: 2%">
                        <span class="chat-img pull-left">
                            <img src="../images/users/<?php print $pekomen->foto; ?>" alt="User Avatar" class="img-circle" width="50" height="50">
                        </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong><?php print $pekomen->namaDepan." ".$pekomen->namaBelakang; ?></strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-calendar"></i><?php print explode(" ", $row['tanggal_komentar'])[0]; ?>&nbsp;&nbsp;&nbsp;<i class="fa fa-clock-o"></i>
                                                <?php print substr(explode(" ", $row['tanggal_komentar'])[1],0,8); ?>
                                            </small>
                                        </div>
                                        <p class="text-justify"><?php print $row['isi_komentar']; ?></p>
                                    </div>
                                </li>
                                <?php
                            }
                            ?>
                        </ul>
                    </div>
                    <!--Comment-Form-->
                    <div class="comment_form">
                        <h6>Tulis Komentar</h6>
                        <form action="?page=send_comment" method="post">
                            <div class="form-group">
                                <textarea name="isi" rows="5" class="form-control" placeholder="Tulis di sini..." minlength="1"></textarea>
                            </div>
                            <?php
                            if (isset($_SESSION['id_user'])) {
                                ?>
                                <input type="hidden" name="id_mobil" value="<?php print $_GET['id_mobil']; ?>">
                                <input type="hidden" name="id_user" value="<?php print $_SESSION['id_user']; ?>">
                                <div class="form-group">
                                    <input name="submit" type="submit" class="btn" value="Kirim Komentar">
                                </div>
                                <?php
                            } else {
                                ?>
                                <a href="#loginform" class="btn btn-xs uppercase text-center" data-toggle="modal"
                                   data-dismiss="modal" title="Masuk atau daftar dulu sebelum berkomentar">Masuk
                                    / Daftar</a>
                                <?php
                            }
                            ?>
                        </form>
                    </div>
                    <!--/Comment-Form-->

                </div>
            </div>

            <!--Side-Bar-->
            <aside class="col-md-3">
                <div class="sidebar_widget">
                    <div class="widget_heading">
                        <h5><i class="fa fa-address-card-o" aria-hidden="true"></i> Data Penjual </h5>
                    </div>
                    <div class="dealer_detail"><img src="../images/users/<?php print $penjual->foto; ?>" alt="image">
                        <p><span>Nama</span></p>
                        <p><?php print $penjual->namaDepan . " " . $penjual->namaBelakang; ?></p>
                        <p><span>No HP</span></p>
                        <p><?php print $penjual->noHp; ?></p>
                        <p><span>Alamat</span></p>
                        <p><?php print $penjual->alamatKeterangan.", ".ucwords(strtolower($penjual->ProvinsiKota['nama_kota'].", ".$penjual->ProvinsiKota['nama_provinsi'])); ?></p>
                    </div>
                </div>
                <div class="sidebar_widget">
                    <div class="widget_heading">
                        <h5><i class="fa fa-star" aria-hidden="true"></i> Favoritkan</h5>
                    </div>
                    <form action="?page=favorit_proccess" method="post">
                        <?php
                        if (isset($_SESSION['id_user'])) {
                            $cek=$GLOBALS['koneksi']->prepare("
                            SELECT *
                            FROM public.favorit
                            WHERE id_user=".$_SESSION['id_user']." AND id_mobil=".$_GET['id_mobil']."
                            ");
                            $cek->execute();
                            $difavoritkan=($cek->rowCount()!=0)?true:false;
                        }
                        ?>
                        <div class="form-group">
                            <input type="hidden" name="id_mobil" value="<?php print $_GET['id_mobil']; ?>">
                            <?php
                            if (isset($_SESSION['id_user'])) {
                                ?>
                                <input type="submit" name="submit"
                                       value="<?php print ($difavoritkan) ? 'Hapus Iklan dari Favorit' : 'Favoritkan Iklan Ini'; ?>"
                                       class="btn btn-block" minlength="1">
                                <?php
                            }
                            else {
                                ?>
                                <a href="#loginform" class="btn btn-xs uppercase text-center" data-toggle="modal" data-dismiss="modal" title="Masuk atau daftar dulu sebelum mengirim pesan">Masuk /
                                    Daftar</a>
                                <?php
                            }
                            ?>
                        </div>
                    </form>
                </div>
                <div class="sidebar_widget">
                    <div class="widget_heading">
                        <h5><i class="fa fa-envelope" aria-hidden="true"></i> Kirim Pesan</h5>
                    </div>
                    <form action="?page=send_message" method="post">
                        <div class="form-group">
                            <textarea name="isi" rows="4" class="form-control" placeholder="Tulis pesan untuk penjual..."></textarea>
                        </div>
                        <?php
                        if (isset($_SESSION['id_user'])) {
                            ?>
                            <input type="hidden" name="id_mobil" value="<?php print $_GET['id_mobil']; ?>">
                            <input type="hidden" name="penerima" value="<?php print $car['id_user']; ?>">
                            <div class="form-group">
                                <input type="submit" name="submit" value="Kirim Pesan" class="btn btn-block" minlength="1">
                            </div>
                            <?php
                        } else {
                            ?>
                            <a href="#loginform" class="btn btn-xs uppercase text-center" data-toggle="modal" data-dismiss="modal" title="Masuk atau daftar dulu sebelum mengirim pesan">Masuk / Daftar</a>
                            <?php
                        }
                        ?>
                    </form>
                </div>
            </aside>
            <!--/Side-Bar-->
        </div>
    </div>
</section>
<!--/Listing-detail-->