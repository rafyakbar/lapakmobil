<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rafy
 * Date: 23/05/2017
 * Time: 12.26
 */
$operasi="";
if ($_POST['submit']=="hapus"){
    $operasi="ads_operation_delete";
}
else if ($_POST['submit']=="lihat"){
    ?>
    <script type="text/javascript">
        window.location.replace("index.php?page=detail&id_mobil=<?php print $_POST['id_mobil']; ?>&submit=submit")
    </script>
    <?php
}
?>
<form action="?page=<?php print $operasi; ?>" method="post" id="op">
    <input type="hidden" name="id_mobil" value="<?php print $_POST['id_mobil']; ?>">
</form>
<script type="text/javascript">
    document.getElementById('op').submit();
</script>
