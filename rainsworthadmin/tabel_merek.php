<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        Tabel Merek
                    </div>
                    <div class="content table-responsive table-full-widt">
                        <div style="max-height: 315px;overflow: auto">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <th class="text-center">Tindakan</th>
                                <?php
                                $column = $GLOBALS['koneksi']->query("
                                SELECT column_name
                                FROM information_schema.columns
                                WHERE table_schema='public' AND table_name='merek'
                                ")->fetchAll();
                                foreach ($column as $item) {
                                    print "<th class='text-center'>" . str_replace('_merek', '', $item['column_name']) . "</th>";
                                }
                                ?>
                                </thead>
                                <form action='?page=proses_hapus' method='post'
                                      onsubmit="return confirm('Anda yakin?')">
                                    <input type="hidden" name="tabel" value="merek">
                                    <tbody>
                                    <?php
                                    $query = $GLOBALS['koneksi']->query("SELECT * FROM public.merek ORDER BY nama_merek")->fetchAll();
                                    foreach ($query as $item) {
                                        ?>
                                        <?php
                                        print "<tr>";
                                        print "<td class='text-center'><input type='hidden' name='id' value='" . $item['id_merek'] . "'><button type='submit' name='hapus' value='id_merek' class='btn btn-danger'>Hapus</button> <button type='button' data-toggle='modal' data-target='#"
                                            .$item['id_merek']."' class='btn btn-success'>Lihat Tipe</button></td>";
                                        for ($c = 0; $c < count($item) / 2; $c++) {
                                            print "<td class='text-center'>" . $item[$c] . "</td>";
                                        }
                                        print "</tr>";
                                    }
                                    ?>
                                    </tbody>
                                </form>
                            </table>
                        </div>
                        <form action="?page=tambah_merek" method="post">
                            <div class="row">
                                <div class="col-md-10">
                                    <textarea class="form-control border-input" name="isi" placeholder="pisahkan dengan enter untuk menginputkan banyak merek" required></textarea>
                                </div>
                                <div class="col-md-2">
                                    <input type="submit" class="btn" name="submit" value="Tambah Merek">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
foreach ($query as $item) {
    $idmerek=$item['id_merek'];
    ?>
    <div class="modal fade" id="<?php print $idmerek; ?>">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Tipe untuk merek </h4>
                </div>
                <div class="modal-body">
                    <div style="max-height: 325px;overflow: auto">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <th class="text-center">Tindakan</th>
                            <?php
                            $column = $GLOBALS['koneksi']->query("
                                SELECT column_name
                                FROM information_schema.columns
                                WHERE table_schema='public' AND table_name='tipe'
                                ")->fetchAll();
                            foreach ($column as $item) {
                                print "<th class='text-center'>" . str_replace('_tipe', '', $item['column_name']) . "</th>";
                            }
                            ?>
                            </thead>
                            <form action='?page=proses_hapus' method='post'
                                  onsubmit="return confirm('Anda yakin?')">
                                <input type="hidden" name="tabel" value="tipe">
                                <tbody>
                                <?php
                                $query = $GLOBALS['koneksi']->query("SELECT * FROM public.tipe WHERE id_merek=$idmerek ORDER BY nama_tipe")
                                    ->fetchAll();
                                foreach ($query as $item) {
                                    print "<tr>";
                                    print "<td class='text-center'><input type='hidden' name='id' value='" . $item['id_tipe'] . "'><button type='submit' name='hapus' value='id_merek' class='btn btn-danger'>Hapus</button> </td>";
                                    for ($c = 0; $c < count($item) / 2; $c++) {
                                        print "<td class='text-center'>" . $item[$c] . "</td>";
                                    }
                                    print "</tr>";
                                }
                                ?>
                                </tbody>
                            </form>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <form action="?page=tambah_tipe" method="post">
                        <div class="row">
                            <div class="col-md-9">
                                <textarea name="isi" class="form-control border-input" placeholder="pisahkan dengan enter untuk menginputkan banyak tipe" required></textarea>
                            </div>
                            <div class="col-md-3 text-center">
                                <input type="hidden" name="id_merek" value="<?php print $idmerek; ?>">
                                <input type="submit" class="btn" name="submit" value="Tambah tipe">
                            </div>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <?php
}
?>