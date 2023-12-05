<?php include('header.php'); ?>
    <section class="bg-light vh-100 d-flex">
        <div class="col-3 m-auto">
            <div class="card">
                <div class="card-body">
                    <div class="border rounded-circle mx-auto d-flex " style="width:100px;height:100px">
                        <i class="fa fa-user text-light fa-3x m-auto"></i>
                    </div>
                    <form action="actions/login.php" method="POST">
                        <div class="md-form">
                            <input type="email" name="email" id="email" class="form-control"/>
                            <label for="email">Your Email</label>
                        </div>
                        <div class="md-form">
                            <input type="password" name="password" id="password" class="form-control"/>
                            <label for="password">Your Password</label>
                        </div>
                        <div class="text-center">
                            <button class="btn btn-secondary" name="login">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
<?php include('footer.php'); ?>