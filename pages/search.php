<?php
$_GET['kota'] = (isset($_GET['kota'])) ? $_GET['kota'] : '';
$_GET['tipe'] = (isset($_GET['tipe'])) ? $_GET['tipe'] : '';
$_GET['urutan'] = (isset($_GET['urutan'])) ? $_GET['urutan'] : 'terbaru';
if (isset($_GET['submit'])) {
    ?>
    <!--Listing-->
    <section class="listing-page">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-push-3">
                    <div class="result-sorting-wrapper">
                        <div class="sorting-count">
                            <p>
                                <?php
                                $jumlah = MyQuery::countResult($_GET['input_user'], $_GET['kota'], $_GET['tipe'], $_GET['hawal'], $_GET['hakhir'], $_GET['tahun'])['count'];
                                if ($jumlah == 0)
                                    print "Maaf! Kami belum menemukan mobil yang anda inginkan.";
                                else
                                    print $jumlah . " mobil mulus ditemukan";
                                ?>
                            </p>
                        </div>
                    </div>
                    <?php
                    foreach (MyQuery::searchResult($_GET['input_user'], $_GET['kota'], $_GET['tipe'], $_GET['hawal'], $_GET['hakhir'], $_GET['tahun'], $_GET['urutan'], ($_GET['halaman']*5)-5) as $row) {
                        $judul = substr($row['judul_iklan_mobil'], 0, ((strlen($row['judul_iklan_mobil']) < 44) ? strlen($row['judul_iklan_mobil']) : 43)) . ((strlen($row['judul_iklan_mobil']) < 44) ? '' : '...');
                        ?>
                        <form action="index.php" method="get">
                            <input type="hidden" name="page" value="detail">
                            <div class="product-listing-m gray-bg">
                                <div class="product-listing-img">
                                    <a href="#"><img
                                                src="../images/cars/<?php print MyQuery::getCarImage($row['id_mobil'])[0]['url_gambar_mobil']; ?>"
                                                alt="Image" width="380px" height="240px"/></a>
                                </div>
                                <div class="product-listing-content">
                                    <h5><a href="?page=detail"><?php print $judul; ?></a></h5>
                                    <p class="list-price"><?php print (new NumberFormatter('id-ID', NumberFormatter::CURRENCY))->format($row['harga_mobil']); ?></p>
                                    <ul>
                                        <li>
                                            <i class="fa fa-money" aria-hidden="true"></i>
                                            <?php print (($row['nego_mobil']) ? 'Harga nego' : 'Harga pas'); ?>
                                        </li>
                                        <li>
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                            <?php print $row['tahun_mobil']; ?>
                                        </li>
                                        <li>
                                            <i class="fa fa-plug" aria-hidden="true"></i>
                                            <?php print $row['bahan_bakar_mobil']; ?>
                                        </li>
                                        <li>
                                            <i class="fa fa-automobile" aria-hidden="true"></i>
                                            <?php print MyQuery::getBrandType($row['id_tipe'])['nama_merek']; ?>
                                        </li>
                                        <li>
                                            <i class="fa fa-automobile" aria-hidden="true"></i>
                                            <?php print MyQuery::getBrandType($row['id_tipe'])['nama_tipe']; ?>
                                        </li>
                                        <li>
                                            <i class="fa fa-gear" aria-hidden="true"></i>
                                            <?php print $row['transmisi_mobil']; ?>
                                        </li>
                                    </ul>
                                    <input type="hidden" name="id_mobil" value="<?php print $row['id_mobil']; ?>">
                                    <button type="submit" name="submit" value="submit" class="btn">Lihat Rincian <span
                                                class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                                    </button>
                                    <div class="car-location">
                                <span>
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <?php
                                    $pk = MyQuery::getProvinsiNCity($row['id_kota']);
                                    print $pk['nama_kota'] . ", " . $pk['nama_provinsi'];
                                    ?>
                                </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <?php
                    }
                    ?>
                    <div class="pagination">
                        <ul>
                            <?php
                            for ($p=1;$p<=ceil($jumlah/5);$p++){
                                if ($p==$_GET['halaman']){
                                  print  "<li class='current'>$p</li>";
                                }
                                else{
                                    $hal="index.php?page=search&input_user=".$_GET['input_user']."&provinsi=".$_GET['provinsi']."&merek=".$_GET['merek']."&tahun=".explode(',',$_GET['tahun'])[0]."%2C".explode(',',$_GET['tahun'])[1]."&hawal=".$_GET['hawal']."&hakhir=".$_GET['hakhir']."&submit=submit&halaman=$p";
                                    print  "<li><a href='$hal'>$p</a></li>";
                                }
                            }
                            ?>
<!--                            <li class="current">1</li>-->
<!--                            <li><a href="#">2</a></li>-->
<!--                            <li><a href="#">3</a></li>-->
<!--                            <li><a href="#">4</a></li>-->
<!--                            <li><a href="#">5</a></li>-->
                        </ul>
                    </div>
                </div>

                <!--Side-Bar-->
                <aside class="col-md-3 col-md-pull-9">
                    <div class="sidebar_widget">
                        <div class="widget_heading">
                            <h5><i class="fa fa-filter" aria-hidden="true"></i> Filter Pencarian </h5>
                        </div>
                        <div class="sidebar_filter">
                            <form action="index.php" method="get">
                                <input type="hidden" name="page" value="search">
                                <div class="form-group">
                                    <input name="input_user" type="text" class="form-control"
                                           placeholder="Ketik kata kunci iklan..."
                                           value="<?php print $_GET['input_user']; ?>">
                                </div>
                                <div class="form-group select">
                                    <select name="provinsi" id="provinsi" class="form-control" required>
                                        <?php
                                        if ($_GET['kota'] != null || $_GET['kota'] != '') {
                                            $pk = MyQuery::getProvinsiNCity($_GET['kota']);
                                            print "<option value='" . $pk['id_provinsi'] . "'>" . $pk['nama_provinsi'] . "</option>";
                                        }
                                        ?>
                                        <option value="semua">Semua Provinsi</option>
                                        <?php include 'provinsi.php'; ?>
                                    </select>
                                </div>
                                <div class="form-group select">
                                    <select name="kota" id="kota" class="form-control">
                                        <?php
                                        if ($_GET['kota'] != null || $_GET['kota'] != '') {
                                            $pk = MyQuery::getProvinsiNCity($_GET['kota']);
                                            print "<option value='" . $pk['id_kota'] . "'>" . $pk['nama_kota'] . "</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group select">
                                    <select name="merek" id="merek" class="form-control" required>
                                        <?php
                                        if ($_GET['tipe'] != null || $_GET['tipe'] != '') {
                                            $mt = MyQuery::getBrandType($_GET['tipe']);
                                            print "<option value='" . $mt['id_merek'] . "'>" . $mt['nama_merek'] . "</option>";
                                        }
                                        ?>
                                        <option value="semua">Semua Merek</option>
                                        <?php loadMerek(); ?>
                                    </select>
                                </div>
                                <div class="form-group select">
                                    <select name="tipe" id="tipe" class="form-control">
                                        <?php
                                        if ($_GET['tipe'] != null || $_GET['tipe'] != '') {
                                            $mt = MyQuery::getBrandType($_GET['tipe']);
                                            print "<option value='" . $mt['id_tipe'] . "'>" . $mt['nama_tipe'] . "</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input name="hawal" type="number" class="form-control"
                                           placeholder="Rentang Harga Awal" value="<?php print $_GET['hawal']; ?>"
                                           required>
                                </div>
                                <div class="form-group">
                                    <input name="hakhir" type="number" class="form-control"
                                           placeholder="Rentang Harga Akhir" value="<?php print $_GET['hakhir']; ?>"
                                           required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Rentang Tahun</label>
                                    <input name="tahun" id="price_range" type="text" value="" data-slider-min="<?php print date('Y')-25;?>"
                                           data-slider-max="<?php print date('Y');?>"
                                           data-slider-step="1" data-slider-value="[<?php print $_GET['tahun']; ?>]"
                                           required/>
                                </div>
                                <div class="form-group select">
                                    <select name="urutan" class="form-control">
                                        <?php cekUrutan($_GET['urutan']); ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <button type="submit" name="submit" value="submit" class="btn btn-block"><i
                                                class="fa fa-search" aria-hidden="true"></i> Cari
                                    </button>
                                </div>
                                <input type="hidden" name="halaman" value="1">
                            </form>
                        </div>
                    </div>
                </aside>
                <!--/Side-Bar-->
            </div>
        </div>
    </section>
    <!-- /Listing-->
<?php } ?>