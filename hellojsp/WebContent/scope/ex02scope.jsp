<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	pageContext영역: <%=pageContext.getAttribute("pageContext") %><br>
	request영역: <%=request.getAttribute("request") %><br>
	session영역: <%=session.getAttribute("session") %><br>
	application영역: <%=application.getAttribute("application") %><br>
	
	<br>
	
	<a href="ex03scope.jsp">ex03scope.jsp로 이동</a>
</body>
</html>