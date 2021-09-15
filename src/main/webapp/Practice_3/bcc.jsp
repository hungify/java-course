<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String input = request.getParameter("numberInput");
	%>
	<form action="bcc.jsp" method="POST">
		Bảng cửu chương <input name="numberInput" type="number" required
			value="<%=input%>" min="2" max="9">
		<div>
			<input type="submit" name="xem" value="Xem">
		</div>
	</form>
	<%
	if (input != null) {
	%>
	<%
	int nInput = Integer.parseInt(input);
	%>
	<table class="table table-striped table-hover">
		<thead class="table-success">
			<tr class="table-success">


				<th>Bảng cửu chương: <%=input%>
				</td>

			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 2; i < 10; i++) {
			%>
			<tr>
				<td><%=input%> x <%=i%> = <%=nInput * i%></td>
			</tr>
			<%
			}
			%>
			<%
			}
			%>

		</tbody>
	</table>


</body>
</html>