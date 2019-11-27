<%@page import="Card.Card_DAO"%>
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
	Card_DAO cdao = new Card_DAO();
	
	int num = Integer.parseInt(request.getParameter("num"));
	cdao.deleteCard(num);
	
	//해당 데이터 삭제 후에, 카드페이지로 이동
	response.sendRedirect("Card.jsp");
%>
</body>
</html>