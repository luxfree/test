<%@ page import="kr.lns.beans.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="am" class="kr.lns.cn.AddrManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>주소록</h2>
	<hr>
	<a href="addr_form.html">주소추가</a><p>
	<table>
		<thead>
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
		</tr>
		</thead>
		<tbody>
		<%
			for(AddrBean ab : am.getAddrList()) {
		%>
		<tr>
			<td><%=ab.getUsername() %></td>
			<td><%=ab.getTel() %></td>
			<td><%=ab.getEmail() %></td>
			<td><%=ab.getSex() %></td>
		</tr>
		<%
			}
		%>
		</tbody>
		<tfoot></tfoot>
	</table>
	
</div>
</body>
</html>