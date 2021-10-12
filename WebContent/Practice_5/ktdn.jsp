<%@page import="
bean.KhachHangBean"%>
<%@page import="bo.KhachHangBo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String tk = request.getParameter("txtUser");
	String mk = request.getParameter("txtPass");

	KhachHangBo khbo = new KhachHangBo();

	KhachHangBean kh = khbo.kiemTraDN(tk, mk);
	out.print(kh);
	if (kh != null) {//thông tin tài khoản chính xác
	    if (session.getAttribute("sskh") == null) {
		session.setAttribute("sskh", (KhachHangBean) kh);
		session.setAttribute("sskt", (long) 0);
		response.sendRedirect("menu.jsp");
	    } else {
		response.sendRedirect("menu.jsp");
	    }
	} else {
	    session.setAttribute("sskh", null);
		session.setAttribute("sskt", (long) 1);
	    response.sendRedirect("menu.jsp");
	}
	%>
</body>
</html>