<%@page import="Card.Card_DO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Card.Card_DAO"%>
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
	html{
		font-family: 'Noto Sans KR', sans-serif;
	}
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
	
	/* Card.jsp css */
	.card_pre1{
		height:160px;
		width: 80%;
		background-color:#FFBB00;
		border-radius:5px;
 		position: relative; 
		left: 10%;
		margin-top: 30px;
		z-index: 1;
/* 		margin-left:10%; */
	}
	.card_pre2{
		height:160px;
		width: 80%;
		background-color:#FFBB00;
		border-radius:5px;
 		position: relative; 
		left: 10%;
		margin-top: 30px;
		z-index: 1;
		text-align:center;
	}
	.card_name{
		color: white;
		font-size: 19px;
		margin: 30px 0px 0px 30px;
		padding-top: 15px;
	}
	.card_number{
		color: white;;
		font-size: 16px;
		margin: 30px 0px 0px 32px;
	}
	.card_1{
		height:160px;
		width: 80%;
		background-color:#4374D9;
		border-radius:5px;
		left: 10%;
		margin-top: 30px;
		margin-left:10%;
	}
	.card_2{
		height:160px;
		width: 80%;
		background-color:#7C7266;
		border-radius:5px;
		left: 10%;
		margin-top: 30px;
		margin-left:10%;
	}
	.pre{
		border-radius:50px;
		background-color: #BF2424;
		width: 50px;
		height: 50px;
		color: white;
		text-align: center;
		position: absolute;
		right:5%;
		top:10%;
		z-index:2;
		font-weight: bold;
	}
	.card_reg{
		background-color: #020873;
		color: white;
		text-align: center;
		border-radius: 2px;
		font-size: 18px;
		height: 40px;
		width: 100%;
		margin: 10px 0px 0px 0px;
		padding-top: 10px;
		bottom: 0;
		position: fixed;
		font-size: 17px;
	}
</style>
</head>
<body>
<div class="container" style="background-color: #f1f2f2;">
   <div class="top">
		<a href="detail.jsp">
	 		<img class="othertopimg" src="images/back.png" >
	 	</a>
		<div class="othertoplogo" > <b>카드정보</b> </div>
	</div>
	
	<%
		Card_DAO cdao = new Card_DAO();
		ArrayList<Card_DO> V = cdao.getAllCardInfo();
		for(int i=0; i < V.size(); i++){
			Card_DO cdo = V.get(i);
	%>
		<div class="card_1">
		   	<div class="card_name" style="float:left;"><b><%= cdo.getBank() %>카드</b></div>
			<div onclick="location.href='CardDelete.jsp?num=<%= cdo.getNum() %>'">
					<img src="images/close.png" style="width: 13px; margin-left: 180px; font-size: 13px;">
			</div>
		   	<div class="card_number"><%= cdo.getCnumber() %></div>
   		</div>
	<%
		}
	%>
	<div class="card_reg"><a href="Card_info.jsp" style="color:#f1f2f2; text-decoration:none;">카드등록</a></div>
</div>

</body>
</html>