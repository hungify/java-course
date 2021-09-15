<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String soThuNhat = request.getParameter("soThuNhat");
	String soThuHai = request.getParameter("soThuHai");
	%>
	<form action="maytinh.jsp" method="POST">
		Số thứ nhất: <input name="soThuNhat" type="number" required
			value="<%=soThuNhat%>"> Số thứ Hai: <input name="soThuHai"
			type="number" required value="<%=soThuHai%>">
		<div>
			<input type="submit" name="cong" value="Cộng"> <input
				type="submit" name="tru" value="Trừ"> <input type="submit"
				name="nhan" value="Nhân"> <input type="submit" name="chia"
				value="Chia">
		</div>
	</form>
	<div>

		<%
		if (soThuNhat != null && soThuHai != null) {
			long nSoThuNhat = Long.parseLong(soThuNhat);
			long nSoThuHai = Long.parseLong(soThuHai);
		%>
		<br>
		<%
		out.println("Số thứ nhất: " + soThuNhat);
		%>
		<br> <br>
		<%
		out.println("Số thứ hai: " + soThuHai);
		%>
		<br> <br>
		<%
		Long kq = (long) 0;

		if (request.getParameter("cong") != null) {
			kq = nSoThuNhat + nSoThuHai;
			out.print("Kết quả: " + nSoThuNhat + "+" + nSoThuHai + " = " + kq.toString());
		} else if (request.getParameter("tru") != null) {
			kq = nSoThuNhat - nSoThuHai;
			out.print("Kết quả: " + nSoThuNhat + "-" + nSoThuHai + " = " + kq.toString());
		} else if (request.getParameter("nhan") != null) {
			kq = nSoThuNhat * nSoThuHai;
			out.print("Kết quả: " + nSoThuNhat + "*" + nSoThuHai + " = " + kq.toString());
		} else {
			if (nSoThuHai == 0) {
				out.print("Không thể chia với số 0");
				return;
			}
			double kqChia = (double) nSoThuNhat / nSoThuHai;
			out.print("Kết quả: " + nSoThuNhat + "/" + nSoThuHai + " = " + kqChia);
		}
		%>
		<%
		}
		%>

	</div>
</body>
</html>