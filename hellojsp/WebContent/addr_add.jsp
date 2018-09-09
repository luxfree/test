<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="addr" class="kr.lns.beans.AddrBean" />
<jsp:setProperty name="addr" property="*" />
<jsp:useBean id="am" class="kr.lns.cn.AddrManager" scope="application" />
<%
am.add(addr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>등록내용</h2>
이름 : <jsp:getProperty property="username" name="addr" /> <br />
전화번호 : <%=addr.getTel() %> <br />
이메일 : <%=addr.getEmail() %> <br />
성별 : <%=addr.getSex() %> <br />
<a href="addr_list.jsp">목록보기</a>
</body>
</html>