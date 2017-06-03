<!--Login-Form -->
<div class="modal fade" id="loginform">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title">Login</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="login_wrap">
                        <div class="col-md-12 col-sm-12">
                            <form action="?page=login" method="post">
                                <div class="form-group">
                                    <input name="email" type="email" class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input name="password" type="password" class="form-control" placeholder="Kata sandi">
                                </div>
                                <div class="form-group">
                                    <input name="submit" type="submit" value="masuk" class="btn btn-block">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer text-center">
                <p>Belum punya akun? <a href="#signupform" data-toggle="modal" data-dismiss="modal">Buat di sini</a></p>
            </div>
        </div>
    </div>
</div>
<!--/Login-Form -->