<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.setAttribute("color", request.getParameter("color"));
session.setAttribute("size", request.getParameter("size"));
//response.sendRedirect("session_end.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Enumeration names = session.getAttributeNames();

while(names.hasMoreElements()) {
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value);
	out.println("<br />");
}
session.invalidate();
%>
</body>
</html>