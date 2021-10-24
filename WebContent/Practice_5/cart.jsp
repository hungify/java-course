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
<html>
<head>
<meta charset="UTF-8">
<!-- Style css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">


<title>Insert title here</title>
</head>
<body>




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

	ArrayList<SachBean> dssach = (ArrayList<SachBean>) request.getAttribute("dssach");
	ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");
	
	String key = (String) request.getAttribute("timkiemsach");

	%>




	<div class="container-fuild">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
							hàng <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="payment">Thanh
							Toán</a></li>

					<li class="nav-item"><a class="nav-link" href="purchasehistory">Lịch sử
							mua hàng</a></li>
				</ul>

				<ul class="navbar-nav ml-auto mr-2">
					<%
					KhachHangBean kh = (KhachHangBean) session.getAttribute("auth");

					if (kh != null) {
					%>
					<li class="nav-item"><a class="nav-link" href="#">Chào
							mừng <%=kh.getHoTen()%>
					</a></li>
					<form action="ktdn.jsp" method="POST">
						<li class="nav-item"><button
								class="nav-link btn btn-sm btn-outline-secondary" href="signin?logout=true">Đăng
								xuất</button></li>
					</form>
					<%
					}
					%>

				</ul>
			</div>
		</nav>
		<!-- The Modal -->
		<div class="modal" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content rounded-8 shadow">

					<!-- Modal Header -->
					<div class="modal-header p-3 pb-2 border-bottom-0">
						<h2 class="fw-bold mb-0">Đăng nhập</h2>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body p-3 pt-0">
						<form action="signin" method="POST">
							<div class="row mb-3">
								<label for="date" class="col-sm-3 col-form-label">User
									name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control rounded-4"
										name="txtUser" placeholder="Nhập vào tên đăng nhập">
								</div>
							</div>

							<div class="row mb-3">
								<label for="password" class="col-sm-3 col-form-label">Password</label>
								<div class="col-sm-9">
									<input type="password" class="form-control rounded-4"
										name="txtPass" id="password" placeholder="Nhập vào passowrd">
								</div>
							</div>


							<button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"
								type="submit" name="btn-login">Sign up</button>

						</form>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				</div>
			</div>
		</div>

		<table class="table">

			<tr>
				<td valign="top" width="100">
					<table class="table">
						<%
						for (LoaiBean loai : lbo.getLoai()) {
						%>
						<tr>
							<td><a href="home?ml=<%=loai.getMaLoai()%>"> <%=loai.getTenLoai()%>
							</a></td>
						</tr>
						<%
						}
						%>
						<td>
							<form action="home" method="GET">
								<div class="form-group">
									<label for="exampleInputPassword1"> <%
 if (key != null) {
 %>
										<p>
											Kết quả tìm cho
											<%=key%>
										</p> <%
 } else {
 %> Tìm kiếm Sách <%
 }
 %>
									</label> <input type="text" class="form-control"
										placeholder="Tìm kiếm" name="txttk">
								</div>
								<div class="form-group mt-4">

									<button type="submit" class="btn btn-success"
										>Tìm kiếm</button>

								</div>
							</form>
						</td>
					</table>
				</td>
				<td width="700">
					<table class="table">
						<tr>
							<h4>Giỏ hàng của bạn</h4>

							<%
							if (session.getAttribute("giohang") != null) {
							    GioHangBo ghbo = new GioHangBo();
							    
							    ghbo = (GioHangBo) session.getAttribute("giohang");
							    
							    int size = ghbo.ds.size();

							    for (int i = 0; i < size; i++) {
								GioHangBean g = ghbo.ds.get(i);
							%>
							<td valign="top" class="text-center"><img
								src="image_sach/<%=g.getAnh()%>" class="img-thumbnail w-100"></td>
							<td>
								<p class="d-inline"><%=g.getTenSach()%>
									-
								<p class="d-inline"><%=g.getTacGia()%>
								<p>
									Giá bán:
									<%= g.getGia() %>
									đ x 
									<%= g.getSoLuong() %>
								<form action="cart?upms=<%=g.getMaSach()%>">
									<input type="number" class="width-50"
										value="<%=g.getSoLuong()%>" name="upsl" min="1" /> <input
										type="hidden" class="width-50" value="<%=g.getMaSach()%>"
										
										name="upms" /> <input type="submit" value="Cập nhật"
										name="up">
								</form> <a href="cart?delms=<%=g.getMaSach()%>">Xoá khỏi giỏ
									hàng</a>
								</p>
							</td>
						</tr>
						<%
						}
						%>
						<tr>
							<td valign="top" width="180px" height="50px"><p>
									Tổng cộng:
									<%=ghbo.tongTien()%>
									đ
								</p></td>

						</tr>
						<%
						} else {
						%>
						<div class="row mt-5">
							<div class="col text-center mt-5">
								<h3  class="text-muted mb-5">Giỏ hàng trống</h3>
								<a href="home">Mua sắm ngay</a>
							</div>
							
						</div>
						<%
						}
						%>
					</table>

				</td>
		</table>
	</div>
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
