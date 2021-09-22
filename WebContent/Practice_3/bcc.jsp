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
	out.print(input);
	%>
	<div class="conatainer mt-5">
		<div class="row">
			<div class="col-2 mx-auto my-0">
				<form action="bcc.jsp" method="POST">
					<div class="form-group">
						<label for="exampleInputPassword1">Bảng cửu chương</label> <input
							name="numberInput" type="number" required value="<%=input == null ? "" : input%>"
							min="2" max="9" class="form-control">
					</div>
					<div class="text-center">
						<input type="submit" name="xem" value="Xem" class="btn-primary">
					</div>
				</form>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-4 mx-auto my-0">
				<%
				if (input != null) {
				%>
				<%
				int nInput = Integer.parseInt(input);
				%>
				<table class="table table-striped table-hover text-center">
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
			</div>
		</div>
	</div>



</body>
</html>