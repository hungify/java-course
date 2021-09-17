
<%@page import="java.util.Calendar"%>
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
	Calendar c = Calendar.getInstance();
	int day = c.get(Calendar.DAY_OF_MONTH);
	int month = c.get(Calendar.MONTH) + 1;
	int year = c.get(Calendar.YEAR);
	%>

	<div align="right" class="mt-5">
		Hôm này là ngày
		<%=day%>
		-
		<%=month%>
		-
		<%=year%>
	</div>


	<div class="container mt-2">
		<form method="get" action="ketqua.jsp">
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="month">Chọn Ngày</label> <select class="custom-select"
						name="day">
						<%
						for (int i = 0; i < day; i++) {
						%>

						<option value="<%=i + 1%>" >
							<%=i + 1%>
						</option>
						<%
						}
						%>
					</select>
				</div>
				<div class="col-md-4 mb-3">
					<label for="month">Chọn Tháng</label> <select class="custom-select"
						name="month">
						<%
						for (int i = 0; i < 12; i++) {
						%>

						<option value="<%=i + 1%>">
							<%=i + 1%>
						</option>
						<%
						}
						%>
					</select>
				</div>
				<div class="col-md-4 mb-3">
					<label for="month">Chọn Năm</label> <select class="custom-select"
						name="year">
						<%
						for (int i = year; i >= year - 10; i--) {
						%>

						<option value="<%=i%>">
							<%=i %>
						</option>
						<%
						}
						%>
					</select>
				</div>
			</div>
			<div class="text-center mt-5">
			<button class="btn btn-primary" type="submit">Xem</button>
			</div>
		</form>

	</div>

	
</body>
</html>