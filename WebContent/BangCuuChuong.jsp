<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bảng Cửu Chương</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<style>
	table {
	border-collapse: collapse;
	}
	td {
	padding : 5px !important;
	text-align: center;
	font-weight: 600;
	}
</style>
<body>
	<table border="1" style="width: 100%" class="table-hover">
		<tr>
			<td colspan="10" align="center" style="padding: 15px !important; color:red"; margin-bottom: 10px;">BẢNG CỬU CHƯƠNG</td>
		<tr>
			<% for(int i=1;i<=9;i++){%>
				<tr></tr>

				<%	for(int j=1;j<=9;j++){%>	
					<td><% out.print(j + "x" + i + "="); %><%=i*j %></td>
				<%} %>
			<%} %>
		
	</table>
</body>
</html>