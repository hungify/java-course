<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="RandomNumber.RandomNumber"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="./assets/css/style.css">
<link>
<title>Insert title here</title>
</head>


<body>
	<%
	Calendar c = Calendar.getInstance();
	int dayc = c.get(Calendar.DAY_OF_MONTH);
	int monthc = c.get(Calendar.MONTH) + 1;
	int yearc = c.get(Calendar.YEAR);
	
	String day = request.getParameter("day");
	String month = request.getParameter("month");
	String year = request.getParameter("year");
	String submit = request.getParameter("submit");
	RandomNumber r = new RandomNumber();

	%>

	<div class="container">
		<div align="center" class="mt-5"></div>

		<table class="table table-striped table-hover">
			<thead class="table-info">
				<tr>
					<th scope="col">Giải</th>
					<th class="text-center">Xổ số Miền Bắc ngày <%=day%> - <%=month%> - <%=year%></th>
				</tr>
			</thead>
			<tbody>


				<tr>
					<th scope="row">7</th>
					<td class="flex"><span class="number"> <%=r.random(10)%>
					</span> <span class="number"> <%=r.random(10)%>
					</span> <span class="number"> <%=r.random(10)%>
					</span> <span class="number"> <%=r.random(10)%>
					</span></td>

				</tr>
				<tr>
					<th scope="row">6</th>
					<td class="flex"><span class="number"> <%=r.random(100)%>
					</span> <span class="number"> <%=r.random(100)%>
					</span> <span class="number"> <%=r.random(100)%>
					</span></td>


				</tr>

				<th scope="row">5</th>
				<td class="flex wrap-3"><span class="number width-3"> <%=r.random(1000)%>
				</span> <span class="number width-3"> <%=r.random(1000)%>
				</span> <span class="number width-3"> <%=r.random(1000)%>
				</span><span class="number width-3"> <%=r.random(1000)%>
				</span> <span class="number width-3"> <%=r.random(1000)%>
				</span> <span class="number width-3"> <%=r.random(1000)%>
				</span></td>



				</tr>
				<th scope="row">4</th>
				<td class="flex"><span class="number"> <%=r.random(100)%>
				</span> <span class="number"> <%=r.random(1000)%>
				</span> <span class="number"> <%=r.random(1000)%>
				</span> <span class="number"> <%=r.random(1000)%>
				</span></td>

				</tr>

				<th scope="row">3</th>
				<td class="flex wrap-3"><span class="number width-3"> <%=r.random(10000)%>
				</span> <span class="number width-3"> <%=r.random(10000)%>
				</span> <span class="number width-3"> <%=r.random(10000)%>
				</span><span class="number width-3"> <%=r.random(10000)%>
				</span> <span class="number width-3"> <%=r.random(10000)%>
				</span> <span class="number width-3"> <%=r.random(10000)%>
				</span></td>

				</tr>
				<th scope="row">2</th>
				<td class="flex"><span class="number"> <%=r.random(10000)%>
				</span> <span class="number"> <%=r.random(10000)%>
				</span></td>

				</tr>
				<th scope="row">1</th>
				<td class="flex"><span class="number"> <%=r.random(10000)%>
				</span></td>

				</tr>
				<tr class="table-primary">
					<th scope="row">DB</th>
					<td class="flex"><span class="number text-danger"> <%=r.random(1000000)%>
					</span></td>

				</tr>
			</tbody>

		</table>

	</div>
</body>
</html>
