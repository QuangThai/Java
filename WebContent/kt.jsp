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
		String un = request.getParameter("txtun");
		if(!un.isEmpty()){
			session.setAttribute("un", un);
			response.sendRedirect("htsach.jsp");
		}
		else
			out.print("<script>alert('Đăng nhập sai');</script>");
	%>
</body>
</html>