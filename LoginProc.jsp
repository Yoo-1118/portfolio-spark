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
 		request.setCharacterEncoding("utf-8"); 
        
        // 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
        String id= request.getParameter("ID");
        String pw = request.getParameter("PASSWORD");
        String keepLogin = request.getParameter("ex_chk2");
        
        System.out.println("KeepLogin : " + keepLogin);
        
        // DB에서 아이디, 비밀번호 확인
        member_DAO mdao = new member_DAO();
        int check = mdao.loginCheck(id, pw);
        
        // URL 및 로그인관련 전달 메시지
        String msg = "";
        
        if(check == 1)    // 로그인 성공
        { 
            // 세션에 현재 아이디 세팅
            session.setAttribute("MemberID", id);
            
           response.sendRedirect("index.jsp?keepLogin="+keepLogin+"&id="+id);
        }
        else if(check == 0) // 비밀번호가 틀릴경우
        {
            %>
            <script>
            	history.back();
            </script>
         	<%
        }
        else    // 아이디가 틀릴경우
        {
        	
        	%>
            <script>
            	history.back();
            </script>
         	<%
        }
    %>
</body>
</html>