<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>	
	.wrap {width: 500px; margin: 0 auto;}
	ul, li {list-style: none; margin-left:0; padding-left:0;}	
	li {display: inline-block;}
	.cols {width: 30%;text-align:right;}
	.center {text-align:center;}
</style>
</head>
<body>
<div class="wrap">
	<form action="join_action.jsp" method="post">
		<ul><li class="cols">이름 :</li> <li><input type="text" name="username"/></li></ul>
		<ul><li class="cols">아이디 :</li> <li><input type="text" name="userid"/></li></ul>
		<ul><li class="cols">별명 :</li> <li><input type="text" name="nickname"/></li></ul>
		<ul><li class="cols">비밀번호 :</li> <li><input type="text" name="userpass"/></li></ul>
		<ul><li class="cols">이메일 :</li> <li><input type="text" name="email"/></li></ul>
		<ul><li class="cols">전화번호 :</li> <li><input type="text" name="tel"/></li></ul>
		<ul class="center">
			<li><input type="submit" value="전송" /></li>
			<li><input type="reset" value="취소" /></li>
		</ul>
	</form>
</div>
</body>
</html>