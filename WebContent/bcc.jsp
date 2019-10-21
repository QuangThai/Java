<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>
				<% for(int i=0; i<=200;i++){ %>
					<a href="bcc.jsp?k=<%=i %>"><%=i %></a>
				<%} %>
			</td>
		</tr>	
		<tr>
			<td>
				<%String ts =  request.getParameter("k"); 
					if(ts == null) out.print("chọn lại đi bạn ơi");
					else {
						 int n = Integer.parseInt(ts);
							for(int j=1;j<=9;j++){	
						out.print(j + "x" + n + "=" + n*j + "<br>");
						} 
					}
				%>
			</td>
		</tr>
	</table>
</body>
</html>