<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="color" value="white" />
<c:choose>
	<c:when test="${param.color == 1 }">
		<c:set var="color" value="red" />
	</c:when>
	<c:when test="${param.color == 2 }">
		<c:set var="color" value="blue" />
	</c:when>
	<c:when test="${param.color == 3 }">
		<c:set var="color" value="green" />
	</c:when>
</c:choose>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {background-color:${color}}
</style>
</head>
<body>
	<form action="jstl_action.jsp" method="post">
	<input type="checkbox" name="fruit" value="사과"/> 사과
	<input type="checkbox" name="fruit" value="배"/> 배
	<input type="checkbox" name="fruit" value="귤"/> 귤
	<input type="checkbox" name="fruit" value="감"/> 감
	<input type="checkbox" name="fruit" value="자두"/> 자두
	<input type="submit" value="전송" />
	</form>
</body>
</html>