<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table align="center" width="1000">
	<tr>
		<td>
			<a href="ht.jsp?k=1" >Thời sự</a> <hr>
			<a href="ht.jsp?k=2" >Thể thao</a> <hr>
			<a href="ht.jsp?k=3" >Kinh doanh</a> <hr>
		</td>
		<td>
			<%
			String ts = request.getParameter("k"); 
			if(ts == null) out.print("Chạy lần đầu tiên....");
			else 
			if(ts.equals("1"))
				out.print("Hiển thị trang thể thời sự");
			else 
				if(ts.equals("2"))
				out.print("hiển thị trang thể thao");
				else
					out.print("Hiển thị trang kinh doanh");
			%>
		</td>
	</tr>
	</table>
</body>
</html>