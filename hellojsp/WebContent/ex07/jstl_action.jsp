<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
request.setCharacterEncoding("utf-8");
String[] fruits = request.getParameterValues("fruit");
//pageContext.setAttribute("fruits", fruits);
%>
<c:set var="areas">
서울|광주|대전|대구|부산|인천|울산|세종
</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for(String f : fruits) {
	out.println(f);
}
%>
<br />
<c:forEach var="fruit" items="${paramValues.fruit}" varStatus="status">
	${status.index }
	${status.count }
	${fruit }
	<br />
</c:forEach>
<c:forTokens var="area" items="${areas }" delims="|">
${area } <br />
</c:forTokens>
</body>
</html>