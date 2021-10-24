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
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	%>

	<%=session.getAttribute("alo")%>
	<%
	//String[] ds = (String[]) request.getAttribute("ds");
	
	//for (String t : ds)
	//    out.print(t + "<hr>");
	
	long kq = (long) 0;
	String nSoThuNhat = (String)request.getAttribute("SoThuNhat");
	String nSoThuHai = (String)request.getAttribute("SoThuHai");
	if (request.getAttribute("kq") != null)
	    kq = (long) request.getAttribute("kq");
		
	%>
	
	<div class="container mt-5">
		<div class="row">
			<div class="col-4 mx-auto my-0">
				<form action="hello" method="POST">
					<div class="form-group">
						<label for="exampleInputPassword1">Số thứ nhất</label> <input
							name="soThuNhat" type="number" value="<%=nSoThuNhat == null ? "" : nSoThuNhat%>"
							required "
							class="form-control">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Số thứ hai</label> <input
							name="soThuHai" type="number" required class="form-control"
							value="<%=nSoThuHai == null ? "" : nSoThuHai%>"
							>
					</div>

					<div>
						
							</p><p><%=kq%>

					</div>

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