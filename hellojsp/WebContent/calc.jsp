<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
double result = 0;

if(request.getMethod().equals("POST")) {
	String op = request.getParameter("operator");
	System.out.println(op);
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	if(op.equals("+")) {
		result = num1 + num2;
	} else if(op.equals("-")) {
		result = num1 - num2;
	} else if(op.equals("*")) {
		result = num1 * num2;
	} else if(op.equals("/")) {
		result = num1 / num2;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
<input type="text" name="num1">
<select name="operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>	
</select>
<input type="text" name="num2">
<input type="submit" value="확인" />
<input type="reset" value="취소" />
</form>
<hr>
계산결과 : <%=result %>
</body>
</html>