<?php
if (isset($_SESSION['id_user'])) {
    $pengguna = new User($_SESSION['id_user']);
    ?>
    <section class="user_profile inner_pages">
        <form action="?page=update_profile" method="post" enctype="multipart/form-data">
            <div class="container">
                <div class="user_profile_info gray-bg padding_4x4_40">
                    <?php if ($pengguna->foto == 'no_image.png') { ?>
                        <h5>Unggah foto profil</h5>
                    <?php } ?>
                    <div class="upload_user_logo">
                        <img src="../images/<?php print (($pengguna->foto == '') ? 'upload.png' : "users/" . $pengguna->foto) ?>"
                             alt="image" height="150" width="162">
                        <div class="upload_newlogo">
                            <input name="foto" type="file" accept="image/jpeg">
                        </div>
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
                                <h6>Umum</h6>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nama Depan</label>
                                <input name="ndepan" class="form-control white_bg" id="fullname" type="text"
                                       value="<?php print $pengguna->namaDepan; ?>">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nama Belakang</label>
                                <input name="nbelakang" class="form-control white_bg" id="fullname" type="text"
                                       value="<?php print $pengguna->namaBelakang; ?>">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Email</label>
                                <input name="email" class="form-control white_bg" id="email" type="email"
                                       value="<?php print $pengguna->email; ?>">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Jenis Kelamin</label>
                                <div class="select">
                                    <select name="kelamin" class="form-control white_bg">
                                        <?php
                                        if ($pengguna->jenisKelamin == '') {
                                            print "<option value=''>Pilih jenis kelamin</option>";
                                            print "<option value='L'>Laki-laki</option>";
                                            print "<option value='P'>Perempuan</option>";
                                        } else if ($pengguna->jenisKelamin == 'Perempuan') {
                                            print "<option value='P'>Perempuan</option>";
                                            print "<option value='L'>Laki-laki</option>";
                                        } else {
                                            print "<option value='L'>Laki-laki</option>";
                                            print "<option value='P'>Perempuan</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">No HP</label>
                                <input name="no_hp" class="form-control white_bg" id="phone-number" type="number"
                                       min="0"
                                       minlength="10" maxlength="14" value="<?php print $pengguna->noHp; ?>">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Alamat (provinsi)</label>
                                <div class="select">
                                    <select id="provinsi" class="form-control white_bg">
                                        <?php if ($pengguna->ProvinsiKota['nama_provinsi'] == '') { ?>
                                            <option value="">Pilih Provinsi</option>
                                        <?php } else { ?>
                                            <option value="<?php print $pengguna->ProvinsiKota['id_provinsi']; ?>"><?php print ucwords(strtolower($pengguna->ProvinsiKota['nama_provinsi'])); ?></option>
                                        <?php }
                                        include 'provinsi.php'; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Alamat (kota)</label>
                                <div class="select">
                                    <select name="kota" id="kota" class="form-control white_bg">
                                        <?php if ($pengguna->ProvinsiKota['nama_kota'] == ''){ ?>
                                            <option value="">Pilih Kota</option>
                                        <?php } else{ ?>
                                        <option value="<?php print $pengguna->ProvinsiKota['id_kota']; ?>"><?php print ucwords(strtolower($pengguna->ProvinsiKota['nama_kota']));
                                            } ?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Alamat (keterangan)</label>
                                <textarea name="alamat" class="form-control white_bg"
                                          rows="3"><?php print $pengguna->alamatKeterangan; ?></textarea>
                            </div>
                            <div class="gray-bg field-title">
                                <h6>Perbarui kata sandi</h6>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Kata Sandi Lama</label>
                                <input name="sandi_lama" class="form-control white_bg" id="password" type="password"
                                       value="">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Kata Sandi Baru</label>
                                <input name="sandi_baru" class="form-control white_bg" id="c-password" type="password"
                                       value="">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Konfirmasi Kata Sandi Baru</label>
                                <input name="ksandi_baru" class="form-control white_bg" id="c-password" type="password"
                                       value="">
                            </div>
                            <br><br>
                            <div class="form-group">
                                <button type="submit" class="btn" name="update" value="update">Simpan Perubahan <span
                                            class="angle_arrow"><i class="fa fa-angle-right"
                                                                   aria-hidden="true"></i></span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
    <?php
}
?>