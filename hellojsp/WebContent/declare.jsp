<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String str = "안녕하세요!";
int a = 5, b = -5, cnt = 0;

public int abs(int num) {
	int result = 0;
	
	if(num < 0) {
		result = num * -1; 
	}
	
	return result;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요. 
<%=a %>의 절대값 : <%=abs(a) %> <br />
<%=b %>의 절대값 : <%=abs(b) %> <br />
<%
int cnt2 = 0;
%>
<%=cnt++ %>
<%=cnt++ %>
<%=cnt++ %>

<%=cnt2++ %>
<%=cnt2++ %>
<%=cnt2++ %>
</body>
</html>