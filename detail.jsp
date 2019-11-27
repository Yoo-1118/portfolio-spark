<%@page import="Login.member_DO"%>
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
      z-index: 5;
      position: relative;
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
	
	/* 상단바 css */
	.othertopimg{
   		float: left;
		width: 23px;
		padding: 15px 10px;
		position: absolute; 
		z-index: 5;
	}
	.othertoplogo{
		width: 100%;
		float: left;
		color: #F1F2F2;
		font-size: 21px;
		padding-top: 13px;
		text-align: center;
		position: absolute; 
		z-index: 4;
	}
	
	/* detail.jsp css */
	#id{
   	  height: 140px;
   	  background-color:#f1f2f2;
   	  margin-bottom:-8px;
   }
   #idtxt{
   	  color:#333;
   	  text-align:center;
   	  font-size:25pt;
   	  line-height:160px;
   }
   .menus{
   	  height:55px;
   	  margin-top:-8px;
   	  margin-bottom:-8px;
      background-color:#ffffff;
   }
   .imgclip{
   	  width: 65px;
      background-color:#ffffff;
	  float: left;
   }
   .sentc{
   	  height: 20px;
   	  width: 280px;
      background-color:#ffffff;
   	  float: left;
      line-height:56px;
   	  color: #595e5f;
   }
   .imgfile{
   	  width:30px;
   	  padding-left:16px;
   	  padding-top:12.5px;
   }
   .imgfile2{
      width:27px;
   	  padding-left:18px;
   	  padding-top:13px;
   }
   .bott{
      width:358px;
      height:264px;
      border: 1px solid #000000;
      background-color:#f1f2f2;
   }
</style>
</head>
<body>
<div class="container" style="background-color: #f1f2f2;">   
	<div style="height:45px;">
		<a href="Main2.jsp"><img src="images/back.png" style="width: 23px; padding: 20px 10px;"></a>
	</div>
   
   <div id="id"><div id="idtxt"><b>
   		<%
			String id=null;
	        if(session.getAttribute("MemberID") != null) // 로그인이 안되었을 때
	        { 
	        	id=session.getAttribute("MemberID").toString();
	        }
    	%>
		<%=id %></b>님
	</div></div>
   
   
   <%
   		member_DO mdo = new member_DO();
   %>
   <hr><div class="menus">
      	<div class="imgclip"><img class="imgfile" src="images/card.png"></div>
      	<div class="sentc"><a href="Card.jsp" style="text-decoration:none; color:#595e5f">카드정보</a></div>
   </div><hr>
   <div class="menus">
   	<div class="imgclip"><img class="imgfile2" src="images/write.png"></div>
   	<div class="sentc"><a href="Car.jsp" style="text-decoration:none; color:#595e5f">차량등록</a></div>
   </div><hr>
   <div class="menus">
    	<div class="imgclip"><img class="imgfile2" src="images/close3.png"></div>
    	<div class="sentc">
    		<label class="btn5" for="open-pop5">
    			<a href="#"  style="text-decoration:none; color:#595e5f; text-align:center">회원탈퇴</a>
    		</label>
    	</div>
   </div>
   <hr>
</div>

</body>
</html>