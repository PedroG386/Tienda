<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Tienda.Account.LogIn" %>

<!DOCTYPE html>
<head>
    <title>Login V3</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/LogInStyle/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/css/util.css">
    <link rel="stylesheet" type="text/css" href="/LogInStyle/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

    <div class="limiter">
        <!--<div class="container-login100" style="background-image: url('images/bg-01.jpg');">-->
        <div class="container-login100" style="background-image: url('https://i.imgur.com/8bFBKKJ.jpg');">
            <div class="wrap-login100">
                <form class="login100-form validate-form">
                    <span class="login100-form-title p-b-34 p-t-27">Travel & Live
                    </span>

                    <span class="login100-form-logo">
                        <img src="https://i.imgur.com/v1OQ68s.jpg" style="width: 82px; height: 82px;" />
                    </span>


                    <div class="wrap-input100 validate-input" data-validate="Ingresa tu usuario">
                        <input class="input100" type="text" name="username" placeholder="Usuario">
                        <span class="focus-input100" data-placeholder="&#xf207;"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Ingresa tu contraseña">
                        <input class="input100" type="password" name="pass" placeholder="Contraseña">
                        <span class="focus-input100" data-placeholder="&#xf191;"></span>
                    </div>

                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <!---<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>-->
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" style="width: 100%;">
                            <span class=".fa-rotate-right"></span>Ingresar
                        </button>
                    </div>

                    <div class="text-center p-t-90">
                        <a class="txt1" href="#"></a>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <div id="dropDownSelect1"></div>

    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/bootstrap/js/popper.js"></script>
    <script src="/LogInStyle/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/daterangepicker/moment.min.js"></script>
    <script src="/LogInStyle/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="/LogInStyle/js/main.js"></script>

</body>
</html>
