<!--Banner-->
<section id="banner2">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <!--item-1-->
            <div class="item active">
                <img src="../images/banner-image-1.jpg" alt="image">
                <div class="carousel-caption">
                    <div class="banner_text text-center div_zindex white-text">
                        <h1>Jual Mobil Lamamu</h1>
                        <h3>Punya Mobil Tapi Nggak Kepakek? Jual Aja disini</h3>
                    </div>
                </div>
            </div>

            <!--item-2-->
            <div class="item">
                <img src="../images/banner-image-2.jpg" alt="image">
                <div class="carousel-caption">
                    <div class="banner_text text-center div_zindex white-text">
                        <h1>Cari Mobil Impianmu</h1>
                        <h3>Terdapat Banyak Mobil Bekas di sini</h3>
                    </div>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <div class="icon-prev"></div>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <div class="icon-next"></div>
        </a>
    </div>
</section>
<!--/Banner-->


<!-- Filter-Form -->
<section id="filter_form2">
    <div class="container">
        <div class="main_bg white-text">
            <h3>Cari Mobil Impianmu!</h3>
            <div class="row">
                <form action="index.php" method="get">
                    <input type="hidden" name="page" value="search">
                    <div class="form-group col-md-12">
                        <input name="input_user" type="text" class="form-control" placeholder="Mobil apa yang sedang anda cari..?">
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <div class="select">
                            <select name="provinsi" id="provinsi" class="form-control" required>
                                <option value="semua">Semua Provinsi</option>
                                <?php include 'provinsi.php'; ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <div class="select">
                            <select name="kota" id="kota" class="form-control"></select>
                        </div>
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <div class="select">
                            <select name="merek" id="merek" class="form-control white_bg" required>
                                <option value="semua">Semua Merek</option>
                                <?php loadMerek(); ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <div class="select">
                            <select name="tipe" id="tipe" class="form-control white_bg"></select>
                        </div>
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <label class="form-label">Rentang Tahun</label>
                        <input name="tahun" id="price_range" type="text" value="" data-slider-min="<?php print date('Y')-25;?>" data-slider-max="<?php print date('Y');?>" data-slider-step="1" data-slider-value="[<?php print date('Y')-25;?>,<?php print date('Y');?>]" required/>
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <input name="hawal" type="number" class="form-control" placeholder="Rentang Harga Awal" min="0" required>
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <input name="hakhir" type="number" class="form-control" placeholder="Rentang Harga Akhir" min="0" required>
                    </div>
                    <div class="form-group col-md-3 col-sm-6">
                        <button name="submit" value="submit" type="submit" class="btn btn-block">
                            <i class="fa fa-search" aria-hidden="true"></i> Cari
                        </button>
                    </div>
                    <input type="hidden" name="halaman" value="1">
                </form>
            </div>
        </div>
    </div>
</section>
<!-- /Filter-Form -->

<p><br></p>

<!--About-us-->
<section id="about_us" class="section-padding">
    <div class="container">
        <div class="section-header text-center">
            <h2>Kenapa pilih labil.com?</h2>
        </div>

        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-money" aria-hidden="true"></i>
                    </div>
                    <h5>Harga Terbaik</h5>
                    <p>Terdapat banyak iklan dengan harga terbaik dan tentunya berkualitas.</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    </div>
                    <h5>Jual Beli dengan Mudah</h5>
                    <p>Jual beli mobil bekas di labil.com terasa nggak ribet, nyaman dan gratis.</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-car" aria-hidden="true"></i>
                    </div>
                    <h5>Beragam Pilihan</h5>
                    <p>Ratusan model mobil bekas tersedia dan umur mobil tidak lebih dari 25 tahun.</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-lock" aria-hidden="true"></i>
                    </div>
                    <h5>Aman</h5>
                    <p>Setiap penjual mobil di labil.com telah kami konfirmasi melalui beberapa prosedur.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/About-us-->

<!--Mobil Terbaik-->
<section class="section-padding">
    <div class="container">
        <div class="section-header text-center">
            <h2>Mobil Terbaik</h2>
        </div>
        <div class="row">
            <?php
            foreach (MyQuery::bestCar() as $row) {
                ?>
                <div class="col-list-3">
                    <div class="featured-car-list">
                        <div class="featured-car-img">
                            <img src="../images/cars/<?php print $row['url_gambar_mobil']; ?>" alt="Image" width="356" height="222">
                        </div>
                        <div class="featured-car-content">
                            <h6><?php print $row['judul_iklan_mobil']; ?></h6>
                            <div class="price_info">
                                <p class="featured-price"><?php print (new NumberFormatter('id-ID', NumberFormatter::CURRENCY))->format($row['harga_mobil']); ?></p>
                                <div class="car-location">
                                    <span>
                                        <p style="font-size: x-small">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <?php
                                        $pk=MyQuery::getProvinsiNCity($row['id_kota']);
                                        print $pk['nama_kota'].", ".$pk['nama_provinsi'];
                                        ?>
                                        </p>
                                    </span>
                                </div>
                            </div>
                            <ul>
                                <li>
                                    <i class="fa fa-money" aria-hidden="true"></i>
                                    <?php print (($row['nego_mobil'])?'Harga nego':'Harga pas'); ?>
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
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</section>
<!-- /Mobil Terbaik-->

<!--Mobil Terbaru-->
<section class="section-padding">
    <div class="container">
        <div class="section-header text-center">
            <h2>Mobil Terbaru</h2>
        </div>
        <div class="row">
            <?php
            foreach (MyQuery::newestCar() as $row) {
                ?>
                <div class="col-list-3">
                    <div class="featured-car-list">
                        <div class="featured-car-img">
                            <img src="../images/cars/<?php print $row['url_gambar_mobil']; ?>" alt="Image" width="356" height="222">
                        </div>
                        <div class="featured-car-content">
                            <h6><?php print $row['judul_iklan_mobil']; ?></h6>
                            <div class="price_info">
                                <p class="featured-price"><?php print (new NumberFormatter('id-ID', NumberFormatter::CURRENCY))->format($row['harga_mobil']); ?></p>
                                <div class="car-location">
                                    <span>
                                        <p style="font-size: x-small">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            <?php
                                            $pk=MyQuery::getProvinsiNCity($row['id_kota']);
                                            print $pk['nama_kota'].", ".$pk['nama_provinsi'];
                                            ?>
                                        </p>
                                    </span>
                                </div>
                            </div>
                            <ul>
                                <li>
                                    <i class="fa fa-money" aria-hidden="true"></i>
                                    <?php print (($row['nego_mobil'])?'Harga nego':'Harga pas'); ?>
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
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</section>
<!-- /Mobil Terbaru-->

<!-- Help-Number-->
<section id="help" class="section-padding">
    <div class="container">
        <div class="div_zindex white-text text-center">
            <h2>Ada pertanyaan?<br>
                hubungi kami di 087789891729</h2>
        </div>
    </div>

    <!-- Dark-overlay-->
    <div class="dark-overlay"></div>
</section>
<!-- /Help-Number-->