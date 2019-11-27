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
		Object price = session.getAttribute("price");
	%>
	<jsp:useBean id="couponDO" class="Cou.CouDO" scope="application" />
	<%
		String num = request.getParameter("coupon");
		couponDO.setCouponnum(num);
	%>

	<jsp:useBean id="couponDAO" class="Cou.CouDAO" scope="request" />
	<%
		String cnum = couponDO.getCouponnum();
		int resnum = couponDAO.couponCheck(cnum);
		session.setAttribute("rnum",resnum);
		couponDAO.couponDelete(cnum);
		response.sendRedirect("Pay.jsp?price="+price);
	%>
</body>
</html>