	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>

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
	background: #f5f5f5
}

.rounded {
	border-radius: 1rem
}

.nav-pills .nav-link {
	color: #555
}

.nav-pills .nav-link.active {
	color: white
}

input[type="radio"] {
	margin-right: 5px
}

.bold {
	font-weight: bold
}
</style>

	<div class="container py-5">
		<!-- For demo purpose -->
		<div class="row mb-4">
			<div class="col-lg-8 mx-auto text-center">
				<h1 class="display-6">Thanh toán</h1>
			</div>
		</div>
		<!-- End -->
		<div class="row">
			<div class="col-lg-6 mx-auto">
				<div class="card ">
					<div class="card-header">
						<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
							<!-- Credit card form tabs -->
							<ul role="tablist"
								class="nav bg-light nav-pills rounded nav-fill mb-3">
								<li class="nav-item"><a data-toggle="pill"
									href="#credit-card" class="nav-link active "> <i
										class="fa fa-credit-card mr-2"></i> Credit Card
								</a></li>
								<li class="nav-item"><a data-toggle="pill"
									href="#net-banking" class="nav-link "> <i
										class="fa fa-mobile mr-2"></i> Ngân hàng
								</a></li>
							</ul>
						</div>
						<!-- End -->
						<!-- Credit card form content -->
						<div class="tab-content">
							<!-- credit card info-->
							<div id="credit-card" class="tab-pane fade show active pt-3">
								<form role="form" action="checkout" metho="POST">
									<div class="form-group">
										<label for="username">
											<h6>Tên Tài Khoản</h6>
										</label> <input type="text" name="username"
											placeholder="Tên tài khoản" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="cardNumber">
											<h6>Mã Số Thẻ</h6>
										</label>
										<div class="input-group">
											<input type="text" name="cardNumber"
												placeholder="Mã số thẻ" class="form-control "
												required>
												<input type="text" name="paid" value=<%=true %> hidden>
												
											<div class="input-group-append">
												<span class="input-group-text text-muted"> <i
													class="fa fa-cc-visa mx-1"></i> <i
													class="fa fa-cc-mastercard mx-1"></i> <i
													class="fa fa-cc-amex mx-1"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-8">
											<div class="form-group">
												<label><span class="hidden-xs">
														<h6>Ngày Hết Hạn</h6>
												</span></label>
												<div class="input-group">
													<input type="number" placeholder="MM" name=""
														class="form-control" required> <input
														type="number" placeholder="YY" name=""
														class="form-control" required>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group mb-4">
												<label data-toggle="tooltip"
													title="Three digit CV code on the back of your card">
													<h6>
														CVV <i class="fa fa-question-circle d-inline"></i>
													</h6>
												</label> <input type="text" required class="form-control">
											</div>
										</div>
									</div>
									<div class="card-footer">
										<button class="subscribe btn btn-primary btn-block shadow-sm"
											type="submit">Xác Nhận Thanh Toán</button>
								</form>
							</div>
						</div>
						<!-- End -->
						<!-- bank transfer info -->
						<div id="net-banking" class="tab-pane fade pt-3">
							<div class="form-group ">
								<label for="Select Your Bank">
									<h6>Chọn ngân hàng</h6>
								</label> <select class="form-control" id="ccmonth">
									<option value="" selected disabled>Vui lòng chọn ngân hàng bạn đang sử dụng</option>
									<option>Vietinbank</option>
									<option>Vietcombank</option>
								
								</select>
							</div>
							<div class="form-group">
								<p>
									<button type="button" class="btn btn-primary ">
										<i class="fa fa-mobile mr-2"></i> Tiến hành hanh toán
									</button>
								</p>
							</div>
						</div>
						<!-- End -->
						<!-- End -->
					</div>
				</div>
			</div>
		</div>
</body>
</html>