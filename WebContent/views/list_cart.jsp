<%@page import="bean.GioHangBean"%>
<%@page import="bo.GioHangBo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.KhachHangBean"%>
<%@page import="bo.KhachHangBo"%>
<%@page import="bean.LoaiBean"%>
<%@page import="bean.SachBean"%>
<%@page import="bo.LoaiBo"%>
<%@page import="bo.SachBo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8" />

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


<link rel="stylesheet" href="./css/cart.css" />
</head>

<style>
.number-input.number-input {
	border: 1px solid #ced4da !important;
	border-radius: 0.25rem !important;
	display: flex;
}

.skin-light .number-input.number-input button {
	width: 2.5rem;
	height: 2rem;
}

a {
	text-decoration: none !important;
}

.skin-light-2 .number-input.number-input input[type=number] {
	max-width: 3rem;
	padding: 0.5rem;
	border: 1px solid #ced4da;
	border-width: 0 1px;
	font-size: 1rem;
	height: 2rem;
	color: #495057;
}

.skin-light-2 .number-input.number-input button:before, .skin-light-2 .number-input.number-input button:after
	{
	width: 0.7rem;
	background-color: #495057;
}

.skin-light-2 .number-input button:before, .skin-light-2 .number-input button:after
	{
	display: inline-block;
	position: absolute;
	content: '';
	height: 2px;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.skin-light-2 .number-input.number-input button:before, .skin-light-2 .number-input.number-input button:after
	{
	width: 0.7rem;
	background-color: #495057;
}

.skin-light-2 .number-input button:before, .skin-light-2 .number-input button:after
	{
	display: inline-block;
	position: absolute;
	content: '';
	height: 2px;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.skin-light-2 .number-input.number-input input[type=number] {
	max-width: 4rem;
	padding: 0.5rem;
	border: 1px solid #ced4da;
	border-width: 0 1px;
	font-size: 1rem;
	height: 2rem;
	color: #495057;
}

.skin-light-2 .number-input input[type=number] {
	text-align: center;
}

.skin-light-2 .number-input.number-input button:before, .skin-light-2 .number-input.number-input button:after
	{
	width: 0.7rem;
	background-color: #495057;
}

.skin-light-2 .number-input button:before, .skin-light-2 .number-input button:after
	{
	display: inline-block;
	position: absolute;
	content: '';
	height: 2px;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.skin-light-2 .number-input button.plus:after {
	-webkit-transform: translate(-50%, -50%) rotate(90deg);
	transform: translate(-50%, -50%) rotate(90deg);
}

.skin-light-2 .number-input button:before, .skin-light-2 .number-input button:after
	{
	display: inline-block;
	position: absolute;
	content: '';
	height: 2px;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.skin-light-2 .number-input.number-input button {
	width: 2.5rem;
}

.skin-light-2 .number-input button {
	-webkit-appearance: none;
	background-color: transparent;
	border: none;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	cursor: pointer;
	margin: 0;
	position: relative;
}

.navbar.navbar-dark .breadcrumb .nav-item.active>.nav-link, .navbar.navbar-dark .navbar-nav .nav-item.active>.nav-link
	{
	background: none;
}

.scroll.card-body {
	max-height: 500px;
	overflow-y: scroll;
}

.shadow-2 {
	box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px
		6px;
}
</style>

<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
SachBo sbo = new SachBo();
LoaiBo lbo = new LoaiBo();
ArrayList<SachBean> ds = sbo.getSach();

//Xoá
String msxoa = request.getParameter("delms");
//Cập nhật
String upsl = request.getParameter("upsl");
String upms = request.getParameter("upms");
%>




<body class="skin-light-2">
	<!--Main layout-->
	<main>
		<div class="container">
			<%
			if (session.getAttribute("giohang") != null) {
			    GioHangBo ghbo = new GioHangBo();

			    ghbo = (GioHangBo) session.getAttribute("giohang");

			    int size = ghbo.ds.size();
			%>
			<!--Section: Block Content-->
			<section class="mt-3 mb-4">
				<!--Grid row-->
				<div class="row">
					<!--Grid column-->
					<div class="col-lg-8">
						<!-- Card -->

						<div class="card wish-list mb-4">
							<h5 class="p-2 shadow-2">
								Giỏ hàng của bạn có (<span><%=size%></span> sản phẩm)
							</h5>
							<div class="card-body scroll">
								<%
								for (int i = 0; i < size; i++) {
								    GioHangBean g = ghbo.ds.get(i);
								%>
								<div class="row mb-4">
									<div class="col-md-5 col-lg-3 col-xl-3">
										<div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
											<img class="rounded mx-auto d-block w-75 h-100"
												src="<%=g.getAnh().compareTo("null") == 0 ? "https://picsum.photos/200/300" : g.getAnh()%>"
												alt="Sample" />
										</div>
									</div>
									<div class="col-md-7 col-lg-9 col-xl-9">
										<div>
											<div class="d-flex justify-content-between">
												<div class="col">
													<h5><%=g.getTenSach()%></h5>
													<p class="mb-3 text-muted text-uppercase small"><%=g.getTacGia()%></p>
												</div>
												<div>
													<form action="cart">
														<div
															class="def-number-input number-input safari_only mb-0 w-100">
															<input class="quantity" min="1"
																value="<%=g.getSoLuong()%>" name="upsl" type="number" />

															<input type="hidden" class="width-50"
																value="<%=g.getMaSach()%>" name="upms" />
														</div>

														<button type="submit"
															class="btn btn-primary btn-block waves-effect waves-light mt-3">Cập
															nhật</button>
													</form>

												</div>
											</div>
											<div
												class="d-flex justify-content-between align-items-center">
												<div>
													<a href="cart?delms=<%=g.getMaSach()%>" type="button"
														class="card-link-secondary small text-uppercasemr-3"><i
														class="fa fa-trash mr-1"></i> Xoá sản phẩm </a>
												</div>
												<p class="p-4 m-0">
													<span><strong><%=g.getThanhTien()%> đ</strong></span>
												</p>
											</div>
										</div>
									</div>
								</div>
								<hr class="mb-4" />
								<%
								}
								%>
							</div>
						</div>

						<!-- Card -->

						<!-- Card -->
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-4">
						<!-- Card -->
						<div class="card mb-4">
							<h5 class="p-2 shadow-2">Thanh toán</h5>
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<li
										class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
										Số lượng <span><%=ghbo.totalQuanity()%></span>
									</li>

									<li
										class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
										Tạm tính <span><%=ghbo.tongTien()%> đ</span>
									</li>


									<li
										class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
										<div>
											<strong>Thành tiền</strong> <strong>
												<p class="mb-0">(đã bao gồm VAT)</p>
											</strong>
										</div> <span><strong><%=ghbo.tongTien()%> đ</strong></span>
									</li>
								</ul>

								<a href="payment"
									class="btn btn-primary btn-block waves-effect waves-light">
									Tiến hành thanh toán</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!--Section: Block Content-->
			<%
			} else {
			%>

			<div class="row mt-5">
				<div class="col text-center mt-5">
					<h3 class="text-muted mb-5">Giỏ hàng trống</h3>
					<a href="home">Mua sắm ngay</a>
				</div>
			</div>
			<%
			}
			%>


		</div>
	</main>
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
