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
                <form action="?page=post_ads_proccess" method="post" enctype="multipart/form-data">
                    <div class="col-md-6 col-sm-8">
                        <div class="profile_wrap">
                            <div class="gray-bg field-title" style="margin-top: -3%">
                                <h6>Informasi Umum</h6>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Judul Iklan</label>
                                <input name="judul" class="form-control white_bg" type="text" required>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Merek</label>
                                <div class="select">
                                    <select name="merek" id="merek" class="form-control white_bg" required>
                                        <option value="">Pilih merek</option>
                                        <?php loadMerek(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tipe</label>
                                <div class="select">
                                    <select name="tipe" id="tipe" class="form-control white_bg" required></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><input name="nego" type="checkbox" value="true"> Harga nego
                                </label>
                                <input name="harga" class="form-control white_bg" type="number" min="0"
                                       max="99000000000" placeholder="Rp" required>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tahun</label>
                                <div class="select">
                                    <select name="tahun" class="form-control white_bg" required>
                                        <option value="">Pilih tahun</option>
                                        <?php loadTahun(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Jenis</label>
                                <div class="select">
                                    <select name="jenis" class="form-control white_bg">
                                        <option value="">Pilih jenis (tidak wajib)</option>
                                        <?php loadJenis(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Lokasi Mobil (provinsi)</label>
                                <div class="select">
                                    <select id="provinsi" class="form-control white_bg" required>
                                        <option value="">Pilih Provinsi</option>
                                        <?php include 'provinsi.php'; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Lokasi Mobil (kota)</label>
                                <div class="select">
                                    <select name="kota" id="kota" class="form-control white_bg" required></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nomor Polisi</label>
                                <input name="nopol" class="form-control white_bg" type="text"
                                       placeholder="Tidak wajib diisi/kode depan saja">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Keterangan mobil</label>
                                <textarea id="editor" name="keterangan"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Pilih Foto (maksimal 8 foto)</label>
                                <div class="vehicle_images">
                                    <div class="upload_more_img">
                                        <input name="upload[]" type="file" max="8" accept="image/jpeg" multiple required>
                                    </div>
                                </div>
                            </div>
                            <div class="gray-bg field-title">
                                <h6>Spesifikasi</h6>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Kapasitas Mesin (CC)</label>
                                <input name="cc" class="form-control white_bg" type="number" min="800" required>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Transmisi</label>
                                <div class="select">
                                    <select name="transmisi" class="form-control white_bg" required>
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
                                    <select name="bbakar" class="form-control white_bg" required>
                                        <option value="">Pilih Bahan Bakar</option>
                                        <option value="Bensin">Bensin</option>
                                        <option value="Solar">Solar</option>
                                    </select>
                                </div>
                            </div>
                            <br><br>
                            <div class="form-group">
                                <button type="submit" class="btn" name="iklan" value="iklan">Pasang Iklan
                                    <span class="angle_arrow">
                                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <?php
}
?>