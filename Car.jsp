<%@page import="ParkNum.ParkNum_DO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ParkNum.ParkNum_DAO"%>
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
      background-color:  #F2F2F2;
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
		color: #565656;
		font-size: 19px;
		padding-top: 20px;
		text-align: center;
		position: absolute; 
		z-index: 4;
	}
	
	/* Car.jsp css */
	.content{
         height:190px;
         width:100%;
   }
   
   .leftdiv{
   		float:left;
   		text-align: center; 
        width:47%;
        height:190px;
   }
   
   .carimg{
         height:125px;
         width:123px;
         padding-top:30px;
   }
   
   .rightdiv{
         float:right;
         width:53%;
         height:190px;
   }
   
   .righttext1{
         margin-left:auto;
         margin-top:30px;
         
   }
   
   .carnumber{
         border: 1px solid #606060;
         background-color:#606060;
         border-radius:50px;
         padding:3px 15px;
         color:white;
         font-size:12px;
         margin-left:41px;
   }
   
   .righttext2{
         margin-left:auto;
         margin-top:17px;
         
   }
   
   .number{
   		height:35px;
   		width:150px;
   		border-radius:3px;
   		border:1px solid black;
   		margin-left:19px;
   }
   
   .register{
         border: 1px solid #BDBDBD;
         background-color:#BDBDBD;
         border-radius:3px;
         padding:6px 15px;
         font-weight:bold;
         margin-left:47px;
   }
   
   .chart{
   		margin-top:6px;
   }
   
   table {
        width: 90%;
        border-top: 1px solid #444444;
        border-collapse: collapse;
        margin:auto;
   }
   
   th, td {
        border-bottom: 1px solid #444444;
        text-align: center;
   }
   
   th {
    	background-color: #a3a3a3;
        padding: 8px;
   }
   
   td {
    	font-size:11pt;
        padding: 7px;
   }
   .co1{
    	border-radius:5px;
    	background-color: #5E5E5E;
    	height: 30px;
    	width: 40%;
    	text-align: center;
    	color:#FFFFFF; 
		margin-left:25%;
		margin-top:10px;
		border:0;
		outline:0;
    }
</style>
</head>
<body>
<div class="container">
   <div class="top">
		<a href="detail.jsp">
	 		<img class="othertopimg" src="images/back.png" >
	 	</a>
		<div class="othertoplogo" > <b>차량등록</b> </div>
	</div>
   
   <div class="content">
   		<div>
	         <div class="leftdiv">
	            <img class="carimg" src="images/car2.png">
	         </div>
	         <form action="CarProc.jsp" method="post">
		         <div class="rightdiv">
		            <div class="righttext1"><span class="carnumber">차량번호 관리</span></div>
		            <div class="righttext2"><input class="number" type="text" name="carnumber"></div>
		            <input class="co1" type="submit" value="확인">
		         </div>
	         </form>
	         </div>
   </div>
   <div class="chart">
	   <table>
		   <tr>
			   <th>No.</th>
			   <th>Number</th>
		   </tr>
		   <%
		   		ParkNum_DAO cdao = new ParkNum_DAO();
				ArrayList<ParkNum_DO> V = cdao.getAllParkNum();
	 			for(int i=0; i < V.size(); i++){
	 			ParkNum_DO cdo = V.get(i);
			%>
		   <tr style="background-color: #ffffff;">
			   <td><%=cdo.getNum() %></td>
			   <td><%=cdo.getCarnumber() %></td>
		   </tr>
		   <%
	 			}
		   %>
	   </table>
  </div>
</div>
</body>
</html>