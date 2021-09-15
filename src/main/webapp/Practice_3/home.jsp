
<%@page import="java.util.Calendar"%>
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
	Calendar c = Calendar.getInstance();
	int day = c.get(Calendar.DAY_OF_MONTH);
	int month = c.get(Calendar.MONTH) + 1;
	int year = c.get(Calendar.YEAR);
	%>

	<div align="right">
		Hôm này là ngày
		<%=day%>
		-
		<%=month%>
		-
		<%=year%>

	</div>
	<div>


		Chọn ngày: <select name="sngay">
			<%
			for (int i = 1; i <= 31; i++) {
			%>

			<option value="<%=i%>" <%= ((i==day) ? "selected" : "") %>>
				<%=i%>
			</option>

			<%
			}
			%>
		</select> Chọn năm <select name="sthang">
			<%
			for (int i = 1; i <= month; i++) {
			%>
			<%
			if (i == month) {
			%>
			<option value="<%=i%>">
				<%=i%>
			</option>
			<%
			}
			%>
			<%
			}
			%>
		</select> Chọn năm <select name="sname">
			<%
			for (int i = year; i >= year - 10; i--) {
			%>

			<option value="<%=i%>">
				<%=i%>
			</option>
			<%
			}
			%>
		</select>
</body>
</html>