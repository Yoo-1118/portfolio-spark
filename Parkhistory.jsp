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
      height: 60px;
      z-index: 5;
      position: relative;
      background-color: #F2F2F2;
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
	
	/* Parkhistory.jsp css */
	.carhistory1{
		float:left;
		font-size: 12px;
		margin-top: 5px;
		margin-left: 17px;
	}
	.carhistory2{
		float:right;
		margin-top: 6px;
		margin-right: 17px;
	}
	.button {
		/*#595E5F*/
	    width:65px;
	    height:18px;
	    background-color: #666a6b;
	    border: none;
	    color:#f1f2f2;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 12px;
	    cursor: pointer;
	    border-radius:6px;
	    vertical-align: middle;
	}
	.contentcontainer1{
		height: 20px;
	}
	.contentcontainer2{
		width: 100%;
		padding: 25px 0px;
	}
</style>
</head>
<body>
<div class="container">	
	<div class="top">
		<a href="Main2.jsp">
	 		<img class="othertopimg" src="images/back.png" >
	 	</a>
		<div class="othertoplogo" > <b>주차내역</b> </div>
	</div>
	
	
	<!-- #D0D0D0; -->
	<div class="contentcontainer1" style="height: 23px; padding-top:2px; padding-bottom:3px; background-color:#C8C7C7;">
		<div class="carhistory1"> 최근주차내역 </div>
		<div class="carhistory2" style="margin-top: 3.5px;"><input type="button" value="기간설정" class="button btn-sm"></div>
	</div>
	
	</div>
	
	<!-- <hr style="margin-top:0px;"> -->
	
	<div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"> 오복빌딩 (4시간) </td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.05.24 </td>
			</tr>
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:12px;"> 서울 강동구 올림픽로 658 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"> 4,000원 </td>
			</tr>			
		</table>
	</div>
	
	<div class="contentcontainer1" style="height: 5px; background-color:#C8C7C7;">
	</div>
	
	<div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"> 아차산로 8 (2시간) </td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.05.19 </td>
			</tr>
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:12px;"> 서울 성동구 아차산로 8 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"> 2,000원 </td>
			</tr>			
		</table>
	</div>
	
	<div class="contentcontainer1" style="height: 5px; background-color:#C8C7C7;">
	</div>
	
	<div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"> 이삭주차장 (3시간) </td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.04.30 </td>
			</tr>
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:12px;"> 서울 광진구 자양동 5-4 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"> 4,500원 </td>
			</tr>			
		</table>
	</div>
	
	<div class="contentcontainer1" style="height: 5px; background-color:#C8C7C7;">
	</div>
	
	<div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"> 오금주차장 </td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.04.15 </td>
			</tr>
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:12px;"> 서울 송파구 방이동 14길 128 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"> 8,000원 </td>
			</tr>			
		</table>
	</div>
	
	<div class="contentcontainer1" style="height: 600px;background-color:#C8C7C7;">
	</div>
	
</div>
</body>
</html>