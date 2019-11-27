<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width"/>
<title>Insert title here</title>
<style>
	/* 메인 css */
	body{
    	margin:0px;
    	background-color: #F2F2F2;
    }
    .container{
      margin: 0px auto;
      width: 100%;
   }
   .top{
      height: 55px;
      background-color: #020873;
   }
   .logo{
      color: #F1F2F2;
      font-size: 28px;
      float: left;
      width: 68%;
      text-align: center;
      padding-top: 8px;
      float: left;  
   }
   #map{
      width:100%;
      height: 600px;
   }
   .topimg1{
   		float: left;
		width: 28px;
		float: left;
		padding: 13px 15px;
	}
	.topimg2{
		width: 28px;
		float: right;
		padding: 13px 15px 13px 0px;
	}
	
	/* 로고 css */
	.logo1{
		color: #F1F2F2;
		font-size: 28px;
		float: left;
		padding: 8px 95px;
	}
	.logo2{
		color: #020873;
		font-size: 28px;
		text-align: center;
		padding-bottom: 15px;
	}
	
	/* Login.jsp css */
	.form {
	  position: relative;
	  z-index: 1;
	  margin: auto;
	  padding: 20px 15px;
	  text-align: center;
	  max-width: 360px;
	}
	.form input {
	  font-family: "Roboto", sans-serif;
	  outline: 0;
	  background: #ffffff;
	  width: 100%;
	  border: 1px solid #cecece;
	  margin: 0 0 10px;
	  padding: 12px;
	  box-sizing: border-box;
	  font-size: 12px;
	}
	.form .button {
	  font-family: "Roboto", sans-serif;
	  text-transform: uppercase;
	  outline: 0;
	  background: #020873;
	  width: 100%;
	  border: 0;
	  margin-top: 5px;
	  margin-bottom: 8px;
	  padding: 11px;
	  color: #ffffff;
	  font-size: 15px;
	  cursor: pointer;
	}
	.form .message1 {
	  margin-top: -1px;
	  color: #b3b3b3;
	  font-size: 12px;
	  float: left;
	  padding: 0px 3px;
	}
	.form .message2 {
	  margin-top: -2px;
	  color: #eaeaea;
	  font-size: 12px;
	  float: left;
	}
	.formbottom{
		width:auto;
		height: 20px;
		padding-left: 67px;
	}
	
	
	.checks.small{
		padding-bottom: 7px;
	}
	.checks.small input[type="checkbox"] + label {
	  font-size: 12px;
	}
	.checks.small input[type="checkbox"] + label:before {
	  width: 17px;
	  height: 17px;
	  line-height: 17px;
	  font-size: 11px;
	}
	.checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
	  position: absolute;
	  width: 1px;
	  height: 1px;
	  padding: 0;
	  margin: -1px;
	  overflow: hidden;
	  clip:rect(0,0,0,0);
	  border: 0
	}
	.checks input[type="checkbox"] + label {
	  display: inline-block;
	  position: relative;
	  cursor: pointer;
	  -webkit-user-select: none;
	  -moz-user-select: none;
	  -ms-user-select: none;
	}
	.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
	  content: ' ';
	  display: inline-block;
	  width: 21px;  /* 체크박스의 너비를 지정 */
	  height: 21px;  /* 체크박스의 높이를 지정 */
	  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
	  margin: -2px 8px 0 0;
	  text-align: center; 
	  vertical-align: middle;
	  background: #fafafa;
	  border: 1px solid #cacece;
	  border-radius : 3px;
	  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
	}
	.checks input[type="checkbox"] + label:active:before,
	.checks input[type="checkbox"]:checked + label:active:before {
	  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
	}
	.checks input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
	  content: '\2714';  /* 체크표시 유니코드 사용 */
	  color: #99a1a7;
	  text-shadow: 1px 1px #fff;
	  background: #e9ecee;
	  border-color: #adb8c0;
	  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
	}
	
	
	.checks2.small2{
		padding-bottom: 7px;
	}
	.checks2.small2 input[type="checkbox"] + label {
	  font-size: 12px;
	}
	.checks2.small2 input[type="checkbox"] + label:before {
	  width: 17px;
	  height: 17px;
	  line-height: 17px;
	  font-size: 11px;
	}
	.checks2 input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
	  position: absolute;
	  width: 1px;
	  height: 1px;
	  padding: 0;
	  margin: -1px;
	  overflow: hidden;
	  clip:rect(0,0,0,0);
	  border: 0
	}
	.checks2 input[type="checkbox"] + label {
	  display: inline-block;
	  position: relative;
	  cursor: pointer;
	  -webkit-user-select: none;
	  -moz-user-select: none;
	  -ms-user-select: none;
	}
	.checks2 input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
	  content: ' ';
	  display: inline-block;
	  width: 21px;  /* 체크박스의 너비를 지정 */
	  height: 21px;  /* 체크박스의 높이를 지정 */
	  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
	  margin: -2px 8px 0 0;
	  text-align: center; 
	  vertical-align: middle;
	  background: #fafafa;
	  border: 1px solid #cacece;
	  border-radius : 3px;
	  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
	}
	.checks2 input[type="checkbox"] + label:active:before,
	.checks2 input[type="checkbox"]:checked + label:active:before {
	  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
	}
	.checks2 input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
	  content: '\2714';  /* 체크표시 유니코드 사용 */
	  color: #99a1a7;
	  text-shadow: 1px 1px #fff;
	  background: #e9ecee;
	  border-color: #adb8c0;
	  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
	}
	
	
</style>
</head>
<body>

<%
	//쿠키 id값 확인
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("ID")){
				session.setAttribute("ID", cookie.getValue());
			}
		}
	}
	//세션 값 가져오기
	String ID = (String) session.getAttribute("ID");
%>
<div class="container" style="background-color:#f1f2f2;">
	<div style="height:45px;">
		<a href="Main2.jsp"><img src="images/back.png" style="width: 23px; padding: 20px 10px;"></a>
	</div>
	
	<div class="form" style="padding: 0px 15px;">
		<div class="logo2"><b>SPark</b></div>
		<form action="LoginProc.jsp" method="post" class="login-form">
			<input type="text" placeholder="아이디" name="ID"/>
			<input type="password" placeholder="비밀번호" name="PASSWORD"/>
			
			<div class="checks small" style="padding-bottom: 10px; padding-left: 75px; float:left;">
				<input type="checkbox" id="ex_chk"> <label for="ex_chk">아이디 저장</label>
			</div>
			<div class="checks2 small2" style="padding-bottom: 10px; padding-right: 50px;">
				<input type="checkbox" id="ex_chk2"> <label for="ex_chk2">자동로그인</label>
			</div>
			
			<input type="submit" value="로그인" class="button">
			<hr size="0.5" style="color: #b3b3b3;">
			<div class="formbottom">
				<p class="message1">아이디 찾기</p>
				<p class="message2">|</p>
				<p class="message1">비밀번호 찾기</p>
				<p class="message2">|</p>
				<p class="message1"><a href="Membership_info.jsp" style="text-decoration: none; color: #b3b3b3;">회원가입</a></p>
			</div>
    	</form>
	</div>
</div>
</body>
</html>