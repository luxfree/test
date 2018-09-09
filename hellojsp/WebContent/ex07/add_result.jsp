<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("num1", 50);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
JSP :
<%
out.println(request.getAttribute("num1") + " + " + request.getAttribute("num2") + " = " + request.getAttribute("sum"));
%>
<br />
EL :
${pageScope.num1 } + ${requestScope.num2 } = ${sum }
</body>
</html>