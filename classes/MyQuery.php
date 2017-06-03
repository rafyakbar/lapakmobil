<?php

/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 08/05/2017
 * Time: 21.36
 */
class MyQuery
{
    public static function insertCriticism($isi)
    {
        $waktu = MyQuery::getTimestamp();
        return ($GLOBALS['koneksi']->exec("
        INSERT INTO kritik_saran(isi_kritik_saran, tanggal_kritik_saran)
        VALUES ('$isi',$waktu)
        "));
    }

    public static function deleteCarImage($id_mobil)
    {
        return ($GLOBALS['koneksi']->exec("
        DELETE FROM public.gambar_mobil
        WHERE id_mobil=$id_mobil
        "));
    }

    public static function updateAds($id_mobil, $id_jenis, $id_tipe, $judul, $harga, $plat, $cc, $transmisi, $bbakar, $tahun, $keterangan, $id_kota, $nego)
    {
        return ($GLOBALS['koneksi']->exec("
        UPDATE public.mobil
        SET
          id_jenis=$id_jenis,
          id_tipe=$id_tipe,
          judul_iklan_mobil='$judul',
          harga_mobil=$harga,
          plat_mobil='$plat',
          cc_mobil=$cc,
          transmisi_mobil='$transmisi',
          bahan_bakar_mobil='$bbakar',
          tahun_mobil=$tahun,
          keterangan_mobil='$keterangan',
          id_kota=$id_kota,
          nego_mobil=$nego
        WHERE id_mobil=$id_mobil
        "));
    }

    public static function getFavorit($id_user)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM public.favorit INNER JOIN mobil
          ON favorit.id_mobil=mobil.id_mobil
        WHERE favorit.id_user=$id_user
        ")->fetchAll());
    }

    public static function deleteFavorit($id_user, $id_mobil)
    {
        return ($GLOBALS['koneksi']->exec("
        DELETE FROM public.favorit
        WHERE id_user=$id_user AND id_mobil=$id_mobil
        "));
    }

    public static function insertFavorit($id_user, $id_mobil)
    {
        $waktu = MyQuery::getTimestamp();
        return ($GLOBALS['koneksi']->exec("
        INSERT INTO public.favorit(id_user, id_mobil, tanggal_favorit) 
        VALUES ($id_user, $id_mobil, $waktu)
        "));
    }

    public static function getConversation($id_pengirim, $id_user)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM pesan
        WHERE
          (id_pengirim=$id_pengirim AND id_penerima=$id_user) OR 
          (id_pengirim=$id_user AND id_penerima=$id_pengirim)
        ORDER BY tanggal_pesan ASC
        ")->fetchAll());
    }

    public static function getMessage($id_user)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM (SELECT
                *,
                row_number()
                OVER (
                  PARTITION BY pesan.identitas_pesan
                  ORDER BY pesan.identitas_pesan ASC, pesan.tanggal_pesan DESC) AS ke
              FROM public.pesan
              WHERE id_penerima = $id_user OR id_pengirim = $id_user
              ORDER BY pesan.identitas_pesan ASC, pesan.tanggal_pesan DESC) AS p
        WHERE ke=1
        ")->fetchAll());
    }

    public static function insertMessage($pengirim, $penerima, $isi)
    {
        $query = "
        SELECT pesan.identitas_pesan
        FROM public.pesan
        WHERE (id_penerima=$penerima AND id_pengirim=$pengirim) OR (id_penerima=$pengirim AND id_pengirim=$penerima)
        LIMIT 1
        ";
        $cekIdentitas = $GLOBALS['koneksi']->prepare($query);
        $cekIdentitas->execute();
        $idp = $pengirim . "_" . $penerima;
        if ($cekIdentitas->rowCount() != 0) {
            $idp = $GLOBALS['koneksi']->query($query)->fetchAll()[0]['identitas_pesan'];
        }
        $waktu = MyQuery::getTimestamp();
        return ($GLOBALS['koneksi']->exec("
        INSERT INTO public.pesan (id_pengirim, id_penerima, isi_pesan, tanggal_pesan, identitas_pesan) 
        VALUES ($pengirim, $penerima, '$isi', $waktu, '$idp')
        "));
    }

    public static function getComment($id_mobil)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM public.komentar
        WHERE id_mobil=$id_mobil
        ORDER BY tanggal_komentar ASC
        ")->fetchAll());
    }

    public static function insertComment($id_user, $id_mobil, $isi)
    {
        $waktu = MyQuery::getTimestamp();
        return ($GLOBALS['koneksi']->exec("
        INSERT INTO public.komentar (id_user, id_mobil, isi_komentar, tanggal_komentar)
        VALUES ($id_user, $id_mobil, '$isi', $waktu)
        "));
    }

    public static function carDetail($id_mobil)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM public.mobil
        WHERE id_mobil=$id_mobil
        ")->fetchAll())[0];
    }

    public static function newestCar()
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM (
          SELECT
            row_number() OVER (PARTITION BY mobil.id_mobil ORDER BY gambar_mobil.url_gambar_mobil) AS pertama,
            *
          FROM public.mobil, public.gambar_mobil
          WHERE gambar_mobil.id_mobil = mobil.id_mobil
          ORDER BY gambar_mobil.url_gambar_mobil
        ) AS gambarMobil
        WHERE pertama=1
        ORDER BY gambarMobil.tanggal_mobil DESC
        LIMIT 3
        ")->fetchAll());
    }

    public static function bestCar()
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM (
          SELECT
            row_number() OVER (PARTITION BY mobil.id_mobil ORDER BY gambar_mobil.url_gambar_mobil) AS pertama,
            *
          FROM public.mobil, public.gambar_mobil
          WHERE gambar_mobil.id_mobil = mobil.id_mobil
          ORDER BY gambar_mobil.url_gambar_mobil
        ) AS gambarMobil
        WHERE pertama=1
        ORDER BY gambarMobil.harga_mobil DESC
        LIMIT 3
        ")->fetchAll());
    }

    public static function countResult($kata_kunci, $id_kota, $id_tipe, $hawal, $hakhir, $rentang_tahun)
    {
        $tipe = ($id_tipe == null || $id_tipe == '') ? '' : "(id_tipe=$id_tipe) AND";
        $kota = ($id_kota == null || $id_kota == '') ? '' : "(id_kota=$id_kota) AND";
        return ($GLOBALS['koneksi']->query("
        SELECT count(id_mobil)
        FROM mobil
        WHERE 
        (LOWER(judul_iklan_mobil) LIKE LOWER('%" . $kata_kunci . "%')) AND 
        $kota
        $tipe 
        (harga_mobil BETWEEN $hawal AND $hakhir) AND
        (tahun_mobil BETWEEN " . explode(',', $rentang_tahun)[0] . " AND " . explode(',', $rentang_tahun)[1] . ")
        ")->fetchAll())[0];
    }

    public static function searchResult($kata_kunci, $id_kota, $id_tipe, $hawal, $hakhir, $rentang_tahun, $urutan, $ke)
    {
        $orderby = "";
        $kata_kunci = ($kata_kunci == null || $kata_kunci == '') ? '' : $kata_kunci;
        if ($urutan == "terbaru") {
            $orderby = "tanggal_mobil DESC";
        } else if ($urutan == "terlama") {
            $orderby = "tanggal_mobil ASC";
        } else if ($urutan == "termurah") {
            $orderby = "harga_mobil ASC";
        } else {
            $orderby = "harga_mobil DESC";
        }
        $tipe = ($id_tipe == null || $id_tipe == '') ? '' : "(id_tipe=$id_tipe) AND";
        $kota = ($id_kota == null || $id_kota == '') ? '' : "(id_kota=$id_kota) AND";
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM public.mobil
        WHERE 
        (LOWER(judul_iklan_mobil) LIKE LOWER('%" . $kata_kunci . "%')) AND 
        $kota
        $tipe 
        (harga_mobil BETWEEN $hawal AND $hakhir) AND
        (tahun_mobil BETWEEN " . explode(',', $rentang_tahun)[0] . " AND " . explode(',', $rentang_tahun)[1] . ")
        ORDER BY $orderby
        LIMIT 5 OFFSET $ke;
        ")->fetchAll());
    }

    public static function deleteCar($id_mobil)
    {
        return ($GLOBALS['koneksi']->exec("
        DELETE FROM public.gambar_mobil
        WHERE gambar_mobil.id_mobil=$id_mobil;
        
        DELETE FROM public.favorit
        WHERE id_mobil=$id_mobil;
        
        DELETE FROM public.komentar
        WHERE id_mobil=$id_mobil;
        
        DELETE FROM public.mobil
        WHERE mobil.id_mobil=$id_mobil;
        "));
    }

    public static function getCarImage($id_mobil)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM gambar_mobil
        WHERE gambar_mobil.id_mobil=$id_mobil
        ORDER BY gambar_mobil.url_gambar_mobil
        ")->fetchAll());
    }

    public static function getListAds($id_user)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT id_mobil, judul_iklan_mobil, url_gambar_mobil
        FROM (
          SELECT
            mobil.id_user,
            row_number() OVER (PARTITION BY mobil.id_mobil ORDER BY gambar_mobil.url_gambar_mobil) AS pertama,
            mobil.id_mobil,
            mobil.judul_iklan_mobil,
            mobil.tanggal_mobil,
            gambar_mobil.url_gambar_mobil
          FROM mobil, gambar_mobil
          WHERE gambar_mobil.id_mobil = mobil.id_mobil
          ORDER BY gambar_mobil.url_gambar_mobil
        ) AS gambarMobil
        WHERE id_user=$id_user AND pertama=1
        ORDER BY tanggal_mobil ASC;
        ")->fetchAll());
    }

    public static function getBrandType($id_tipe)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT tipe.id_merek ,nama_merek, id_tipe, nama_tipe
        FROM tipe LEFT JOIN merek
          ON merek.id_merek=tipe.id_merek
        WHERE tipe.id_tipe=$id_tipe
        ")->fetchAll()[0]);
    }

    public static function getPassword($id)
    {
        return ($GLOBALS['koneksi']->query("
            SELECT password_user 
            FROM public.user
            WHERE id_user=$id
        ")->fetchAll())[0]['password_user'];
    }

    public static function getID($email, $password)
    {
        $password = md5($password);
        //print $password;
        try {
            return ($GLOBALS['koneksi']->query("
            SELECT id_user FROM public.user
            WHERE email_user='$email' AND password_user='$password';
            ")->fetchAll());
        } catch (PDOException $exception) {

        }
    }

    public static function insert($ndepan, $nbelakang, $email, $password)
    {
        $password = md5($password);
        return $GLOBALS['koneksi']->exec("
            INSERT INTO public.user (ndepan_user, nbelakang_user, email_user, password_user)
            VALUES ('$ndepan', '$nbelakang', '$email', '$password');
        ");
    }

    public static function getFirstName($id_user)
    {
        return ($GLOBALS['koneksi']->query("
            SELECT ndepan_user
            FROM public.user
            WHERE id_user=" . $id_user
        )->fetchAll())[0]['ndepan_user'];
    }

    public static function getFullName($id_user)
    {
        $row = ($GLOBALS['koneksi']->query("
            SELECT ndepan_user, nbelakang_user
            FROM public.user
            WHERE id_user=" . $id_user)->fetchAll())[0];
        return $row['ndepan_user'] . " " . $row['nbelakang_user'];
    }

    public static function getProvinsi()
    {
        return $GLOBALS['koneksi']->query("
            SELECT id_provinsi, nama_provinsi
            FROM provinsi 
            ORDER BY nama_provinsi;
        ")->fetchAll();
    }

    public static function getProfile($id)
    {
        return ($GLOBALS['koneksi']->query("
            SELECT gambar_user ,ndepan_user, nbelakang_user, email_user, password_user, jenis_kelamin_user, no_hp_user, 
            alamat_user, id_kota
            FROM public.user
            WHERE id_user=$id
        "))->fetchAll()[0];
    }

    public static function getProvinsiNCity($id_kota)
    {
        if ($id_kota != null) {
            return ($GLOBALS['koneksi']->query("
                SELECT k.id_kota ,k.nama_kota, provinsi.id_provinsi, provinsi.nama_provinsi
                FROM (SELECT * FROM public.kota WHERE id_kota=$id_kota) AS k
                INNER JOIN public.provinsi
                  ON provinsi.id_provinsi=k.id_provinsi
            ")->fetchAll())[0];
        } else {
            return array('id_kota' => '', 'nama_kota' => '', 'id_provinsi' => '', 'nama_provinsi' => '');
        }
    }

    public static function updateUser($id_user, $ndepan, $nbelakang, $email, $password, $kelamin, $nohp, $alamat, $id_kota, $gambar)
    {
        if ($password == '' || $password == null) {
            $password = MyQuery::getPassword($id_user);
        } else {
            $password = md5($password);
        }
        if ($id_kota == '' || $id_kota == null) {
            return ($GLOBALS['koneksi']->exec("
            UPDATE public.user
            SET
              ndepan_user='$ndepan', 
              nbelakang_user='$nbelakang',
              email_user='$email', 
              jenis_kelamin_user='$kelamin',
              no_hp_user='$nohp', 
              alamat_user='$alamat', 
              gambar_user='$gambar', 
              password_user='$password'
            WHERE id_user=$id_user
        "));
        } else {
            return ($GLOBALS['koneksi']->exec("
            UPDATE public.user
            SET ndepan_user='$ndepan', nbelakang_user='$nbelakang', email_user='$email', 
            jenis_kelamin_user='$kelamin', no_hp_user='$nohp', alamat_user='$alamat', id_kota=$id_kota, 
            gambar_user='$gambar', password_user='$password'
            WHERE id_user=$id_user
        "));
        }
    }

    public static function getBrand()
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM public.merek
        ")->fetchAll());
    }

    public static function getTypeCar()
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM public.jenis
        ")->fetchAll());
    }

    public static function getTypeName($id_jenis)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT *
        FROM public.jenis
        WHERE id_jenis=$id_jenis
        ")->fetchAll())[0];
    }

    public static function getTimestamp()
    {
        return "now()::TIMESTAMP AT TIME ZONE 'Asia/Jakarta'";
    }

    public static function postAds($id, $jenis, $tipe, $judul, $harga, $nopol, $cc, $transmisi, $bbakar, $tahun, $keterangan, $kota, $nego)
    {
        $tmstamp = MyQuery::getTimestamp();
        $nego = ($nego == 'true') ? $nego : 'false';
        return ($GLOBALS['koneksi']->query("
        INSERT INTO public.mobil (id_user, id_jenis, id_tipe, judul_iklan_mobil, harga_mobil, plat_mobil, cc_mobil, transmisi_mobil, bahan_bakar_mobil, tahun_mobil, keterangan_mobil, id_kota, tanggal_mobil, nego_mobil)
        VALUES ($id, $jenis, $tipe, '$judul', $harga, '$nopol', $cc, '$transmisi', 
            '$bbakar', $tahun, '$keterangan', $kota, $tmstamp, $nego)
        RETURNING id_mobil
        ")->fetchAll())[0][0];
    }

    public static function setCarImages($id_mobil, $nama_foto)
    {
        $GLOBALS['koneksi']->exec("
        INSERT INTO public.gambar_mobil (id_mobil, url_gambar_mobil)
        VALUES ($id_mobil, '$nama_foto')
        ");
    }

    public static function countCar($id_user)
    {
        return ($GLOBALS['koneksi']->query("
        SELECT count(id_mobil)
        FROM public.mobil
        WHERE id_user=$id_user
        ")->fetchAll())[0][0];
    }
}