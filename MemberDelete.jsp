<%@page import="Login.member_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	member_DAO mdao = new member_DAO();
	
	int membercode = Integer.parseInt(request.getParameter("membercode"));
	mdao.deleteMember(membercode);
	
	//해당 데이터 삭제 후에, 카드페이지로 이동
	response.sendRedirect("Main2.jsp");
%>
</body>
</html>