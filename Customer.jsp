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
      background-color: #f1f2f2;
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
		padding: 20px 10px;
		position: absolute; 
		z-index: 5;
	}
	.othertoplogo{
		width: 100%;
		float: left;
		font-size: 19px;
		padding-top: 20px;
		text-align: center;
		position: absolute; 
		z-index: 4;
		color: #565656;
	}
	
	/* Customer.jsp css */
	html{
		font-family:sans-serif
	}  
   .topmenu{
   		width:100%;
   		height:50px;
   		padding-top: 3px;
   }  
   .cuslogo{
      color: #F1F2F2;
      font-size: 28px;
      float: left;
      padding: 13px 4px;
      font-size:20px;
   }  
   .cusmenu1{
   		float:left;
   		width:33%;
   		margin:13px 0px 0px 0px;
   		padding-bottom:9px;
   		border-bottom:5px solid #020873;
   		text-align:center;
   }
   .cusmenu2{
   		float:left;
   		width:33%;
   		padding-bottom:9px;
   		margin:13px 0px 0px 0px;
   		text-align:center;
   }
   .cusmenu3{
   		float:left;
   		width:33%;
   		margin:13px 0px 0px 0px;
   		padding-bottom:9px;
   		text-align:center;
   }
   
   .coverdiv{
   		margin-top: 17px;
   }
   
   .condiv{
   		width: 85%;
   		background-color: #ffffff;
   		border:1px solid black;
   		border-radius:3px;
   		margin: 8px 10px 8px 23px;
   		font-size:12px;
   		padding:13px 7px 13px 7px;
   		color:#5E5E5E
   }
   .downimg{
   		vertical-align:middle;
   		float:right;
   }
</style>
</head>
<body>
<div class="container" style="background-color: #f1f2f2;">   
   <div class="top" style="margin-bottom: 20px;">
		<a href="Main2.jsp">
	 		<img class="othertopimg" src="images/back.png" >
	 	</a>
		<div class="othertoplogo" > <b>고객센터</b> </div>
	</div>
   
   <div class="coverdiv">
   		<div class="condiv">[결제] 자동결제 상태인데 주차장에서 나갈 수가 없어요<img class="downimg" src="images/down.PNG"></div>
   		<div class="condiv">[결제] 대표카드가 아닌 카드로 결제가 되었어요 <img class="downimg" src="images/down.PNG"></div>
   		<div class="condiv">[회원정보] 탈퇴를 하고 싶어요 <img class="downimg" src="images/down.PNG"></div>
   		<div class="condiv">[회원정보] 아이디를 바꾸고 싶어요 <img class="downimg" src="images/down.PNG"></div>
   		<div class="condiv">[회원정보] 문의하기 삭제는 어떻게 하나요? <img class="downimg" src="images/down.PNG"></div>
   		<div class="condiv">[주차신고] 신고를 하고 싶어요 <img class="downimg" src="images/down.PNG"></div>
   		<div class="condiv">[주차신고] 신고를 하면 보상이 있나요? <img class="downimg" src="images/down.PNG"></div>
   		<div class="condiv">[이용방법] 자동결제가 되지 않아요 <img class="downimg" src="images/down.PNG"></div>
   </div> 
   
</div>
</body>
</html>