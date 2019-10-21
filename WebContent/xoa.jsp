<%@page import="Bo.GiohangBo"%>
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
 		try {
 			String masach = request.getParameter("ms");
 			out.print(masach);
 			GiohangBo gh = null;
 			if(session.getAttribute("gh") == null) {
 	 			gh = new GiohangBo();
 	 			session.setAttribute("gh", gh);
 	 		}
 	 		// b1: Lấy session lưu vào biến gh
 	 		gh = (GiohangBo)session.getAttribute("gh");
 	 		//b2 : Thay đổi gh gọi hàm them();
 	 		gh.Xoa(masach);
 	 		//b3 : lưu biến vào session
 	 		session.setAttribute("gh", gh);
 	 		// Hiển thị giỏ hàng
 	 		
 		}catch(Exception ex) {
 			ex.printStackTrace();
 		}
		response.sendRedirect("htgiohang.jsp");
	 %>
	
</body>
</html>