<%@page import="java.time.LocalDate"%>
<%@page import="day1.Product"%>
<%@page import="java.util.List"%>
<%@page import="day1.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tbl_product# 테이블</title>
	<style type="text/css">
	table{
		width: 70%; 
		margin: auto; 
		border-collapse: collapse;
	}
	caption{
		text-align: right;font-size: 0.8em
	}
	td{
		border: 1px solid gray;
		text-align: center;
		padding: 7px 4px;
	}
	th{
		background-color: tomato;
		color:white;
	}
	
</style>
</head>
<body>
	<h3>product# 테이블 데이터</h3>
<%		
	ProductDao dao = ProductDao.getProductDao();
	List <Product> list = dao.selectAll();
%>	
	
	<table>
		<caption>현재시간 : <%=LocalDate.now() %></caption>
		<tr>
			<th>pcode</th>
			<th>pcategory</th>
			<th>pname</th>
			<th>price</th>
		</tr>
<%
		for(Product p : list){
%>
		<tr>
			<td><%=p.getPcode()%></td>
			<td><%=p.getCategory() %></td>
			<td><%=p.getPname() %></td>
			<td><%=p.getPrice() %></td>
		</tr>
	
<% 		 
		}
%>
		
	</table>
	
</body>
</html>













