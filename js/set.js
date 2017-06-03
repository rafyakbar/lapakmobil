/**
 * Created by Rafy on 04/05/2017.
 */
$(document).ready(function () {
    $("#provinsi").change(function () {
        var prov = $("#provinsi").val();
        $.ajax({
            url: 'city.php',
            data: 'provinsi=' + prov,
            type: "POST",
            success: function (data) {
                $("#kota").html(data);
            }
        });
    });
});

$(document).ready(function () {
    $("#merek").change(function () {
        var mer = $("#merek").val();
        $.ajax({
            url: 'type.php',
            data: 'merek=' + mer,
            type: "POST",
            success: function (data) {
                $("#tipe").html(data);
            }
        });
    });
});