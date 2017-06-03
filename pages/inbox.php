<?php
if ($_SESSION['id_user'] != '' || $_SESSION['id_user'] != null) {
    $pengguna = new User($_SESSION['id_user']);
    ?>
    <section class="user_profile inner_pages">
        <div class="container">
            <div class="user_profile_info gray-bg padding_4x4_40">
                <div class="upload_user_logo">
                    <img src="../images/users/<?php print $pengguna->foto; ?>"
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
                    <div class="chat-panel panel panel-red">
                        <ul class="chat panel-body">
                            <br>
                            <?php
                            foreach (MyQuery::getMessage($_SESSION['id_user']) as $row) {
                                $lawan = $row['id_pengirim'];
                                if ($_SESSION['id_user'] == $lawan) {
                                    $lawan = $row['id_penerima'];
                                }
                                $pengirim = new User($lawan);
                                ?>
                                <li class="left clearfix" style="margin-left: 2%; margin-right: 2%">
                                <span class="chat-img pull-left">
                                    <img src="../images/users/<?php print $pengirim->foto; ?>"
                                         alt="User Avatar"
                                         class="img-circle" width="50" height="50">
                                </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong>Percakapan Terakhir
                                                dengan <?php print $pengirim->namaDepan; ?></strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-calendar"></i><?php print explode(" ", $row['tanggal_pesan'])[0]; ?>
                                                &nbsp;&nbsp;&nbsp;<i class="fa fa-clock-o"></i>
                                                <?php print substr(explode(" ", $row['tanggal_pesan'])[1], 0, 8); ?>
                                            </small>
                                        </div>
                                        <p class="text-justify"><?php print $row['isi_pesan']; ?></p>
                                        <div class="btn-group">
                                            <input type="hidden" name="id_pengirim"
                                                   value="<?php print $lawan; ?>">
                                            <button type="button" class="btn outline btn-xs" title="Lihat pesan"
                                                    data-toggle="modal"
                                                    data-target="#pesan_<?php print $row['id_pengirim'] . "_" . $row['id_penerima']; ?>">
                                                Lihat
                                            </button>
                                        </div>
                                    </div>
                                    <div class="modal fade"
                                         id="pesan_<?php print $row['id_pengirim'] . "_" . $row['id_penerima']; ?>">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close"><span aria-hidden="true">&times;</span>
                                                    </button>
                                                    <h6 class="modal-title">Pesan anda
                                                        dengan <?php print $pengirim->namaDepan . " " . $pengirim->namaBelakang; ?>
                                                    </h6>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="chat-panel panel panel-red">
                                                        <ul class="chat panel-body">
                                                            <br>
                                                            <?php
                                                            foreach (MyQuery::getConversation($lawan, $_SESSION['id_user']) as $item) {
                                                                $cek = ($_SESSION['id_user'] == $item['id_pengirim']);
                                                                ?>
                                                                <li class="left clearfix"
                                                                    style="margin-left: 2%; margin-right: 2%">
                                                                <span class="chat-img pull-left"><img
                                                                            src="../images/users/<?php print ($cek) ? $pengguna->foto : $pengirim->foto; ?>"
                                                                            alt="User Avatar" class="img-circle"
                                                                            width="50" height="50">
                                                                </span>
                                                                    <div class="chat-body clearfix">
                                                                        <div class="header">
                                                                            <strong>
                                                                                <?php print ($cek) ? $pengguna->namaDepan : $pengirim->namaDepan; ?>
                                                                            </strong>
                                                                            <small class="pull-right text-muted">
                                                                                <i class="fa fa-calendar"></i><?php print explode(" ", $item['tanggal_pesan'])[0]; ?>
                                                                                &nbsp;&nbsp;&nbsp;<i
                                                                                        class="fa fa-clock-o"></i>
                                                                                <?php print substr(explode(" ", $item['tanggal_pesan'])[1], 0, 8); ?>
                                                                            </small>
                                                                        </div>
                                                                        <p class="text-justify"><?php print $item['isi_pesan']; ?></p>
                                                                    </div>
                                                                </li>
                                                                <?php
                                                            }
                                                            ?>
                                                        </ul>
                                                        <div class="panel-footer">
                                                            <form action="?page=reply_message" method="post">
                                                                <div class="input-group">
                                                                    <input type="hidden" name="penerima"
                                                                           value="<?php print $lawan; ?>">
                                                                    <input name="isi" id="btn-input" type="text"
                                                                           class="form-control input-sm"
                                                                           placeholder="Tulis pesan..." minlength="1">
                                                                    <span class="input-group-btn">
                                                                    <button type="submit" name="submit" value="submit"
                                                                            class="btn btn-warning btn-sm"
                                                                            id="btn-chat">Balas</button>
                                                                </span>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php
}
?>