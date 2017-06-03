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
                <div class="col-md-6 col-sm-8">
                    <div class="profile_wrap">
                        <div class="gray-bg field-title" style="margin-top: -3%">
                            <h6><?php print MyQuery::countCar($_SESSION['id_user']); ?> Iklan</h6>
                        </div>
                        <div class="my_vehicles_list">
                            <ul class="vehicle_listing">
                                <?php
                                foreach (MyQuery::getListAds($_SESSION['id_user']) as $row) {
                                    $car = MyQuery::carDetail($row['id_mobil']);
                                    $carPK = MyQuery::getProvinsiNCity($car['id_kota']);
                                    $carMT = MyQuery::getBrandType($car['id_tipe']);
                                    ?>
                                    <li>
                                        <form action="?page=ads_operation" method="post">
                                            <div class="vehicle_img">
                                                <a href="">
                                                    <img src="../images/cars/<?php print $row['url_gambar_mobil']; ?>"
                                                         alt="image" width="120px" height="80px">
                                                </a>
                                            </div>
                                            <div class="vehicle_title">
                                                <h6>
                                                    <?php print $row['judul_iklan_mobil']; ?>
                                                </h6>
                                            </div>
                                            <div class="vehicle_status">
                                                <div class="btn-group-vertical">
                                                    <input type="hidden" name="id_mobil"
                                                           value="<?php print $row['id_mobil']; ?>">
                                                    <button type="submit" name="submit" value="lihat"
                                                            class="btn outline btn-xs" title="Lihat">
                                                        Lihat
                                                    </button>
                                                    <button type="button" class="btn outline btn-xs" title="Edit iklan"
                                                            data-toggle="modal"
                                                            data-target="#mobil_<?php print $row['id_mobil']; ?>">
                                                        Edit
                                                    </button>
                                                    <button type="submit" name="submit" value="hapus"
                                                            class="btn outline btn-xs" title="Hapus iklan" onclick="return konfirmasi();">
                                                        Hapus
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                        <form action="?page=update_ads" method="post" enctype="multipart/form-data">
                                            <div class="modal fade" id="mobil_<?php print $row['id_mobil']; ?>">
                                                <div class="modal-dialog" role="document" style="width: 60%">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span
                                                                        aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h5 class="modal-title">Edit Iklan</h5>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div style="overflow: auto">
                                                            <div class="form-group">
                                                                <label class="control-label">Judul Iklan</label>
                                                                <input name="judul" class="form-control white_bg"
                                                                       type="text"
                                                                       value="<?php print $car['judul_iklan_mobil']; ?>"
                                                                       required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Merek</label>
                                                                <div class="select">
                                                                    <select name="merek" id="merek<?php print $row['id_mobil']; ?>"
                                                                            class="form-control white_bg" required>
                                                                        <option value="<?php print $carMT['id_merek']; ?>"><?php print $carMT['nama_merek']; ?></option>
                                                                        <option value="">Pilih merek</option>
                                                                        <?php loadMerek(); ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Tipe</label>
                                                                <div class="select">
                                                                    <select name="tipe" id="tipe<?php print $row['id_mobil']; ?>"
                                                                            class="form-control white_bg" required>
                                                                        <option value="<?php print $carMT['id_tipe']; ?>"><?php print $carMT['nama_tipe']; ?></option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                                <script>
                                                                    $(document).ready(function () {
                                                                        $("#provinsi<?php print $row['id_mobil']; ?>").change(function () {
                                                                            var prov = $("#provinsi<?php print $row['id_mobil']; ?>").val();
                                                                            $.ajax({
                                                                                url: 'city.php',
                                                                                data: 'provinsi=' + prov,
                                                                                type: "POST",
                                                                                success: function (data) {
                                                                                    $("#kota<?php print $row['id_mobil']; ?>").html(data);
                                                                                }
                                                                            });
                                                                        });
                                                                    });

                                                                    $(document).ready(function () {
                                                                        $("#merek<?php print $row['id_mobil']; ?>").change(function () {
                                                                            var mer = $("#merek<?php print $row['id_mobil']; ?>").val();
                                                                            $.ajax({
                                                                                url: 'type.php',
                                                                                data: 'merek=' + mer,
                                                                                type: "POST",
                                                                                success: function (data) {
                                                                                    $("#tipe<?php print $row['id_mobil']; ?>").html(data);
                                                                                }
                                                                            });
                                                                        });
                                                                    });
                                                                </script>
                                                            <div class="form-group">
                                                                <label class="control-label">
                                                                    <input name="nego" type="checkbox" value="true">
                                                                    Harganego
                                                                </label>
                                                                <input name="harga" class="form-control white_bg"
                                                                       type="number" min="0"
                                                                       max="12000000000" placeholder="Rp" required
                                                                       value="<?php print $car['harga_mobil']; ?>">
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Tahun</label>
                                                                <div class="select">
                                                                    <select name="tahun"
                                                                            class="form-control white_bg"
                                                                            required>
                                                                        <option value="<?php print $car['tahun_mobil']; ?>"><?php print $car['tahun_mobil']; ?></option>
                                                                        <option value="">Pilih tahun</option>
                                                                        <?php loadTahun(); ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Jenis</label>
                                                                <div class="select">
                                                                    <select name="jenis"
                                                                            class="form-control white_bg">
                                                                        <option value="<?php print $car['id_jenis']; ?>"><?php print MyQuery::getTypeName($car['id_jenis'])['nama_jenis']; ?></option>
                                                                        <option value="">Pilih jenis (tidak wajib)
                                                                        </option>
                                                                        <?php loadJenis(); ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Lokasi Mobil
                                                                    (provinsi)</label>
                                                                <div class="select">
                                                                    <select id="provinsi<?php $j=$row['id_mobil']; print $row['id_mobil']; ?>"
                                                                            class="form-control white_bg"
                                                                            required>
                                                                        <option value="<?php print $carPK['id_provinsi']; ?>"><?php print $carPK['nama_provinsi']; ?></option>
                                                                        <option value="">Pilih Provinsi</option>
                                                                        <?php include 'provinsi.php'; ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Lokasi Mobil
                                                                    (kota)</label>
                                                                <div class="select">
                                                                    <select name="kota" id="kota<?php print $j; ?>"
                                                                            class="form-control white_bg" required>
                                                                        <option value="<?php print $carPK['id_kota']; ?>"><?php print $carPK['nama_kota']; ?></option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Nomor Polisi</label>
                                                                <input name="nopol" class="form-control white_bg"
                                                                       type="text"
                                                                       placeholder="Tidak wajib diisi/kode depan saja"
                                                                       value="<?php print $car['plat_mobil']; ?>">
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Keterangan
                                                                    mobil</label>
                                                                <textarea id="editor"
                                                                          name="keterangan"><?php print $car['keterangan_mobil']; ?></textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Perbarui Semua Foto
                                                                    (kosongi jika foto tetap)</label>
                                                                <div class="vehicle_images">
                                                                    <div class="upload_more_img">
                                                                        <input name="upload[]" type="file" max="8"
                                                                               accept="image/*" multiple>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Kapasitas Mesin
                                                                    (CC)</label>
                                                                <input name="cc" class="form-control white_bg"
                                                                       type="number"
                                                                       min="800" required
                                                                       value="<?php print $car['cc_mobil']; ?>">
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Transmisi</label>
                                                                <div class="select">
                                                                    <select name="transmisi"
                                                                            class="form-control white_bg"
                                                                            required>
                                                                        <option value="<?php print $car['transmisi_mobil']; ?>"><?php print $car['transmisi_mobil']; ?></option>
                                                                        <option value="">Pilih Transmisi</option>
                                                                        <option value="Manual">Manual</option>
                                                                        <option value="Automatic">Automatic</option>
                                                                        <option value="Triptonic">Triptonic</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Bahan Bakar</label>
                                                                <div class="select">
                                                                    <select name="bbakar"
                                                                            class="form-control white_bg"
                                                                            required>
                                                                        <option value="<?php print $car['bahan_bakar_mobil']; ?>"><?php print $car['bahan_bakar_mobil']; ?></option>
                                                                        <option value="">Pilih Bahan Bakar</option>
                                                                        <option value="Bensin">Bensin</option>
                                                                        <option value="Solar">Solar</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="hidden" name="id_mobil" value="<?php print $car['id_mobil']; ?>">
                                                                <button type="submit" class="btn" name="submit"
                                                                        value="simpan">Simpan Perubahan <span
                                                                            class="angle_arrow"><i
                                                                                class="fa fa-angle-right"
                                                                                aria-hidden="true"></i></span>
                                                                </button>
                                                            </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </li>
                                    <?php
                                }
                                ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php
}
?>