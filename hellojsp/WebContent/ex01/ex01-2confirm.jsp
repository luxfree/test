<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="model.MemberDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	//한글처리
	request.setCharacterEncoding("utf-8");

	//1. 입력받은 name, age, addr, email의 값을 받아오시오.
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String addr = request.getParameter("addr");
	String email = request.getParameter("email");
	
	if(age>19){
		
		//2. 회원정보를 MemberDTO로 정의하시오.(name, age, addr, email)
		MemberDTO dto = new MemberDTO(name, age, addr, email);
		
		//3. MemberDTO를 담아 ex01-3main.jsp로 이동하시오.
		request.setAttribute("member", dto);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex01-3main.jsp");		
		dispatcher.forward(request, response);
		
	}else{
		//4. ex01-1input.html로 이동하시오.
		response.sendRedirect("ex01-1input.html");
	}
%>
</body>
</html>