<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 09/05/2017
 * Time: 07.55
 */
function cekUrutan($value)
{
    $urutan = array(
        'terbaru' => array(
            'value' => 'terbaru',
            'isi' => 'Terbaru ke terlama'
        ),
        'terlama' => array(
            'value' => 'terlama',
            'isi' => 'Terlama ke terbaru'
        ),
        'termurah' => array(
            'value' => 'termurah',
            'isi' => 'Termurah ke termahal'
        ),
        'termahal' => array(
            'value' => 'termahal',
            'isi' => 'Termahal ke termurah'
        )
    );
    print "<option value='" . $value . "'>" . $urutan[$value]['isi'] . "</option>";
    foreach ($urutan as $item) {
        if ($value != $item['value']) {
            print "<option value='" . $item['value'] . "'>" . $item['isi'] . "</option>";
        }
    }
}

function scriptAlert($teks)
{
    print "<script> alert('$teks') </script>";
}

function __autoload($loadClass)
{
    include "../classes/" . $loadClass . ".php";
}

function loadMerek()
{
    foreach (MyQuery::getBrand() as $row) {
        print "<option value='" . $row['id_merek'] . "'>" . $row['nama_merek'] . "</option>";
    }
}

function loadTahun()
{
    for ($c = date('Y'); $c >= date('Y')-25; $c--) {
        print "<option value='$c'>$c</option>";
    }
}

function loadJenis()
{
    foreach (MyQuery::getTypeCar() as $row) {
        print "<option value='" . $row['id_jenis'] . "'>" . $row['nama_jenis'] . "</option>";
    }
}

function compressImage($image_location, $image_size_in_byte, $target_to_move)
{
    $img = imagecreatefromjpeg($image_location);
    $size_in_MB = $image_size_in_byte / 1024 / 1024;
    $quality = (50 / $size_in_MB) + $size_in_MB + ($size_in_MB * $size_in_MB * $size_in_MB / (22.5 / $size_in_MB));
    $quality = ($quality > 100) ? 100 : $quality;
    imagejpeg($img, $target_to_move, $quality);
}

function compressCropImage($image_location, $image_size_in_byte, $target_to_move)
{
    ini_set("memory_limit", "512M");

    //set width and height
    list($width, $height) = getimagesize($image_location);

    $img = imagecreatefromjpeg($image_location);

    //calculating the part of the image to use for thumbnail
    if ($width > $height) {
        $y = 0;
        $x = ($width - $height) / 2;
        $smallestSide = $height;
    } else {
        $x = 0;
        $y = ($height - $width) / 2;
        $smallestSide = $width;
    }

    //copying the part into thumbnail
    $thumbSize = ($width < $height) ? $width : $height;
    $thumb = imagecreatetruecolor($thumbSize, $thumbSize);
    imagecopyresampled($thumb, $img, 0, 0, $x, $y, $thumbSize, $thumbSize, $smallestSide, $smallestSide);

    //output
    $size_in_MB = $image_size_in_byte / 1024 / 1024;
    $quality = (50 / $size_in_MB) + $size_in_MB + ($size_in_MB * $size_in_MB * $size_in_MB / (22.5 / $size_in_MB));
    $quality = ($quality > 100) ? 100 : $quality;
    imagejpeg($thumb, $target_to_move, $quality);
    ini_set("memory_limit", "128M");
}