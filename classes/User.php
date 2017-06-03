<?php

/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 04/05/2017
 * Time: 23.01
 */
class User
{
    private $foto;

    private $namaDepan;

    private $namaBelakang;

    private $email;

    private $password;

    private $jenisKelamin;

    private $noHp;

    private $alamatKeterangan;

    private $ProvinsiKota = array();

    public function __construct($id)
    {
        try {

            $data = MyQuery::getProfile($id);

            $this->foto = ($data['gambar_user']=='' || $data['gambar_user']==null)?'no_image.png':$data['gambar_user'];

            $this->namaDepan = $data['ndepan_user'];

            $this->namaBelakang = $data['nbelakang_user'];

            $this->email = $data['email_user'];

            $this->password = $data['password_user'];

            $this->jenisKelamin = ($data['jenis_kelamin_user'] == 'P') ? 'Perempuan' : 'Laki-laki';

            $this->noHp = $data['no_hp_user'];

            $this->alamatKeterangan = $data['alamat_user'];

            $this->ProvinsiKota = MyQuery::getProvinsiNCity($data['id_kota']);

        } catch (Exception $exception) {

        }
    }

    function __get($name)
    {
        // TODO: Implement __get() method.
        try {
            return $this->{$name};
        } catch (Exception $exception) {

        }
    }

}