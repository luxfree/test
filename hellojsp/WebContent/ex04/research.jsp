<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String[] season = request.getParameterValues("season");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h3, .center {text-align:center;}
</style>
</head>
<body>
<h3>설문조사 결과</h3>
이름 : <strong><%=request.getParameter("username") %></strong> <br />
성별 : <strong><%=request.getParameter("sex").equals("male")?"남자":"여자" %></strong> <br />
당신이 좋아하는 계절은 
<%
for(String s : season) {
	if(s.equals("1")) s = "봄";
	else if(s.equals("2")) s = "여름";
	else if(s.equals("3")) s = "가을";
	else if(s.equals("4")) s = "겨울";
	
	out.println("<strong>" + s + "</strong>");
}
%>
입니다. <br />
<a href="javascript:history.go(-1);">다시하기</a>
</body>
</html>