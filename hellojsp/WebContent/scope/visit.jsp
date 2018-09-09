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
	Integer count = (Integer)application.getAttribute("count");
	//Integer count = (Integer)session.getAttribute("count");
	
		if(count == null){
			count = 1;
			application.setAttribute("count", count);
			//session.setAttribute("count", count);
			
		}else{
			count++;
			application.setAttribute("count", count);
			//session.setAttribute("count", count);
			
		}
	%>
	
	방문자 수: <%=count %>
</body>
</html>