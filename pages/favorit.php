<?php
if (isset($_SESSION['id_user'])) {
    $pengguna = new User($_SESSION['id_user']);
    ?>
    <section class="user_profile inner_pages">
        <div class="container">
            <div class="user_profile_info gray-bg padding_4x4_40">
                <div class="upload_user_logo">
                    <img src="../images/<?php print (($pengguna->foto == '') ? 'upload.png' : "users/" . $pengguna->foto) ?>"
                         alt="image" height="150px" width="162px">
                </div>
                <div class="dealer_info">
                    <h5><?php print $pengguna->namaDepan . " " . $pengguna->namaBelakang; ?></h5>
                    <p>
                        <?php
                        print "<i class='fa fa-location-arrow fa-fw'></i> ";
                        print (($pengguna->alamatKeterangan == '') ? '-' : $pengguna->alamatKeterangan) . "<br>";
                        print "<i class='fa fa-map-marker fa-fw'></i> ";
                        if ($pengguna->ProvinsiKota['nama_provinsi'] == '') {
                            print '-';
                        } else {
                            print ucwords(strtolower($pengguna->ProvinsiKota['nama_kota'] . ", " . $pengguna->ProvinsiKota['nama_provinsi']));
                        }
                        print "<br><i class='fa fa-phone fa-fw'></i> ";
                        print ($pengguna->noHp == '') ? '-' : $pengguna->noHp;
                        ?>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-3">
                    <div class="profile_nav">
                        <ul>
                            <?php include "active_setting.php"; ?>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9 col-sm-9">
                    <?php
                    foreach (MyQuery::getFavorit($_SESSION['id_user']) as $row) {
                        $judul = substr($row['judul_iklan_mobil'], 0, ((strlen($row['judul_iklan_mobil']) < 44) ? strlen($row['judul_iklan_mobil']) : 43)) . ((strlen($row['judul_iklan_mobil']) < 44) ? '' : '...');
                        ?>
                        <form action="index.php" method="get">
                            <input type="hidden" name="page" value="detail">
                            <div class="product-listing-m gray-bg">
                                <div class="product-listing-img">
                                    <a href="#">
                                        <img src="../images/cars/<?php print MyQuery::getCarImage($row['id_mobil'])[0]['url_gambar_mobil']; ?>"
                                             alt="Image" width="380px" height="240px"/>
                                    </a>
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
                                                class="angle_arrow"><i class="fa fa-angle-right"
                                                                       aria-hidden="true"></i></span>
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
                </div>
            </div>
        </div>
    </section>
    <?php
}
?>