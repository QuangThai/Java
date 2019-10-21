<%@page import="com.sun.javafx.binding.StringFormatter"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Xổ số</title>
<style type="text/css">
	table {
		border-collapse: collapse;
		 width: 60%;
		 line-height:40px;
		 text-align: center;
		 margin-left: 270px;
		 font-family: Arial, sans-serif, Tahoma, Helvetica;
	}
	tr td {
		font-weight: 600
	}
	tr:nth-child(1) {
		  background-color: red;
		  color: yellow;
		
	}
	tr:nth-child(3) {
		background: #dddddd;
	}
	tr:nth-child(5) {
		background: #dddddd;
	}
	tr:nth-child(8) {
		background: #dddddd;	
	}
	tr:nth-child(10) {
		background: #dddddd;	
	}
}
</style>
</head>

<body>
	<% Calendar c=  Calendar.getInstance(); 
		int thu=c.get(Calendar.DAY_OF_WEEK);
		int ngay=c.get(Calendar.DAY_OF_MONTH);
		int thang=c.get(Calendar.MONTH)+1;
		int nam= c.get(Calendar.YEAR);
	%>
	Hôm nay, ngày <%=c.get(Calendar.DAY_OF_MONTH) %> tháng <%=c.get(Calendar.MONTH)+1 %> năm <%=c.get(Calendar.YEAR) %>
	<hr>
	Chọn ngày
	<select name="sngay">
	<%for(int i=1;i<=31;i++) {%>
		<option <%=((i==ngay)?"selected":"") %>><%=i %></option>
	<%} %>
	</select>
	tháng
	<select name="sthang">
		<%for(int i=1;i<=12;i++){ %>
			<option <%=((i==thang)?"selected":"") %>><%=i %></option>
			<%} %>
	</select>
	năm
	<select name="snam">
		<%for(int i=2000;i<=2025;i++){ %>
			<option <%=((i==nam)?"selected":"") %>><%=i %></option>
			<%} %>
	</select>
	<br><br>
	<hr><br><br>
	<% Random r= new Random();
	  	
	%>
	<table border="1" >
		<tr>
			<th colspan="13">Xổ số Thừa Thiên Huế thứ <%=thu %> ngày <%=ngay %> tháng <%=thang %> năm <%=nam %></th>
		</tr>
		<tr>
			<td>Giải tám</td>
			<td colspan="12"><b style="color:red">
				<%
				String g8 = String.format("%02d",r.nextInt(100));
				out.print(g8);
				%>
			</b></td>
		</tr>
		<tr>
			<td>Giải bảy</td>
			<td colspan="12"><b><% 
				String g7= String.format("%03d",r.nextInt(1000));
				out.print(g7);
			%></b></td>
		</tr>
		<tr>
			<td>Giải sáu</td>
			<%for(int i=1;i<=3;i++){ %>
				<td colspan="4"><b><%
					String g6= String.format("%04d",r.nextInt(10000));
					out.print(g6);
				%></b>  </td>
			<%} %>
		</tr>
		<tr>
			<td>Giải năm</td>
			<td colspan="12"><b><% 
				String g5 = String.format("%04d",r.nextInt(10000));
				out.print(g5);
			%></b></td>
		</tr>
		<tr>
			<td rowspan="2">Giải bốn </td>
			<%for(int i=1;i<=4;i++){ %>
				<td colspan="3"><b><%
					String g4= String.format("%05d",r.nextInt(100000));
					out.print(g4);
				%> </b> </td>
			<%} %>
		</tr>
		<tr>
			<%for(int i=1;i<=3;i++){ %>
				<td colspan="4"><b><%
					String g4= String.format("%05d",r.nextInt(100000));
					out.print(g4);
				%>  </b></td>
			<%} %>
		</tr>
		<tr>
			<td>Giải ba </td>
			<%for(int i=1;i<=2;i++){ %>
				<td colspan="6"><b><%
					String g3= String.format("%05d",r.nextInt(100000));
					out.print(g3);
				%>  </b></td>
			<%} %>
		</tr>
		<tr>
			<td>Giải nhì</td>
			<td colspan="12">
				<b><%
				String g2= String.format("%05d",r.nextInt(100000));
				out.print(g2);
				%></b>
			</td>
		</tr>
		<tr>
			<td>Giải nhất</td>
			<td colspan="12">
				<b><%
				String g1 = String.format("%05d",r.nextInt(100000));
				out.print(g1);
				%></b>
			</td>
		</tr>
		<tr>
			<td>Giải đặc biệt</td>
			<td colspan="12">
				<b style="color: red;">
				<%
				String gdb= String.format("%06d",r.nextInt(1000000));
				out.print(gdb);
				%></b>
			</td>
		</tr>
	</table>
	
</body>
</html>