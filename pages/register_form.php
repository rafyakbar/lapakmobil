<!--Register-Form -->
<div class="modal fade" id="signupform">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title">Buat Akun</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="signup_wrap">
                        <form id="daftar" action="?page=register" method="post">
                            <div class="col-md-12 col-sm-12">
                                <div class="form-group">
                                    <input type="text" name="ndepan" class="form-control" placeholder="Nama Depan"
                                           required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="nbelakang" class="form-control" placeholder="Nama Belakang"
                                           required>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" name="new_password" class="form-control" placeholder="Kata Sandi" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" name="new_kpassword" class="form-control" placeholder="Konfirmasi Kata Sandi" required>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="register" class="btn btn-block">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer text-center">
                <p>Sudah punya akun? <a href="#loginform" data-toggle="modal" data-dismiss="modal">Masuk di sini</a></p>
            </div>
        </div>
    </div>
</div>

<script>
    $("#daftar").submit(function (ev) {
        if($("input[name='new_password']").val() != $("input[name='new_kpassword']").val()) {
            ev.preventDefault();
            alert("Konfirmasi kata sandi harus sama dengan kata sandi!");
        }
    });
</script>
<!--/Register-Form -->