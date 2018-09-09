<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String name1 = "이금성";
%>
<%
response.setContentType("text/html;charset=utf-8");
%>
<jsp:useBean id="member" class="kr.lns.beans.Member" scope="request"></jsp:useBean>
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
	${param.nickname}
	<form action="join_action.jsp" method="post">
		<ul><li class="cols">이름 :</li> <li><jsp:getProperty property="username" name="member"/> ${member.username }</li></ul>
		<ul><li class="cols">아이디 :</li> <li><jsp:getProperty property="userid" name="member"/> </li></ul>
		<ul><li class="cols">별명 :</li> <li><jsp:getProperty property="nickname" name="member"/> </li></ul>
		<ul><li class="cols">비밀번호 :</li> <li><jsp:getProperty property="userpass" name="member"/> </li></ul>
		<ul><li class="cols">이메일 :</li> <li><jsp:getProperty property="email" name="member"/> </li></ul>
		<ul><li class="cols">전화번호 :</li> <li><jsp:getProperty property="tel" name="member"/> </li></ul>
		<ul class="center">
			<a href="join.jsp">다시가입</a>
		</ul>
	</form>
</div>
</body>
</html>