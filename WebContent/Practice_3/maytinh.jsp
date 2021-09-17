<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%
	String soThuNhat = request.getParameter("soThuNhat");
	String soThuHai = request.getParameter("soThuHai");
	%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-4 mx-auto my-0">
				<form action="maytinh.jsp" method="POST">
					<div class="form-group">
						<label for="exampleInputPassword1">Số thứ nhất</label> <input
							name="soThuNhat" type="number" required value="<%=soThuNhat%>"
							class="form-control">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Số thứ hai</label> <input
							name="soThuHai" type="number" required value="<%=soThuHai%>"
							class="form-control">
					</div>


					<%
					if (soThuNhat != null && soThuHai != null) {
						long nSoThuNhat = Long.parseLong(soThuNhat);
						long nSoThuHai = Long.parseLong(soThuHai);
					%>

					<div>
						<p>
							Số thứ nhất:
							<%=nSoThuNhat%></p>
						<p>
							Số thứ nhất:
							<%=nSoThuHai%></p>
					</div>


					<%
					Long kq = (long) 0;

					if (request.getParameter("cong") != null) {
						kq = nSoThuNhat + nSoThuHai;
					%>
					<p>
						Kết quả:
						<%=nSoThuNhat%>
						+
						<%=nSoThuHai%>
						=
						<%=kq%></p>

					<%
					} else if (request.getParameter("tru") != null) {
					kq = nSoThuNhat - nSoThuHai;
					%>
					<p>
						Kết quả:
						<%=nSoThuNhat%>
						-
						<%=nSoThuHai%>
						=
						<%=kq%></p>

					<%
					} else if (request.getParameter("nhan") != null) {
					kq = nSoThuNhat * nSoThuHai;
					%>
					<p>
						Kết quả:
						<%=nSoThuNhat%>
						*
						<%=nSoThuHai%>
						=
						<%=kq%></p>

					<%
					} else {
					if (nSoThuHai == 0) {
					%>
					<p class="text-danger">Không thể thực hiện phép chia với số 0</p>

					<%
					} else {

					double kqChia = (double) nSoThuNhat / nSoThuHai;
					%>
					<p>
						Kết quả:
						<%=nSoThuNhat%>
						/
						<%=nSoThuHai%>
						=
						<%=kqChia%></p>
					<%
					}
					}
					}
					%>



					<div class="form-group mt-4">
						<button type="submit" class="btn btn-primary" name="cong"
							value="Cộng">Cộng</button>
						<button type="submit" class="btn btn-success" name="tru"
							value="Trừ">Trừ</button>
						<button type="submit" class="btn btn-info" name="nhan"
							value="Nhân">Nhân</button>
						<button type="submit" class="btn btn-warning" name="chia"
							value="Chia">Chia</button>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>