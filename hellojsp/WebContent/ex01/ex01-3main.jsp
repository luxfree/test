<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="dto" class="model.MemberDTO" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	body{
		text-align: center;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>환영합니다!</h1>
	<%
		
		// 1. ex01-2confirm.jsp에서 넘겨준 MemberDTO객체를 출력하시오.
		//MemberDTO dto = (MemberDTO) request.getAttribute("member");
	%>
	이름1 : <jsp:getProperty name="dto" property="name" /><br>
	나이1 : <jsp:getProperty name="dto" property="age" /><br>
	주소 : <%=dto.getAddr() %><br>
	이메일 : <%=dto.getEmail() %><br>
	
</body>
</html>