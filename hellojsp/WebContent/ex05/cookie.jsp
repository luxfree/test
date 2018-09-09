<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String color = request.getParameter("color");
String size = request.getParameter("size");

response.addCookie(new Cookie("color", color));
response.addCookie(new Cookie("size", size));
response.sendRedirect("cookie_end.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

</body>
</html>