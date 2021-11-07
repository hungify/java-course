<%@page import="bean.KhachHangBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
	integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
	crossorigin="anonymous"></script>

</head>
<body>
	<style>
body {
	color: #fff;
	background: #19aa8d;
	font-family: 'Roboto', sans-serif;
	overflow: hidden;
}

.form-control {
	font-size: 15px;
}

.form-control, .form-control:focus, .input-group-text {
	border-color: #e1e1e1;
}

.form-control, .btn {
	border-radius: 3px;
}

.signup-form {
	width: 400px;
	margin: 0 auto;
	padding: 15px 0;
}

.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #fff;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 25px;
}

.signup-form h2 {
	color: #333;
	font-weight: bold;
	margin-top: 0;
}

.signup-form hr {
	
}

.signup-form .form-group {
	margin-bottom: 15px;
}

.signup-form label {
	font-weight: normal;
	font-size: 15px;
}

.signup-form .form-control {
	min-height: 38px;
	box-shadow: none !important;
}

.signup-form .input-group-addon {
	max-width: 42px;
	text-align: center;
}

.signup-form .btn, .signup-form .btn:active {
	font-size: 16px;
	font-weight: bold;
	background: #19aa8d !important;
	border: none;
	min-width: 140px;
}

.signup-form .btn:hover, .signup-form .btn:focus {
	background: #179b81 !important;
}

.signup-form a {
	color: #fff;
	text-decoration: underline;
}

.signup-form a:hover {
	text-decoration: none;
}

.signup-form form a {
	color: #19aa8d;
	text-decoration: none;
}

.signup-form form a:hover {
	text-decoration: underline;
}

.signup-form .fa {
	font-size: 21px;
}

.signup-form .fa-paper-plane {
	font-size: 18px;
}

.signup-form .fa-check {
	color: #fff;
	left: 17px;
	top: 18px;
	font-size: 7px;
	position: absolute;
}

#Modal style


.modal-login {
	width: 350px;
}

.modal-login .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
}

.modal-login .modal-header {
	border-bottom: none;
	position: relative;
	justify-content: center;
}

.modal-login .close {
	position: absolute;
	top: -10px;
	right: -10px;
}

.modal-login h4 {
	color: #636363;
	text-align: center;
	font-size: 26px;
	margin-top: 0;
}

.modal-login .modal-content {
	color: #999;
	border-radius: 1px;
	margin-bottom: 15px;
	background: #fff;
	border: 1px solid #f3f3f3;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 25px;
}

.modal-login .form-group {
	margin-bottom: 20px;
}

.modal-login label {
	font-weight: normal;
	font-size: 13px;
}

.modal-login .form-control {
	min-height: 38px;
	padding-left: 5px;
	box-shadow: none !important;
	border-width: 0 0 1px 0;
	border-radius: 0;
}

.modal-login .form-control:focus {
	border-color: #ccc;
}

.modal-login .input-group-addon {
	max-width: 42px;
	text-align: center;
	background: none;
	border-bottom: 1px solid #ced4da;
	padding-right: 5px;
	border-radius: 0;
}

.modal-login .btn, .modal-login .btn:active {
	font-size: 16px;
	font-weight: bold;
	background: #19aa8d !important;
	border-radius: 3px;
	border: none;
	min-width: 140px;
}

.modal-login .btn:hover, .modal-login .btn:focus {
	background: #179b81 !important;
}

.modal-login .hint-text {
	text-align: center;
	padding-top: 5px;
	font-size: 13px;
}

.modal-login .modal-footer {
	color: #999;
	border-color: #dee4e7;
	text-align: center;
	margin: 0 -25px -25px;
	font-size: 13px;
	justify-content: center;
}

.modal-login a {
	color: #fff;
	text-decoration: underline;
}

.modal-login a:hover {
	text-decoration: none;
}

.modal-login a {
	color: #19aa8d;
	text-decoration: none;
}

.modal-login a:hover {
	text-decoration: underline;
}

.modal-login .fa {
	font-size: 21px;
	position: relative;
	top: 6px;
}

p {
	margin-bottom: 10px !important;
}

.alert.alert-warning {
	margin-bottom: 0px !important;
}

hr {
	margin: 0.5rem 0;
}
</style>

	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	KhachHangBean kh = (KhachHangBean) request.getAttribute("exsitsCustomer");
	
	%>

	<div class="container-fuild">
		<div class="row">
			<div class="col">
				<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
					<a class="navbar-brand" href="home">Trang chủ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="nav-link" href="cart">Giỏ
									hàng <span class="badge badge-light rounded-circle"></span> <span
									class="sr-only">unread messages</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="payment">Thanh
									Toán</a></li>

							<li class="nav-item"><a class="nav-link"
								href="purchasehistory">Lịch sử mua hàng</a></li>
						</ul>

						<ul class="navbar-nav ml-auto mr-2">
							<li class="nav-item active"><a
								class="btn btn-sm btn-outline-secondary nav-link"
								data-target="#loginModal" data-toggle="modal">Đăng nhập</a></li>
						</ul>
					</div>
				</nav>

				<!-- Modal HTML -->
				<div id="loginModal" class="modal fade">
					<div class="modal-dialog modal-login">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Đăng nhập</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</div>
							<div class="modal-body">
								<form action="signin" method="post">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											<input type="text" class="form-control" name="username"
												placeholder="Tên đăng nhập" required="required">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock"></i></span>
											<input type="text" class="form-control" name="password"
												placeholder="Mật khẩu" required="required">
										</div>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block btn-lg">Đăng
											nhập</button>
									</div>
									<p class="hint-text">
										<a href="forgot">Quên mật khẩu?</a>
									</p>
								</form>
							</div>
							<div class="modal-footer">
								<a href="signup">Tao mới tài khoản</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="signup-form">
							<form action="signup" method="post" id="signup_form">
								<h2>Đăng ký</h2>
								<p>Vui lòng điền đây đủ các trường bên dưới!</p>
								<%
								if (kh != null) {
								%>
								<div class="alert alert-warning" role="alert">
									<%="Tên đăng nhập <strong>" + kh.getTenDangNhap() + "</strong> đã tồn tại."%>
									<br> Hãy thử lại với tên khác.
								</div>
								<%
								}
								%>

								<hr>

								<div class="form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <span
												class="fa fa-user-o"></span>
											</span>
										</div>

										<input type="text" class="form-control" name="fullname"
											placeholder="Họ và tên" required="required"
											value="<%=kh != null ? kh.getHoTen() : "" %>">
									</div>
								</div>


								<div class="form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <span
												class="fa fa-address-card-o"></span>
											</span>
										</div>
										<input type="text" class="form-control" name="address"
											placeholder="Địa chỉ" required="required"
											value="<%=kh != null ? kh.getDiaChi() : ""%>">
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <span
												class="fa fa-user"></span>
											</span>
										</div>
										<input type="text" class="form-control" name="username"
											placeholder="Tên đăng nhập" required="required" id="username">
									</div>
								</div>


								<div class="form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="fa fa-paper-plane"></i>
											</span>
										</div>
										<input type="email" class="form-control" name="email"
											placeholder="Địa chỉ email" required="required"
											value="<%=kh != null ? kh.getEmail() : ""%>">
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i class="fa fa-phone"></i>
											</span>
										</div>
										<input type="number" class="form-control" name="phone_number"
											placeholder="Số điện thoại" required="required"
											value="<%=kh != null ? kh.getSoDienThoai() : ""%>">
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i class="fa fa-lock"></i>
											</span>
										</div>
										<input type="password" class="form-control" name="password"
											id="password" placeholder="Mật khẩu" required="required">
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i class="fa fa-lock"></i>
												<i class="fa fa-check"></i>
											</span>
										</div>
										<input type="password" class="form-control"
											id="confirm_password" name="confirm_password"
											placeholder="Xác nhận mật khẩu" required="required">
									</div>
									<div role="alert" id="message" class="mt-2"></div>
								</div>

								<div class="form-group">
									<label class="form-check-label"><input type="checkbox"
										required="required"> Tôi đồng ý với các Điều khoản <a
										href="#"> </a> &amp; <a href="#">Điều kiện</a></label>

								</div>

								<div class="form-group d-flex justify-content-center">
									<button type="submit" class="btn btn-primary btn-lg"
										id="signup_submit">Đăng ký</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<script>
				$(document).ready(function() {
							function checkPasswordMatch() {
								var password = $("#password").val();
								var confirmPassword = $("#confirm_password").val();
								if (password != confirmPassword) {
									$("#message").html("Mật khẩu không khớp")
											.addClass("alert alert-warning");
									$("#signup_submit").attr("disabled","disabled");
								}
								else {
									$("#message").html("").removeAttr("class");
									$("#signup_submit").removeAttr("disabled");
								}

							}
							$(document).ready(function() {
								$("#confirm_password").keyup(checkPasswordMatch);
							});
						});
			</script>
</body>
</html>