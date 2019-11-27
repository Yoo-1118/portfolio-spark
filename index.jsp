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
	String keepLogin = request.getParameter("keepLogin");
	String id = request.getParameter("id");
	System.out.println("keepLogin: "+keepLogin+", id: "+id);
	
	if(keepLogin != null && id !=null){
		//쿠키처리
		if(keepLogin.equals("yes")){
			//쿠키생성
			Cookie cookie = new Cookie("id",id);
			cookie.setMaxAge(60*60*24*14); //2주일간 로그인 상태 유지
			response.addCookie(cookie);
			System.out.println("id 쿠키생성");
		}else if(keepLogin.equals("no")){
			//쿠키 id 삭제
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(Cookie cookie : cookies){
					if(cookie.getName().equals("id")){
						//삭제
						cookie.setMaxAge(0);
						response.addCookie(cookie);
					}
				}
			}
		}
	}
%>

<% response.sendRedirect("Main2.jsp"); %>
</body>
</html>