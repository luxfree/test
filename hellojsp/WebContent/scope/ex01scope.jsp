<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		/*
			내장객체 영역: 서버 내 정보를 유지할 수 있는 영역을 의미.
			
			page영역: 하나의 페이지 내 정보 유지
			request영역: 페이지 이동을 어떻게 하느냐에 따라서 하나의 페이지 또는 두 개의 페이지 내에서
						 정보 유지
			session영역: 하나의 웹 브라우저 내에서 정보 유지(브라우저 종료되기 전까지 유지)
			application영역: 하나의 웹 어플리케이션 내 정보 유지
							 즉, 서버가 종료되거나 재시작되지 않는 한 유지
		*/
		pageContext.setAttribute("pageContext", "pageContext영역");
		request.setAttribute("request", "request영역");
		session.setAttribute("session", "session영역");
		application.setAttribute("application", "application영역");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex02scope.jsp");
		dispatcher.forward(request, response);
	%>
	
	pageContext영역: <%=pageContext.getAttribute("pageContext") %><br>
	request영역: <%=request.getAttribute("request") %><br>
	session영역: <%=session.getAttribute("session") %><br>
	application영역: <%=application.getAttribute("application") %><br>
	
	
</body>
</html>









