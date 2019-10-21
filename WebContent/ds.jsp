<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%String ts = request.getParameter("k"); 
	if(ts.equals("1"))
		out.print("Hiển thị trang thể thao");
	else 
		out.print("hiển thị trang kinh doanh");
	%>
</body>
</html>