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
	request.setCharacterEncoding("UTF-8");
	KhoaBo kbo = new KhoaBo();
	SinhVienBo svbo = new SinhVienBo();
	ArrayList<SinhVienBean> dssv = svbo.getSinhVien();
	String inputAll = null;
	
	if (request.getParameter("inputAll") != null) {
	    inputAll = request.getParameter("inputAll");
	}
	
	String mk = request.getParameter("mk");
	if(mk != null) dssv = svbo.Tim(mk);
	ArrayList<SinhVienBean> dssvThongtin = svbo.TimChung(inputAll);
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
							<button type="submit" class="btn btn-primary my-2" name="tatcasv">Lấy
								tất cả sinh viên</button>
							<div class="form-group">
								<label for="exampleInputPassword1"> <%
									 if (inputAll != null && inputAll != "") {
									 %> Kết quả tìm cho  <%=inputAll%> <%
									 } else {
									 %> Tìm kiếm Sinh Viên <%
									 }
									 %>
								</label> <input type="text" class="form-control"
									placeholder="Nhập vào đây" name="inputAll" value="">
							</div>
							<div class="form-group mt-4">

								<button type="submit" class="btn btn-success" name="thongtinsv" placeholder="Nhập vào thông tin sinh viên">Tìm
									kiếm</button>

							</div>

						</form>
					</div>
				</td>
				<td valign="top" width="600">
					<table class="table text-center">
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
						if (dssvThongtin.size() > 0 && request.getParameter("thongtinsv") != null) {

						for (SinhVienBean sv : dssvThongtin) {
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