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
	//한글깨짐 방지
	request.setCharacterEncoding("utf-8");
%>

<center>
<h2> 주소록 입력 내용 확인 및 저장 </h2>
<hr>
 
 <jsp:useBean id="cdo" class="Card.Card_DO">
 	<jsp:setProperty name="cdo" property="*" />
 </jsp:useBean>
 
 <% 
 	/*
	빈즈클래스에 저장된 내용을
	DAO클래스를 이용하여 데이터베이스에 저장함
	insertAddr(abean)
	*/
 	Card_DAO cdao = new Card_DAO();
 	cdao.insertCardInfo(cdo);
 	response.sendRedirect("Card.jsp");
 %>



</center>
</body>
</html>