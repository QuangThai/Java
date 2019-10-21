<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% Calendar c= Calendar.getInstance(); 
		int ngay=c.get(Calendar.DAY_OF_MONTH);
		int thang= c.get(Calendar.MONTH)+1;
		int nam = c.get(Calendar.YEAR);
	%>
	Hôm nay, Ngày <%=ngay %> tháng <%=thang %> năm <%=nam %>
	<hr>
	Chọn ngày
	<select name='sngay'>
	<% for(int i=1; i<=31;i++) { %>
		<%if(ngay==i){ %>
		<option selected=""><%=i %></option>
		<%} %>
		else {
			<option><%=i %></option>
		}
	<%} %>
	</select>
	Tháng 
	<select name='sthang'>
	<% for(int i=1; i<=12;i++) { %>
		<%if(thang==i){ %>
		<option selected=""><%=i %></option>
		<%} %>
		else {
			<option><%=i %></option>
		}
	<%} %>
	</select>
	Năm 
	<select name='snam'>
	<% for(int i=nam-10; i<=nam;i++) { %>
		<%if(nam==i){ %>
		<option selected=""><%=i %></option>
		<%} %>
		else {
			<option><%=i %></option>
		}
	<%} %>
	</select>
</body>
</html>