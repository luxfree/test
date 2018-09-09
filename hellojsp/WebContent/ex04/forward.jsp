<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");

int age = Integer.parseInt(request.getParameter("username"));

RequestDispatcher view = request.getRequestDispatcher("forward_end.jsp");
request.setAttribute("val", age);
view.forward(request, response);

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