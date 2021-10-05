<%@page import="bean.KhachHangBean"%>
<%@page import="bo.KhachHangBo"%>
<%@page import="bean.LoaiBean"%>
<%@page import="bean.SachBean"%>
<%@page import="bo.LoaiBo"%>
<%@page import="bo.SachBo"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Style css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<title>Insert title here</title>
</head>
<body>




	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	SachBo sbo = new SachBo();
	LoaiBo lbo = new LoaiBo();
	ArrayList<SachBean> ds = sbo.getSach();

	String ml = request.getParameter("ml");
	String key = request.getParameter("txttk");
	if (ml != null)
	    ds = sbo.timMaLoai(ml);
	else if (key != null)
	    ds = sbo.timChung(key);

	//Login
	String tk = request.getParameter("txtUser");
	String mk = request.getParameter("txtPass");

	KhachHangBo khbo = new KhachHangBo();
	%>


	<div class="container-fuild">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">Trang chủ</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Giỏ
							hàng <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Thanh
							Toán</a></li>

					<li class="nav-item"><a class="nav-link" href="#">Lịch sử
							mua hàng</a></li>
				</ul>

				<ul class="navbar-nav ml-auto mr-2">
					<%
					if (request.getParameter("btn-login") != null) {
					    KhachHangBean kh = new KhachHangBean();
					    kh = khbo.kiemTraDN(tk, mk);
					    if (kh != null) {
					%>
					<li class="nav-item"><a class="nav-link" href="#">Chào
							mừng <%=kh.getHoTen()%> quay trở lại
					</a></li>
					<li class="nav-item"><a
						class="nav-link btn btn-sm btn-outline-secondary" href="#">Đăng
							xuất</a></li>
					<%
					} else {
					%>

					<li class="nav-item active"><a
						class="btn btn-sm btn-outline-secondary nav-link"
						data-target="#myModal" data-toggle="modal">Đăng nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>

					<%
					}
					} else {
					%>
					<li class="nav-item active"><a
						class="btn btn-sm btn-outline-secondary nav-link"
						data-target="#myModal" data-toggle="modal">Đăng nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
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
						<form action="menu.jsp" method="POST">
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
							<td><a href="menu.jsp?ml=<%=loai.getMaLoai()%>"> <%=loai.getTenLoai()%>
							</a></td>
						</tr>
						<%
						}
						%>
						<td>
							<form action="menu.jsp" method="GET">
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
										placeholder="Nhập thông tin cần tìm" name="txttk">
								</div>
								<div class="form-group mt-4">

									<button type="submit" class="btn btn-success" name="thongtinsv"
										placeholder="Nhập vào thông tin sinh viên">Tìm kiếm</button>

								</div>
							</form>
						</td>
					</table>
				</td>
				<td width="700">
					<table class="table">
						<tr>
							<h4>
								Có
								<%=ml != null ? sbo.demSach(ml) : ds.size()%>
								cuốn sách
							</h4>
							<td>
							<td>
								<div class="container">
									<div class="row">
										<%
										int n = ds.size();

										for (int i = 0; i < n; i++) {
										    SachBean s = ds.get(i);
										%>
										<div class="col-4 my-3">
											<img src="image_sach/<%=s.getAnh()%>">
											<div class="">
												<p><%=s.getTenSach()%></p>
												<p>
													<%=s.getTacGia()%>
												</p>
												<p><%=s.getGia()%>
													đ
												</p>
												<a href="giohang.jsp"> <img src="mua.jpg"></a>
											</div>
										</div>
										<%
										}
										%>
									</div>
								</div>
								</div>
							</td>
						</tr>
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