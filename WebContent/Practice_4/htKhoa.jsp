<%@page import="bean.SinhVienBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.SinhVienBo"%>
<%@page import="bean.KhoaBean"%>
<%@page import="bo.KhoaBo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>




	<%
	KhoaBo kbo = new KhoaBo();
	SinhVienBo svbo = new SinhVienBo();
	ArrayList<SinhVienBean> dssv = svbo.getSinhVien();

	String maKhoa = request.getParameter("maKhoa");
	ArrayList<SinhVienBean> dssvMaKhoa = svbo.Tim(maKhoa);
	%>
	<div class="container">

		<table class="table">
			<thead>
				<tr>
					<th scope="col">Menu</th>
					<th scope="col" class="text-center">Tất cả sinh viên</th>
				</tr>
			</thead>
			<tr>
				<td valign="top" width="200">
					<%
					for (KhoaBean k : kbo.getKhoa()) {
					%> <a href="htKhoa.jsp?mk=<%=k.getMaKhoa()%>"> <%=k.getTenKhoa()%></a>
					<hr> <%
 }
 %>
					<div>
						<form method="POST" action="htKhoa.jsp">
							<div class="form-group">
								<label for="exampleInputPassword1">Tìm kiếm Sinh Viên</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Nhập vào mã khoa" name="maKhoa">
							</div>

							<button type="submit" class="btn btn-primary">Tìm</button>
						</form>
					</div>
				</td>
				<td valign="top" width="600">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Mã sinh viên</th>
								<th scope="col">Tên sinh viên</th>
								<th scope="col">Địa chỉ</th>
								<th scope="col">Điểm trung bình</th>
								<th scope="col">Mã khoa</th>
							</tr>
						</thead>


						<%
						if (maKhoa != null && dssvMaKhoa.size() > 0) {
						    for (SinhVienBean sv : dssvMaKhoa) {
						%>

						<tr>
							<td><%=sv.getMaSV()%></td>
							<td><%=sv.getHoTen()%></td>
							<td><%=sv.getDiaChi()%></td>
							<td><%=sv.getDtb()%></td>
							<td><%=sv.getMaKhoa()%></td>
						</tr>
						<%
						}

						} else {

						for (SinhVienBean sv : dssv) {
						%>

						<tr>
							<td><%=sv.getMaSV()%></td>
							<td><%=sv.getHoTen()%></td>
							<td><%=sv.getDiaChi()%></td>
							<td><%=sv.getDtb()%></td>
							<td><%=sv.getMaKhoa()%></td>
						</tr>
						<%
						}
						}
						%>
					</table>
		</table>

	</div>

</body>
</html>