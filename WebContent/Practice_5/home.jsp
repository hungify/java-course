<%@page import="bo.GioHangBo"%>
<%@page import="bean.KhachHangBean"%>
<%@page import="bean.LoaiBean"%>
<%@page import="bean.SachBean"%>

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

	ArrayList<SachBean> dssach = (ArrayList<SachBean>) request.getAttribute("dssach");
	ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");
	int size = 0;
	if (session.getAttribute("giohang") != null) {
		GioHangBo ghbo = new GioHangBo();

		ghbo = (GioHangBo) session.getAttribute("giohang");

		size = ghbo.ds.size();
	}

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
							hàng <span class="badge badge-light rounded-circle"><%=size %></span> <span
							class="sr-only">unread messages</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="payment">Thanh
							Toán</a></li>

					<li class="nav-item"><a class="nav-link"
						href="purchasehistory">Lịch sử mua hàng</a></li>
				</ul>

				<ul class="navbar-nav ml-auto mr-2">
					<%
					KhachHangBean kh = (KhachHangBean) session.getAttribute("auth");
					int flagAuth;

					if (kh != null) {
					%>
					<li class="nav-item"><a class="nav-link" href="profile">Chào
							mừng <%=kh.getHoTen()%>
					</a></li>
					<form action="signin?logout=<%=true%>" method="POST">
						<li class="nav-item"><button
								class="nav-link btn btn-sm btn-outline-secondary" href="signin">Đăng
								xuất</button></li>
					</form>
					<%
					} else {
					if (session.getAttribute("flag_auth") == null) {
						flagAuth = 0;
					} else {
						flagAuth = (int) session.getAttribute("flag_auth");
					}

					if (flagAuth == 1) {
					%>
					<script>
						alert('Thông tin tài khoản mật khẩu không chính xác');
					</script>
					<%
					}
					%>
					<li class="nav-item active"><a
						class="btn btn-sm btn-outline-secondary nav-link"
						data-target="#myModal" data-toggle="modal">Đăng nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="signup">Đăng
							ký</a></li>
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
								type="submit" name="btn-login">Đăng nhập</button>

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
						for (LoaiBean loai : dsloai) {
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
									</label> <input type="text" class="form-control" placeholder="Tìm kiếm"
										name="txttk">
								</div>
								<div class="form-group mt-4">
									<button type="submit" class="btn btn-success">Tìm kiếm</button>

								</div>
							</form>
						</td>
					</table>
				</td>
				<td width="700">
					<table class="table">
						<tr>
							<h4>
								<%
								int n = dssach.size();
								%>
								Có
								<%=n%>
								cuốn sách
							</h4>
							<td>
							<td>
								<div class="container">
									<div class="row">
										<%
										for (int i = 0; i < n; i++) {
										    SachBean s = dssach.get(i);
										%>
										<div class="col-4 my-3">
											<a
												href="cart?order=<%=true%>&ms= <%=s.getMaSach()%>&ts=<%=s.getTenSach()%>
												&tg=<%=s.getTacGia()%> &gia=<%=s.getGia()%>
												&anh=<%=s.getAnh()%>">
												<img src="image_sach/<%=s.getAnh()%>">
											</a>
											<div class="">
												<p><%=s.getTenSach()%></p>
												<p>
													<%=s.getTacGia()%>
												</p>
												<p><%=s.getGia()%>
													đ
												</p>
												<a
													href="cart?order=<%=true%>&ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGia()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
													<img src="image_sach/mua.jpg">
												</a>
											</div>
										</div>
										<%
										}
										%>
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