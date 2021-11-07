

<%@page import="bo.GioHangBo"%>
<%@page import="bean.GioHangBean"%>
<%@page import="bean.KhachHangBean"%>


<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lịch sử mua hàng</title>
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
	overflow-x: hidden;
}

.row.card-wrap:not(:first-child) {
	margin-top: 15px;
}

p {
	font-size: 14px;
	margin-bottom: 7px
}

.small {
	letter-spacing: 0.5px !important
}

.card-1 {
	box-shadow: rgba(0, 0, 0, 0.04) 0px 3px 5px;
}

hr {
	background-color: rgba(248, 248, 248, 0.667)
}

.bold {
	font-weight: 500
}

.card-2 {
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 0px 1px;
}

.fa-circle.active {
	font-size: 8px;
	color: #AB47BC
}

.fa-circle {
	font-size: 8px;
	color: #aaa
}

.rounded {
	border-radius: 2.25rem !important
}

.progress-bar {
	background-color: #AB47BC !important
}

.progress {
	height: 5px !important;
	margin-bottom: 0
}

.invoice {
	position: relative;
	top: -70px
}

.Glasses {
	position: relative;
	top: -12px !important
}

.card-footer {
	background-color: #AB47BC;
	color: #fff
}

h2 {
	color: rgb(78, 0, 92);
	letter-spacing: 2px !important
}

.display-3 {
	font-weight: 500 !important
}

@media ( max-width : 479px) {
	.invoice {
		position: relative;
		top: 7px
	}
	.border-line {
		border-right: 0px solid rgb(226, 206, 226) !important
	}
}

@media ( max-width : 700px) {
	h2 {
		color: rgb(78, 0, 92);
		font-size: 17px
	}
	.display-3 {
		font-size: 28px;
		font-weight: 500 !important
	}
}

.card-footer small {
	letter-spacing: 7px !important;
	font-size: 12px
}

.border-line {
	border-right: 1px solid rgb(226, 206, 226)
}

img {
	object-fit: cover;
}
</style>

	<%
	ArrayList<GioHangBean> listOrderHistory = (ArrayList<GioHangBean>) request.getAttribute("orderHistory");
	int size = 0;
	if (session.getAttribute("giohang") != null) {
	    GioHangBo ghbo = new GioHangBo();

	    ghbo = (GioHangBo) session.getAttribute("giohang");

	    size = ghbo.ds.size();
	}
	%>

	<div class="container-fuild">
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
							hàng <span class="badge badge-light rounded-circle"><%=size%></span>
							<span class="sr-only">unread messages</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="payment">Thanh
							Toán</a></li>

					<li class="nav-item"><a class="nav-link" href="order-history">Lịch
							sử mua hàng</a></li>
				</ul>

				<ul class="navbar-nav ml-auto mr-2">
					<%
					KhachHangBean kh = (KhachHangBean) session.getAttribute("auth");
					%>
					<li class="nav-item"><a class="nav-link" href="profile">Chào
							mừng <%=kh.getHoTen()%>
					</a></li>
					<form action="signin?logout=<%=true%>" method="POST">
						<li class="nav-item"><button
								class="nav-link btn btn-sm btn-outline-secondary" href="signin">Đăng
								xuất</button></li>
					</form>
				</ul>
			</div>
		</nav>
		<div class="row my-5 d-flex justify-content-center">
			<div class="col col-8">
				<div class="card card-1">
					<div class="card-header bg-white">
						<div
							class="media flex-sm-row flex-column-reverse justify-content-between ">
							<div class="col my-auto">
								<h4 class="mb-0">Cảm ơn quý khách đã mua hàng !</h4>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="row justify-content-between mb-3">
							<div class="col-auto">
								<h6 class="color-1 mb-0 text-info">Lịch sử mua hàng</h6>
							</div>
							<div class="col-auto ">
								<small>Mã đơn hàng : </small>
							</div>
						</div>
						<%
						for (GioHangBean gh : listOrderHistory) {
						%>
						<div class="row card-wrap">
							<div class="col">
								<div class="card card-2">
									<div class="card-body">
										<div class="media">
											<div class="sq align-self-center">
												<img
													class="my-auto align-self-center mr-2 mr-md-4 pl-0 p-0 m-0"
													src="<%=gh.getAnh() == null ? "https://picsum.photos/200/300" : gh.getAnh()%>"
													width="135" height="135" />
											</div>
											<div class="media-body my-auto text-right">
												<div class="row my-auto flex-column flex-md-row">
													<div class="col my-auto text-left">
														<h6 class="mb-0"><%=gh.getTenSach()%></h6>

													</div>
													<div class="col-auto my-auto">
														<p class="mb-0 text-muted"><%=gh.getTacGia()%> </p>
													</div>
													<div class="col-2">
														<small>Số lượng: <%=gh.getSoLuong()%></small>
													</div>

													<div class="col-2">
														<h6 class="mb-0"><%=gh.getThanhTien()%>
															đ
														</h6>
													</div>
												</div>
											</div>
										</div>
										<hr class="my-3 ">
										<div class="row">
											<div class="col-md-3 mb-3"></div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<%
						}
						%>


					</div>
				</div>
			</div>
		</div>
</body>
</html>