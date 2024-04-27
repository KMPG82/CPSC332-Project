<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Registration</title>

    <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/styles.css" rel="stylesheet">
  </head>

  <body class="text-center bg-light">
    <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-12 col-xl-11">
                <div class="card text-black" style="border-radius: 25px;">
                    <div class="card-body p-md-5">
                        <div class="row justify-content-center">
                            <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Registration</p>
                                <form class="mx-1 mx-md-4" action="./register.php" type="post">

                                <div class="d-flex flex-row align-items-center mb-4 justify-content-center">
                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                    <div data-mdb-input-init class="form-outline flex-fill mb-0 ">
                                    <input type="text" id="form3Example1c" class="form-control" />
                                    <label class="form-label" for="form3Example1c">First Name</label>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4 justify-content-center">
                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                    <div data-mdb-input-init class="form-outline flex-fill mb-0 ">
                                    <input type="text" id="form3Example1c" class="form-control" />
                                    <label class="form-label" for="form3Example1c">Last Name</label>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4 justify-content-center">
                                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                                    <input type="email" id="form3Example3c" class="form-control" />
                                    <label class="form-label" for="form3Example3c">Email</label>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4 justify-content-center">
                                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                                    <input type="password" id="form3Example4c" class="form-control" />
                                    <label class="form-label" for="form3Example4c">Password</label>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                    <button type="submit" name="register" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg">Register</button>
                                </div>

                                <a href="../index.php">Have an account already?</a>
                                </form>

                            </div>

                            <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                <img src="https://cdn-cjhkj.nitrocdn.com/krXSsXVqwzhduXLVuGLToUwHLNnSxUxO/assets/images/optimized/rev-6c7c2cd/spotme.com/wp-content/uploads/2020/07/Hero-1.jpg"
                                class="img-fluid rounded" alt="Sample image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</html>