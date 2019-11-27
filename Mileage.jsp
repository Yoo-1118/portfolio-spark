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
    	background-color: #f1f2f2;
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
      position: absolute; 
      z-index: 4;
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
		position: absolute; 
		z-index: 5;
	}
	
	/* 상단바 css */
	.othertopimg{
   		float: left;
		width: 28px;
		padding: 13px 10px;
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
	
	/* Parkhistory.jsp css */
	.carhistory1{
		float:left;
		font-size: 12px;
		margin-top: 9px;
		margin-left: 17px;
	}
	.carhistory2{
		float:right;
		margin-top: 6px;
		margin-right: 17px;
	}
	.button {
	    width:65px;
	    height:20px;
	    background-color: #595E5F;
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
		height: 25px;
	}
	.contentcontainer2{
		width: 100%;
		padding: 10px 0px;
	}
	
	/* Mileage.jsp */
	#mileage{
      height: 585px;
      width:100%;
   }
   .m{
      height: 110px;
      background-color: #242020;
      opacity: 0.93;
      text-align: center;
   }
   .m1{
      color: #CBCBCB;
      font-size: 16px;
      padding-top:30px;
   }
   .m2{
      color: #f1f2f2;
      font-size: 25px;
      margin-top: 5px;
   }
</style>
</head>
<body>
<div class="container">     
   <div class="top">
      <a href="Main.jsp">
          <img class="othertopimg" src="images/back2.png" >
      </a>
      <div class="othertoplogo" > 마일리지 </div>      
   </div>
   
   <div id="mileage">
      <div class="m">
         <div class="m1"><b>나의 마일리지</b></div>
         <div class="m2"><b>665P</b></div>
      </div>   
	<div class="contentcontainer1">
		<div class="carhistory1"> 최근적립내역 </div>
		<div class="carhistory2"><input type="button" value="기간설정" class="button btn-sm"></div>
	</div>
	<hr>
   <div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"><b> 제휴 </b></td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.05.24 </td>
			</tr>
			<tr>
				<td style="text-align:left; width:265px; padding-left:15px; font-size:12px;"> 스타벅스 천호역점 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"><b> 130P </b></td>
			</tr>			
		</table>
	</div>
	<hr>
	<div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"><b> 제휴 </b></td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.05.19 </td>
			</tr>
			<tr>
				<td style="text-align:left; width:265px; padding-left:15px; font-size:12px;"> CGV 강남 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"><b> 160P </b></td>
			</tr>			
		</table>
	</div>
	<hr>
	<div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"><b> 개인 </b></td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.04.30 </td>
			</tr>
			<tr>
				<td style="text-align:left; width:265px; padding-left:15px; font-size:12px;"> 역전우동 건대로데오점 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"><b> 80P </b></td>
			</tr>			
		</table>
	</div>
	<hr>
	<div class="contentcontainer2">
		<table style="width:100%;">
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:15px;"><b> 개인 </b></td>
				<td style="text-align:right; padding-right:17px; font-size:12px;"> 2019.04.15 </td>
			</tr>
			<tr>
				<td style="text-align:left; padding-left:17px; font-size:12px;"> 안경박사 방이점 </td>
				<td style="text-align:right; padding-right:17px; font-size:14px;"><b> 90P </b></td>
			</tr>			
		</table>
	</div>
	<hr>
	</div>
</div>
</body>
</html>