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
      z-index:2;
      position:relative;
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
	
	/* 사이드메뉴 css */
	.navcontainer{
		line-height:40px;
		padding: 10px 8px 10px 32px;
		display: block;
		transition: 0.2s ease-in-out;
	}
	.navcontainer a:hover {
		color: #100B0B;
	}
	.navtext{
		color: #F1F2F2;
		text-decoration: none;
		font-size: 15px;
		padding-top: 5px;
	}
	.sideimg{
		width: 29px;
		padding-top:10px;
		padding-right:10px;
	}
	.sideimg2{
		width: 24px;
		padding-top:10px;
		padding-right:15px;
	}
	.sidecloseimg{
		width: 20px;
	}
	
	/* 사이드바 스타일 */
	.sidenav {
		width: 0px;
		margin: 0px auto;
		height:100%;
		position: fixed;
		z-index:2;
		background-color: #595e5f;
		overflow-x: hidden;
		overflow-y: hidden;
		transition:0.5s ease-in-out;
		padding-top: 60px;
	}
	.sidenav a {
		text-decoration: none;
		font-size: 15px;
		color: #F1F2F2;
		display: block;
		transition: 0.2s ease-in-out;
	}
	.sidenav a:hover {
		color: #100B0B;
	}
	.closebtn {
		position: absolute;
		top: 0;
		right: 247px; /*오른쪽: 15px*/
		font-size: 36px !important;
		margin-top: 18px;
		margin-left: 50px;
	}
	.openmenu:hover {
		transition:0.5s ease-in-out;
	}
	.openmenu {
		cursor:pointer;
		transition:0.5s ease-in-out;
	}
	
	/* 미디어쿼리 적용 */
	@media screen and (max-height:450px) {
		.sidenav {
			padding-top:15px;
		}
		.sidenav a {
			font-size: 18px;
		}
	}
	
	/* 신고 css */
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
	  width: 250px;
	  height: 160px;
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
		padding-left: 10px;
	}
	p{
		padding-left: 10px;
		padding-bottom: 10px;
	}
	.pTop{
		height:35px;
		padding-top:15px;
	}
	.sBookmark{
		float:left;
		padding-left:20px;
	}
	.sCancel{
		float:right;
		padding-right:20px;
	}
	.pAddress{
		text-align:center;
		font-size:9pt;
		color:#9E9E9E;
	}
	.bookmark{
		height:25px;
		width:25px;
	}
	.pTopName{
		padding-left: 112px;
		float:left;
		text-align:center;
		color:#5E5E5E;
		font-size:14pt;
		font-weight:bold;
	}
	.pCancel{
		height:18px;
		width:18px;
	}
	.inner{
		padding-top:10px;
		height:200px;
		width:400px;
	}
	.double{
		height:30px;
		width:100%;
		padding-top:10px;
	}
	.cBorder{
		border:1px solid #B4B4B4;
		height:25px;
		width:44.5%;
		float:left;
		margin-left:20px;
		text-align:center;
		display:table-cell;
	}
	.sBorder{
		border:1px solid #B4B4B4;
		height:25px;
		width:44.5%;
		float:right;
		margin-right:20px;
		text-align:center;
		display:table-cell;
	}
	.iCall{
		height:17px;
		width:17px;
		margin-right:4px;
		vertical-align:middle;
	}
	.iShare{
		height:18px;
		width:18px;
		margin-right:4px;
		vertical-align:middle;
	}
	.fCall{
		font-size:10pt;
		vertical-align: middle;
	}
	.fShare{
		font-size:10pt;
		vertical-align:middle;
	}
	.pLine{
		height:3px;
		width:98%;
		background-color:#C6C6C6;
		border:1px solid #C6C6C6;
	}
	.pHr{
		height:1px;
		width:98%;
		background-color:#C6C6C6;
		border:1px solid #C6C6C6;
	}
	.pCon{
		height:70px;
		width:100%;
		margin-top:15px;
	}
	.picon{
		height:40px;
		width:40px;
		margin-left:45px;
	}
	.ptext{
		margin-left:30px;
		font-size:10pt;
	}
	.ptext2{
		margin-left:35px;
		font-size:10pt;
	}
	.ptext3{
		margin-left:20px;
		font-size:10pt;
	}
	.pTopMenu{
		width:100%;
		height:40px;
		font-size:10pt;
	}
	.detailMenu1{
		float:left;
		width:33%;
		padding-bottom:7px;
		border-bottom:3px solid #020873;
		text-align:center;
		color:#020873;
	}
	.detailMenu2{
		float:left;
		width:33%;
		padding-bottom:7px;
		border-bottom:3px solid #C6C6C6;
		text-align:center;
	}
	.detailMenu3{
		float:left;
		width:33%;
		padding-bottom:7px;
		border-bottom:3px solid #C6C6C6;
		text-align:center;
	}
	.pDetailInfo{
		margin-bottom:15px;
	}
	.feeInfo{
		margin-left:20.5px;
		padding-top:5px;
		padding-bottom:10px;
	}
	.feeTable{
		border:1px solid #909090;
		border-collapse:collapse;
		width:90%;
		margin:auto;
	}
	.feeTh{
		text-align:center;
		border:1px solid #909090;
		font-size:10pt;
		padding:4px 7px 4px 7px;
		background-color:#C6C6C6;
	}
	.feeTd{
		text-align:center;
		border:1px solid #909090;
		font-size:10pt;
		padding:4px 7px 4px 7px;
	}
	.operate{
		margin-left:20.5px;
		padding-top:15px;
		padding-bottom:10px;
	}
	.operateTable{
		border:1px solid #909090;
		border-collapse:collapse;
		width:90%;
		margin:auto;
		maring-bottom:10px;
	}
	.operTh{
		text-align:center;
		border:1px solid #909090;
		font-size:10pt;
		padding:4px 7px 4px 7px;
		background-color:#C6C6C6;
	}
	.operTd{
		text-align:center;
		border:1px solid #909090;
		font-size:10pt;
		padding:4px 7px 4px 7px;
	}
</style>
</head>
<body>
	<!--============================ 사이드메뉴 js ============================-->
	<script type="text/javascript">
		function openNav() {
			document.getElementById('mysidenav').style.width = '285px';
			document.getElementById('sidetext1').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext1').style.transition = 'all 0.5s';
			document.getElementById('sidetext2').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext2').style.transition = 'all 0.5s';
			document.getElementById('sidetext3').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext3').style.transition = 'all 0.5s';
			document.getElementById('sidetext4').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext4').style.transition = 'all 0.5s';
			//document.getElementById('sidetext5').style.transform = 'translate3d(0,0,0)';
			//document.getElementById('sidetext5').style.transition = 'all 0.5s';
			document.getElementById('sidetext6').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext6').style.transition = 'all 0.5s';
			document.getElementById('sidetext7').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext7').style.transition = 'all 0.5s';
			document.getElementById('sidetext8').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext8').style.transition = 'all 0.5s';
			document.getElementById('sidetext9').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext9').style.transition = 'all 0.5s';
			
		}
		function closeNav() {
			document.getElementById('mysidenav').style.width = '0';
			document.getElementById('sidetext1').style.transition = 'all 1.0s';
			document.getElementById('sidetext1').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext1').style.transition = 'all 1.0s';
			document.getElementById('sidetext2').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext2').style.transition = 'all 1.0s';
			document.getElementById('sidetext3').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext3').style.transition = 'all 1.0s';
			document.getElementById('sidetext4').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext4').style.transition = 'all 1.0s';
			//document.getElementById('sidetext5').style.transform = 'translate3d(-300px,0,0)';
			//document.getElementById('sidetext5').style.transition = 'all 1.0s';
			document.getElementById('sidetext6').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext6').style.transition = 'all 1.0s';
			document.getElementById('sidetext7').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext7').style.transition = 'all 1.0s';
			document.getElementById('sidetext8').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext8').style.transition = 'all 1.0s';
			document.getElementById('sidetext9').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext9').style.transition = 'all 1.0s';
		}
	</script>

<div class="container">
	<!--============================  사이드메뉴    ============================-->
	<div id="mysidenav" class="sidenav">
		<a href="#" class="closebtn" onclick='closeNav()'><img class="sidecloseimg" src="images/close2.png"></a>
		<%
			String id=null;
			String login=null;
			String namepage=null;
			String mileagepage=null;
			String parkpage=null;
	 		String loginpage=null;
	 		String spampage=null;
	 		String ideapage=null;
	 		String problempage=null;
	 		String supportpage=null;
	        if(session.getAttribute("MemberID") == null) // 로그인이 안되었을 때
	        { 
	        	id="Guest";
	        	login="로그인";
	        	namepage="Login.jsp";
	        	mileagepage="Login.jsp";
	        	parkpage="Login.jsp";
	        	loginpage="Login.jsp";
	        	spampage="Login.jsp";
		 		ideapage="Login.jsp";
		 		problempage="Login.jsp";
		 		supportpage="Login.jsp";
	        }
	        else // 로그인 했을 경우
	        {
	        	id=session.getAttribute("MemberID").toString();
	        	login="로그아웃";
	        	loginpage="LogoutProc.jsp";
	        	namepage="Detail.jsp";
	        	mileagepage="Mileage.jsp";
	        	parkpage="Parkhistory.jsp";
		 		ideapage="dec2.jsp";
		 		problempage="dec1.html";
		 		supportpage="Customer.jsp";
	        }
    	%>
		<a href=<%=namepage %> id="sidetext1" style="font-size:30px; padding:0px; text-align:center;"> 
		<%=id %></a> 
		<hr id="sidetext2" size="0.7">
		<div class="navcontainer" id="sidetext3">
		 	<div style="float:left;"><img class="sideimg" src="images/mileage.png"></div>
		 	<div class="navtext"><a href=<%=mileagepage %>>마일리지</a></div>
		</div>
		<div class="navcontainer" id="sidetext4">
		 	<div style="float:left;"><img class="sideimg" src="images/search1.png"></div>
		 	<div class="navtext"><a href=<%=parkpage %>>주차내역</a></div>
		</div>
		<!-- <div class="navcontainer" id="sidetext5">
		 	<div style="float:left;"><img class="sideimg" src="images/carnumber3.png"></div>
		 	<div class="navtext"><a href="#">차량번호</a></div>
		</div> -->
		<div class="navcontainer" id="sidetext6">
		 	<div style="float:left;"><img class="sideimg2" src="images/login.png"></div>
		 	<div class="navtext">
		 	<a href=<%=loginpage %>>
			<%=login %></a></div>
		</div>
		<hr id="sidetext7" size="0.7">
		<a href="#" id="sidetext8" style="font-size: 12px; padding: 10px 8px 10px 32px;">
			<label class="btn" for="open-pop">신고</label>
		</a>
		<a href=<%=supportpage %> id="sidetext9" style="font-size: 12px; padding: 10px 8px 10px 32px;">
			고객센터
		</a>
	</div>
	
	<!--============================  신고메뉴    ============================-->
	<input class="modal-state" id="open-pop" type="checkbox" />
	<div class="modal">
	  <label class="modal_bg" for="open-pop"></label>
	  <div class="modal_inner">
	    <!-- <label class="modal_close" for="open-pop"></label> -->
	    <h3>문제 신고</h3>
	    <hr style="border: solid 0.5px #f1f2f2;">
	    <p>스팸이나 악용 사례 신고</p>
	    <p><a href=<%=ideapage %> style="text-decoration:none; color: #000000;">의견 보내기</a></p>
	    <p><a href=<%=problempage %> style="text-decoration:none; color: #000000;">문제 신고</a><p>
	  </div>
	</div>
	
	<!--============================  상단바    ============================-->
	
	<div class="pTop">
		<div class="sBookmark"><img class="bookmark" src="images/star.png"></div>
		<div class="pTopName">우성빌라</div>
		<div class="sCancel"><a href="Main.jsp"><img class="pCancel" src="images/cancel.png"></a></div>
	</div>
	<div class="pAddress">서울 성동구 사근동11길 33-4</div>
	<img class="inner" src="images/inner.PNG">
	<div class="double">
		<div class="cBorder">
			<img class="iCall" src="images/call.png">
			<span class="fCall">통화</span>
		</div>
		<div class="sBorder">
			<img class="iShare" src="images/share.png">
			<span class="fShare">공유</span>
		</div>
	</div>
	<hr class="pLine">
	<div>
		<div class="pCon">
			<img class="picon" src="images/sign.png">
			<img class="picon" src="images/machine.png">
			<img class="picon" src="images/suv.png">
			<img class="picon" src="images/wheelchair.png">
			<span class="ptext">공터 주차장</span>
			<span class="ptext">기계식</span>
			<span class="ptext2">SUV 가능</span>
			<span class="ptext3">장애인 주차</span>
		</div>
	</div>
	<hr class="pHr">
	<div class="pTopMenu">
		<div class="detailMenu1">기본정보</div>
		<div class="detailMenu2">제휴매장</div>
		<div class="detailMenu3">취소/환불</div>
	</div>
	
	<div class="pDetailInfo">
		<div class="feeInfo">요금정보</div>
		<table class="feeTable">
			<tr>
				<th class="feeTh">기본요금</th>
				<th class="feeTh">추가요금</th>
				<th class="feeTh">최대요금(일)</th>
			</tr>
			<tr>
				<td class="feeTd">5분 150원</td>
				<td class="feeTd">5분 150원</td>
				<td class="feeTd">15,000원</td>
			</tr>
		</table>
		<div class="operate">운영시간</div>
		<table class="operateTable">
			<tr>
				<th class="operTh">평일</th>
				<td class="operTd">08:00~18:00</td>
			</tr>
			<tr>
				<th class="operTh">토요일</th>
				<td class="operTd">08:00~18:00</td>
			</tr>
			<tr>
				<th class="operTh">공휴일</th>
				<td class="operTd">15:00~18:00</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>