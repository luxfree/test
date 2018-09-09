<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String color;
String size;
%>
<%
color = (String) session.getAttribute("color");
size = (String) session.getAttribute("size");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		background-color: <%=color %>;
	}
	.text {
		font-size: <%=size %>px;
	}	
</style>
</head>
<body>
<%=color %>
<div class="text">세션 연습</div>
</body>
</html>