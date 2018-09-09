<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* Enumeration req = request.getParameterNames();

while(req.hasMoreElements()) {	
	String name = req.nextElement().toString();
	String val = request.getParameter(name);
	
	out.println(name + " : " + val);
	out.println("<br />");
} */

// 실제 아이디, 비밀번호
String id = "luxfree";
String pass = "1234";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String userid = request.getParameter("userid");
String userpass = request.getParameter("userpass");

if(userid.equals(id) && userpass.equals(pass)) {
	out.println("환영합니다.");
	session.setAttribute("userid", id);
	session.setAttribute("userpass", pass);
	out.println("<a href='logout.jsp'>로그아웃</a>");
} else {
	out.println("아이디나 비밀번호가 맞지 않습니다.");
	out.println("<a href='login.html'>로그인</a>");
}
%>
</body>
</html>