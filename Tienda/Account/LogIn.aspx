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
    <%--<link rel="stylesheet" type="text/css" href="/LogInStyle/fonts/iconic/css/material-design-iconic-font.min.css">--%>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
<%--    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/animsition/css/animsition.min.css">--%>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/select2/select2.min.css">

    <!--===============================================================================================-->
<%--    <link rel="stylesheet" type="text/css" href="/LogInStyle/vendor/daterangepicker/daterangepicker.css">--%>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/LogInStyle/css/util.css">
    <link rel="stylesheet" type="text/css" href="/LogInStyle/css/main.css">
    <!--===============================================================================================-->
	<style>

	    .wrap-login100 {
			background-color:black ;
			opacity: 0.9;
	    }
	    .login100-form-title {
			color:white;
	    }
		.container-login100 {
			background-image: url("https://i.imgur.com/eYnVqax.jpg");
		}

		.ing{
			background-color:darkblue;
			color:white;
			width:100%;
			height:50px;
		}
	</style>


</head>
<body>
	<form runat="server">
    <div class="limiter">
		<div class="container-login100">
			
			<div class="wrap-login100">
				
				<div class="login100-pic js-tilt" data-tilt>
				<image src="https://i.imgur.com/tzrXZSz.jpg" width="240" alt="homepage" style="border-radius:8px;"></image>
<%--					<div id="animLog"></div>--%>
					<%--<img src="/LogInStyle/images/img-01.png" alt="IMG">--%>
				</div>

				
				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Ingresa
					</span>
					<h6 style="color:white">USUARIO:</h6><br />
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<%--<input class="input100" type="text" name="email" placeholder="Correo o usuario">--%>
						
                        <asp:TextBox ID="inp_usuario" CssClass="form-control input100" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>
					<h6 style="color:white">CONTRASEÑA:</h6><br />
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						
                        <asp:TextBox ID="inp_contraseña" CssClass="form-control input100" runat="server" TextMode="Password"></asp:TextBox>
					<%--	<input class="input100" type="password" name="pass" placeholder="contraseña">--%>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-key" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn" >
						<%--<button class="login100-form-btn" style="background-color:darkblue">
							Entra
						</button>--%>

                        <asp:Button ID="btn_ingresa"  CssClass="btn btn-default ing" runat="server" Text="Entra" OnClick="btn_ingresa_Click" />
					</div>

					<%--<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>--%>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Crea tu cuenta
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	</form>
    <!--===============================================================================================-->
   <%-- <script src="/LogInStyle/vendor/jquery/jquery-3.2.1.min.js"></script>--%>

	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>


    <!--===============================================================================================-->
<%--    <script src="/LogInStyle/vendor/animsition/js/animsition.min.js"></script>--%>
    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/bootstrap/js/popper.js"></script>
    <script src="/LogInStyle/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="/LogInStyle/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
   <%-- <script src="/LogInStyle/vendor/daterangepicker/moment.min.js"></script>
    <script src="/LogInStyle/vendor/daterangepicker/daterangepicker.js"></script>--%>
    <!--===============================================================================================-->
  <%--  <script src="/LogInStyle/vendor/countdowntime/countdowntime.js"></script>--%>
    <!--===============================================================================================-->
    <script src="/LogInStyle/js/main.js"></script>
	 <script src="/LogInStyle/js/lottie.js"></script>
	<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/4.13.0/bodymovin.min.js" type="text/javascript"></script>--%>
	<script type="text/javascript">


		$(document).ready(function () {

			LogLottie();

		});

		function LogLottie() {
            var animation = bodymovin.loadAnimation({
                container: document.getElementById('animLog'),
                renderer: 'svg',
                loop: true,
                autoplay: true,
                path: '/LogInStyle/images/LottieFiles/lap.json'
			})
        }

    </script>
</body>
</html>
