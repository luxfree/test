<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String color;
String size;
%>
<%
Cookie[] cookies = request.getCookies();

for(Cookie cookie : cookies) {
	if(cookie.getName().equals("color")) {
		color = cookie.getValue(); 
	} else if(cookie.getName().equals("size")) {
		size = cookie.getValue();
	}
}
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
<div class="text">쿠키 연습</div>
</body>
</html>