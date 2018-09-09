<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="calc" scope="page" class="kr.lns.beans.CalcBean" />
<jsp:setProperty name="calc" property="*" />
<% calc.calculate(); %>

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
계산결과 : <jsp:getProperty property="result" name="calc" />
</body>
</html>