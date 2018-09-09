<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="kr.lns.beans.Member" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<jsp:forward page="member_list.jsp"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="javascript:history.go(-1)">돌아가기</a>	
	<a href="member_list.jsp">멤버 리스트</a>
</body>
</html>