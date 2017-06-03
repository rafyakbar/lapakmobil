<?php
if (isset($_GET['tabel'])) {
    if ($_GET['tabel'] == 'user' || $_GET['tabel'] == 'mobil' || $_GET['tabel'] == 'komentar' || $_GET['tabel']=='gambar_mobil') {
        $query = $GLOBALS['koneksi']->query("SELECT * FROM public." . $_GET['tabel'])->fetchAll();
        $column = $GLOBALS['koneksi']->query("
        SELECT column_name
        FROM information_schema.columns
        WHERE table_schema='public' AND table_name='" . $_GET['tabel'] . "'
        ")->fetchAll();
        ?>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                Tabel <?php print ucwords($_GET['tabel']); ?>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <div style="height: 385px;overflow: auto">
                                    <table class="table table-striped table-bordered">
                                        <thead>
                                        <th class="text-center">Hapus</th>
                                        <?php
                                        foreach ($column as $item) {
                                            print "<th class='text-center'>" . str_replace('_' . $_GET['tabel'], '', $item['column_name']) . "</th>";
                                        }
                                        ?>
                                        </thead>
                                            <tbody>
                                            <?php
                                            foreach ($query as $item) {
                                                $vl = ($_GET['tabel'] == 'komentar') ? 'id_mobil' : 'id_' . $_GET['tabel'];
                                                print "<tr>";
                                                print "<td class='text-center'><form action='?page=proses_hapus' method='post' onsubmit=\"return confirm('Anda yakin?')\"><input type='hidden' name='tabel' value='".$_GET['tabel']."'><input type='hidden' name='id' value='".$item[$vl]."'><button type='submit' name='hapus' 
value='$vl' class='btn btn-danger'><i class='fa fa-trash'></i></button></form></td>";
                                                for ($c = 0; $c < count($item) / 2; $c++) {
                                                    if (strpos($item[$c],'.jpg')!==false){
                                                        if (file_exists("../images/users/".$item[$c])){
                                                            $item[$c]="<a href='../images/users/".$item[$c]."'><img src='../images/users/".$item[$c]."' height='75' width='75'></a>";
                                                        }
                                                        elseif (file_exists("../images/cars/")){
                                                            $item[$c]="<a href='../images/cars/".$item[$c]."'><img src='../images/cars/".$item[$c]."' height='75' width='115'></a>";
                                                        }
                                                    }
                                                    print "<td class='text-center'>" . $item[$c] . "</td>";
                                                }
                                                print "</tr>";
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
        <?php
    }
}
?>