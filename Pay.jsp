<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width"/>
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300&display=swap&subset=korean" rel="stylesheet">
<style>
	/* 메인 css */
	html{
		font-family: 'Noto Sans KR', sans-serif;
	}
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
      background-color: #f1f2f2;
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
	
	/* Pay.jsp css */
	
   .PTitle{
       font-size:16pt;
       padding-left:25px;
       padding-top:15px;
       padding-bottom:5px;
   }
   .PHrWid{
       width:95%
   }
   .PCouponTitle{
   		border: 1px solid #D8D8D8;
   		height:35px;
   		margin-left:8px;
   		margin-right:8px;
   		line-height:40px;
   		padding:0px 0px 9px 10px;
   		margin-bottom:15px;
   }
   .PRegister{
   		border: 1px solid #D8D8D8;
   		padding:3px 5px 3px 5px;
   		margin-left:150px;
   		font-size:9pt;
   }
   .PDiscountContent{
   		border: 1px solid #D8D8D8;
   		height:115px;
   		width:auto;
   		margin-left:8px;
   		margin-right:8px;
   		margin-bottom:15px;
   }
   .PDiscount{
   		border-bottom: 1px solid #D8D8D8;
   		height:60px;
   		padding-left:15px;
   		padding-top:10px;
   }
   .POriginalMoney{
   		float:right;
   		padding-right:15px;
   }
   .PDiscountMoney{
   		float:right;
   		padding-right:15px;
   }
   .PFinalMoney{
   		float:right;
   		padding-right:15px;
   }
   .PFinalDiscount{
   		padding-left:15px;
   		padding-top:10px;
   		padding-bottom:10px;
   		color:#02085A;
   		background-color:#DCE6E6;
   }
   .PPayTitle{
   		border: 1px solid #D8D8D8;
   		height:40px;
   		margin-left:8px;
   		margin-right:8px;
   		line-height:40px;
   		padding-left:10px;
   }
   .PTitleText{
   		padding-left:10px;
   		font-size:12pt;
   		vertical-align: middle;
   }
   .PTitleImage{
   		height:25px;
   		width:25px;
   		text-align:center;
   		vertical-align: middle;
   		
   }
   .PPayContent{
   		border: 1px solid #D8D8D8;
   		height:155px;
   		width:auto;
   		margin-left:8px;
   		margin-right:8px;
   		margin-bottom:15px;
   }
   .PJoinMenu{
       margin-top:15px;
       margin-left:18px;
       height:40px;
       width:auto;
   }
   .PTopMenu1{
       float: left;
       width: 31%;
       border: 1px solid #D8D8D8;
       background-color:#EAEAEA;
       text-align: center;
       font-size:12pt;
       padding:5px 0px 5px 0px;
       border-top-left-radius:5px;
       border-bottom-left-radius:5px;
   }
   .PTopMenu2{
       float: left;
       width: 31%;
       border: 1px solid #D8D8D8;
       background-color:#EAEAEA;
       text-align: center;
       font-size:12pt;
       padding:5px 0px 5px 0px;
   }
   .PTopMenu3{
       float: left;
       width: 31%;
       border: 1px solid #D8D8D8;
       background-color:#EAEAEA;
       text-align: center;
       font-size:12pt;
       padding:5px 0px 5px 0px;
       border-top-right-radius:5px;
       border-bottom-right-radius:5px;
   }
   .PJoinMenu2{
       margin-top:10px;
       margin-left:18px;
       height:80px;
       width:auto;
   }
   .PBottomMenu1{
       float: left;
       width: 31%;
       border: 1px solid #D8D8D8;
       background-color:#EAEAEA;
       text-align: center;
       font-size:11pt;
       padding:8px 0px 5px 0px;
       border-top-left-radius:5px;
       border-bottom-left-radius:5px;
   }
   .PBottomMenu2{
       float: left;
       width: 31%;
       border: 1px solid #D8D8D8;
       background-color:#EAEAEA;
       text-align: center;
       font-size:11pt;
       padding:8px 0px 5px 0px;
   }
   .PBottomMenu3{
       float: left;
       width: 31%;
       border: 1px solid #D8D8D8;
       background-color:#EAEAEA;
       text-align: center;
       font-size:11pt;
       padding:8px 0px 5px 0px;
       border-top-right-radius:5px;
       border-bottom-right-radius:5px;
   }
   .PMenuImage1{
       height:38px;
       width:40px;
       align:center;
       margin-left:auto;
       margin-right:auto;
   }
   .PMenuImage2{
       height:35px;
       width:35px;
       align:center;
       margin-left:auto;
       margin-right:auto;
       padding-bottom:3px;
   }
   .PPayButton{
   		border: 1px solid #D8D8D8;
   		height:33px;
   		margin-left:8px;
   		margin-right:8px;
   		text-align:center;
   		padding-top:7px;
   		color:#FFFFFF;
   		background-color:#020873;
   } 
   
   /* 여기가 카메라 버튼 */
   .filebox{
   		display:inline-block;	
   		margin-left:190px;
   }
   .filebox label { 
   	   display: inline-block; 
	   padding: .2em .55em; 
	   color: #FFFDFD;
	   font-size: 10pt; 
	   line-height: normal; 
	   vertical-align: middle; 
	   background-color: #B9B8B8; 
	   cursor: pointer; 
	   border: 1px solid #ebebeb; 
	   border-bottom-color: #e2e2e2; 
	   border-radius: .25em; 
	} 
   .filebox input[type="file"] {
    /* 파일 필드 숨기기 */ 
	   position: absolute; 
	   width: 1px; 
	   height: 1px; 
	   padding: 0; 
	   margin: -1px; 
	   overflow: hidden; 
	   clip:rect(0,0,0,0); 
	   border: 0; 
   }
  /* 쿠폰 css */
	.modal {
	  font-size: 11px;
	  z-index: 999;
	  opacity: 0;
	  visibility: hidden;
	  position: fixed;
	  top: 0;
	  right: 0;
	  bottom: 0;
	  left: 0;
	  text-align: left;
	  background: rgba(0,0,0, .6);
	  transition: opacity .25s ease;
	}
	.modal_bg {
	  position: absolute;
	  top: 0;
	  right: 0;
	  bottom: 0;
	  left: 0;
	  cursor: pointer;
	}
	.modal-state {
	  display: none;
	}
	.modal-state:checked + .modal {
	  opacity: 1;
	  visibility: visible;
	}
	
	.modal-state:checked + .modal .modal__inner {
	  top: 0;
	}
	
	.modal_inner {
	  transition: top .25s ease;
	  position: absolute;
	  top: -20%;
	  right: 0;
	  bottom: 0;
	  left: 0;
	  width: 320px;
	  height: 150px;
	  margin: auto;
	  overflow: auto;
	  background: #fff;
	  border-radius: 5px;
	}
	
	.modal_close {
	  position: absolute;
	  right: 1em;
	  top: 1em;
	  width: 1.1em;
	  height: 1.1em;
	  cursor: pointer;
	}
	
	.modal_close:after,
	.modal_close:before {
	  content: '';
	  position: absolute;
	  width: 2px;
	  height: 1.5em;
	  background: #ccc;
	  display: block;
	  transform: rotate(45deg);
	  left: 50%;
	  margin: -3px 0 0 -1px;
	  top: 0;
	}
	
	.modal_close:hover:after,
	.modal_close:hover:before {
	  background: #aaa;
	}
	
	.modal_close:before {
	  transform: rotate(-45deg);
	}
	
	@media screen and (max-width: 768px) {
		
	  .modal_inner {

	    box-sizing: border-box;
	  }
	}
	
	.btn {
	  cursor: pointer;
	  display: inline-block;
	}
	h3{
		text-align:center;
	}
	p{
		padding-left: 10px;
		padding-bottom: 10px;
	} 
	
	/*input, button */
	input.form-control {
		display: block;
	    width: 82%;
	    height: 20px;
	    padding: 6px 14px;
	    font-size: 14px;
	    line-height: 1.57142857;
	    color: #555;
	    background-color: #fff;
	    background-image: none;
	    border: 1px solid #cfd3cc;
	    border-radius: 2px;
	    -webkit-box-shadow: none;
	    box-shadow: none;
	    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
	    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
	    margin: 0;
	    margin-left: 10px;
    }
    
    .btn {
	    display: block;
	    padding: 6px 14px;
	    margin-bottom: 0;
	    font-size: 14px;
	    font-weight: normal;
	    line-height: 1.57142857;
	    text-align: center;
	    white-space: nowrap;
	    vertical-align: middle;
	    cursor: pointer;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	    background-image: none;
	    background-clip: padding-box;
	    border: 1px solid transparent;
	    border-radius: 2px;
	    background:#020873;
	    color: #fff;
	    margin-right: 10px;
	}
	
	.pull-right {
	  	float:right;
	}
	
	.s-margin-left {
	    margin-left: 10px;
	}
</style>
</head>
<body>
<%
	String price = request.getParameter("price");
	session.setAttribute("price", price);
%>
<div class="container">
   <div class="top" style="margin-bottom: 20px;">
		<a href="Main.jsp">
	 		<img class="othertopimg" src="images/back.png" >
	 	</a>
		<div class="othertoplogo" > <b>결제</b> </div>
	</div>

   <div class="PCouponTitle"><img class="PTitleImage" src="images/ticket.png"><span class="PTitleText">쿠폰 적용</span> 
   			<div class="filebox"><label class="btn" for="open-pop">등록하기</label></div>
   </div>
   
   <div class="PPayTitle"><img class="PTitleImage" src="images/won.png"><span class="PTitleText">최종 결제금액</span></div>
   <div class="PDiscountContent">
	   <div class="PDiscount">
	       	<span>정산 금액</span>
	       	<span class="POriginalMoney"><%=price %>원</span>
	       	<br>
	   		<div><span style="margin-top:5px;float:left;">쿠폰 할인</span></div>
	   		<%
   				String result = "";
				Object prenum = request.getSession().getAttribute("rnum");
				//String ornum = (String)request.getSession().getAttribute("ornum");
   				String res = "";
   				if(request.getSession().getAttribute("rnum")==null){
   					res = "0";
   				}else if(prenum.equals(1)){
   					res = "3000";
   				}else if(prenum.equals(2)){
   					res = "0";
   				}
	   		%>
	   		
	   		<span class="PDiscountMoney" style="margin-top:5px;"><%=res %>원</span>
	   </div>
	   
	   <%
	   		int finalprice = 0;
	   		int price1 = Integer.parseInt(price.toString());
	   		int res1 = Integer.parseInt(res);
	   %>
	   
	   <div class="PFinalDiscount">
	   		<span>총 결제 금액</span>
	   		<span class="PFinalMoney">
				<%
					if(price1-res1 < 0){
						finalprice = 0;
					}else{
						finalprice = price1-res1;
					}
				%>
				<%= finalprice %>원
			</span>
	   </div>
   </div>
   
   <div class="PPayTitle"><img class="PTitleImage" src="images/credit-card.png"><span class="PTitleText">결제정보</span></div>
   <div class="PPayContent">
	   <div class="PJoinMenu">
	       <div class="PTopMenu1">카드 간편결제</div>
	       <div class="PTopMenu2">계좌 간편결제</div>
	       <div class="PTopMenu3">일반 결제</div>
	   </div>
	   <div class="PJoinMenu2">
	       <div class="PBottomMenu1"><img class="PMenuImage1" src="images/credit-card.png"><div>신용카드</div></div>
	       <div class="PBottomMenu2"><img class="PMenuImage2" src="images/pay.png"><div>휴대폰</div></div>
	       <div class="PBottomMenu3"><img class="PMenuImage2" src="images/bank.png"><div>무통장입금</div></div>
	   </div>
   </div>
   
   <div class="PPayButton"><a href="Main2.jsp" style="color:#f1f2f2; text-decoration: none;">결제하기</a></div>
   
  <!--============================  쿠폰    ============================-->
	<input class="modal-state" id="open-pop" type="checkbox" />
	<div class="modal">
	  <label class="modal_bg" for="open-pop"></label>
	  <div class="modal_inner">
	    <!-- <label class="modal_close" for="open-pop"></label> -->
	    <h3>쿠폰 등록</h3>
	    <hr style="border: solid 0.5px #f1f2f2; margin-bottom: 25px;">
	    <div class="wrap">
		   <div class="search">
		   		<form method="post" action="payProc.jsp">
	  				<button class="pull-right btn btn-lg btn-primary s-margin-bottom s-margin-left" type="submit">등록</button>
	  				<div style="overflow: hidden;">
	      				<input type="text" class="form-control" id="email" name="coupon" placeholder="쿠폰번호 입력">
					</div>
				</form>
			   </div>
			</div>
	  </div>
	</div>

</div>
</body>
</html>