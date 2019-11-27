<%@page import="parkInfo.parkinfo_DO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="parkInfo.parkinfo_DAO"%>
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
		height:100%;
	}
	body{
    	margin:0px;
    	background-color: #F2F2F2;
    	height:100%;
    }
    .container{
      margin: 0px auto;
      width: 100%;
      z-index: 2;
      position: relative;
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
      width: 100%;
      text-align: center;
      padding-top: 8px;
      float: left; 
      position: absolute; 
      z-index: 4;
   }
   #map{
      width:100%;
      height:680px;
   }
   .topimg1{
   		float: left;
		width: 28px;
		float: left;
		padding: 13px 15px;
		position: absolute; 
		z-index: 5;
	}
	
	/* 사이드메뉴 css */
	.navcontainer{
		line-height:40px;
		padding: 0px 8px 0px 17px;
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
	}
	.sideimg{
		width: 21px;
		padding-top:10px;
		padding-right:10px;
	}
	.sideimg2{
		width: 21px;
		padding-top:10px;
		padding-right:10px;
	}
	.sidecloseimg{
		width: 18px;
	}
	
	/* 사이드바 스타일 #595e5f*/
	.sidenav {
		width: 0px;
		margin: 0px auto;
		height:100%;
		position: fixed;
		z-index:20000;
		background-color: #f2f2f5;
		overflow-x: hidden;
		overflow-y: hidden;
		transition:0.5s ease-in-out;
		padding-top: 50px;
		box-shadow: 1px 1px 10px #666;
	}
	.sidenav a {
		text-decoration: none;
		font-size: 15px;
		color: #2f2f33;
		display: block;
		transition: 0.2s ease-in-out;
	}
	.sidenav a:hover {
		color: #100B0B;
	}
	.closebtn {
		position: absolute;
		top: 0;
		right: 15px; /*왼쪽: 247px*/
		font-size: 20px !important;
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
			font-size: 15px;
		}
	}
	
	.btn {
	  cursor: pointer;
	  display: inline-block;
	}
	h3{
		padding-left: 10px;
	}
	.p{
		padding-left: 10px;
		padding-bottom: 10px;
	}
	.park_info{
		height: 100px;
		width: 100%;
		background-color: #ffffff;
		z-index: 1;
		position: absolute;
		bottom: 0px;
	}
	.info1, .info2, .info3, .info4{
      	background-color:#ffffff;
      	position:absolute;
      	z-index:1;
      	bottom:0px;
      	width:100%;
      	padding-left:15px;
	}
	.infoTop{
		height:45px;
		width:100%
	}
	.infoBottom{
		height:20px;
		width:100%;
		padding-bottom:10px;
	}
	.infoCenter{
		height:25px;
		width:100%;
		padding-top:8px;
	}
	.TopLeft{
		float: left;
    	width: 50%;
    	padding-top:16px;
    	font-size:13pt;
	}
	.TopRight{
		padding-top:10px;
		float: right;
    	width: 50%;
    }
    .infostar{
    	float:right;
    	padding-right:15px;
    	height:28px;
    	width:28px;
    }
    .infocall{
    	float:right;
    	padding-right:20px;
    	height:28px;
    	width:28px;
    }
    .parkName{
    	font-size:11pt;
    	text-decoration:none;
    	color:#000000
    }
    .parkAddress{
    	font-size:9pt;
    }
    
     /* 팝업 레이어 -MAP */
	.layerOnMap {
		width:300px;
		height: 215px;
		position:relative;
	/* 	border:solid 1px #ecf1f4; */
	/* 	background:#ffffff; */
		border:solid 1px #555f64;
	/* 	background:#ffffff; */
		border-radius:8px;
		-o-border-radius:8px;
		-moz-border-radius:8px;
		-webkit-border-radius:8px;
		box-shadow:2px 2px 5px rgba(0, 0, 0, 0.5);
	}
	.layerOnMap .title {
		font-size:16px;
		font-weight:bold;
		line-height:38px;
		height:30px;
		padding-left:14px;
		padding-top: 2px;
		border-bottom:solid 1px #d3d6da;
	/* 	background:#ecf1f4; */
		text-shadow:0px 1px 1px rgba(255, 255, 255, 0.5);
		border-radius:7px 7px 0px 0px;
		-o-border-radius:7px 7px 0px 0px;
		-moz-border-radius:7px 7px 0px 0px;
		-webkit-border-radius:7px 7px 0px 0px;
	/* 	margin-bottom:10px; */
		margin-top:0px;
	}
	.layerOnMap .close {
		position: absolute;
		top: 10px;
		right: 10px;
		color: #888;
		width: 17px;
		height: 17px;
	}
	.layerOnMap .close span {
		width:20px;
		height:20px;
		margin:4px 0px 0px 4px;
		padding
		font-size:18px;
		color:#989c9e;
		line-height:20px;
		font-weight:bold;
		border:solid 1px #aeb0b1;
		background:#f8f8f8;
		padding:0px;
		text-align:center;
	}
	.layerOnMap .info {
	/* 	margin-right:10px; */
		padding-top:0px;
	/* 	float:right; */
	/* 	display:inline-block; */
	/* margin-left:110px; */
		width:280px;
	}
	.layerOnMap .info .address {
		margin-bottom:10px;
		width: 300px;
		margin-top:22px;
	}
	.layerOnMap .info .address p {
	/* 	padding-left:8px; */
		letter-spacing:-0.5px;
		line-height:18px;
		white-space:normal;
		font-size: 16px;
		font-weight: bold;
		margin-left: 26px;
		margin-block-start: 0.5em;
	    margin-block-end: 0.5em;
	}
	.layerOnMap .info ul {
		list-style:none;
		margin-left:-13px;
		margin-block-start: 0em;
	    margin-block-end: 0em;
	    padding-left:20px;
	}
	.layerOnMap .info li {
		display:inline-block;
		margin-bottom:7px;
		margin-left:12px;
		margin-block-end: 0em;
	}
	.layerOnMap .info li p {
		padding-left:12px;
		letter-spacing:-0.7px;
		line-height:18px;
		font-size:12px;
		margin: 10px 0px;
	}
	.layerOnMap .info .title {
	/* 	color:#2673af; */
		border:none;
		background:none;
		font-size:12px;
	/* 	font-weight:bold; */
		font-family:"NanumBold";
		padding-left:0px;
		line-height:18px;
		height:18px;
	}
	.layerOnMap .info span.line {
		color:#bbbbbb;
		padding-left:3px;
		padding-right:3px;
		font-weight:normal;
		font-family:dotum;
	}
	.layerOnMap .info .btn {
		float:right;
		margin-top:5px;
	}
	.layerOnMap .info .box {
		clear:both;
		padding:10px 10px 0px 10px;
	}
	.layerOnMap .info .box table {
		border-top:solid 1px #a5a9af;
	}
	.park_start{
		margin-block-start: 0em;
	    margin-block-end: 0em;
	    font-size: 14px;
	    text-align: center;
	    border-top: 1px solid #d3d6da;
	    padding: 10px 10px 0px 10px;
	}
	
	/* 주차종료 버튼 */
	
	.topbtn {
			position: fixed;
			left: -3px;
			bottom: 300px;
			
			z-index: 500;
			width: 28px;
			height: 100px;
			line-height: 80px;	
			text-align: center;
			
			color: #f1f2f2;
			background: #020873;
			border-radius:10%;
			box-shadow: 0px 0px 10px 0px #666;
			transition: all 0.1s ease-in-out;
			
		}
		.arrowright{
			width: 18px;
			margin-top: 40px;
			margin-left:3px;
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
			document.getElementById('sidetext5').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext5').style.transition = 'all 0.5s';
			document.getElementById('sidetext6').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext6').style.transition = 'all 0.5s';
			document.getElementById('sidetext7').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext7').style.transition = 'all 0.5s';
			document.getElementById('sidetext8').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext8').style.transition = 'all 0.5s';
			document.getElementById('sidetext9').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext9').style.transition = 'all 0.5s';
			document.getElementById('sidetext10').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext10').style.transition = 'all 0.6s';
			document.getElementById('sidetext11').style.transform = 'translate3d(0,0,0)';
			document.getElementById('sidetext11').style.transition = 'all 0.6s';
			
			
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
			document.getElementById('sidetext5').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext5').style.transition = 'all 1.0s';
			document.getElementById('sidetext6').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext6').style.transition = 'all 1.0s';
			document.getElementById('sidetext7').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext7').style.transition = 'all 1.0s';
			document.getElementById('sidetext8').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext8').style.transition = 'all 1.0s';
			document.getElementById('sidetext9').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext9').style.transition = 'all 1.0s';
			document.getElementById('sidetext10').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext10').style.transition = 'all 0.7s';
			document.getElementById('sidetext11').style.transform = 'translate3d(-300px,0,0)';
			document.getElementById('sidetext11').style.transition = 'all 0.7s';
		}
	</script>
	
<div class="container">
	<!--============================  사이드메뉴    ============================-->
	<div id="mysidenav" class="sidenav">
		<a href="#" class="closebtn" onclick='closeNav()'><img class="sidecloseimg" src="images/close4.png"></a>
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
	 		String decpage=null;
	 		
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
		 		decpage="Login.jsp";
	        }

	        else // 로그인 했을 경우
	        {
	        	id=session.getAttribute("MemberID").toString();
	        	login="로그아웃";
	        	loginpage="LogoutProc.jsp";
	        	namepage="detail.jsp";
	        	mileagepage="Mileage.jsp";
	        	parkpage="Parkhistory.jsp";
		 		ideapage="dec2.jsp";
		 		problempage="dec1.html";
		 		supportpage="Customer.jsp";
		 		decpage="dec2.jsp";
	        }
    	%>

		<a href=<%=namepage %> id="sidetext1" style="font-size:30px; padding:0px 0px 25px 17px; font-weight: 8px; color:#2f2f33;"> 
			<b><%=id %></b>님
		</a> 
		

		<!-- <div class="navcontainer" id="sidetext3">
		 	<div style="float:left;"><img class="sideimg" src="images/discount2.png"></div>
		 	<div class="navtext"><a href=<%=mileagepage %>>쿠폰</a></div>
		</div> -->

		<div class="navcontainer" id="sidetext4" style="padding-left:16px;">
		 	<div style="float:left;"><img class="sideimg" src="images/notepad.png"></div>
		 	<div class="navtext"><a href=<%=parkpage %>>주차내역</a></div>
		</div>
		
		

		<!-- <div class="navcontainer" id="sidetext5">
		 	<div style="float:left;"><img class="sideimg" src="images/carnumber3.png"></div>
		 	<div class="navtext"><a href="#">차량번호</a></div>
		</div> -->

		
		
		<hr id="sidetext7" size="0.7" style="margin: 4px 15px 4px 15px;">
		
		<div class="navcontainer" id="sidetext8">
		 	<div style="float:left;"><img class="sideimg2" src="images/alarm1.png" style="width: 20px;"></div>
		 	<div class="navtext">
			 	<a href=<%=decpage %>>
					<label class="btn" for="open-pop">주차신고</label>
				</a>
			</div>
		</div>
		
		<hr id="sidetext3" size="0.4" style="margin: 4px 15px 4px 15px;">
		
		<div class="navcontainer" id="sidetext9">
		 	<div style="float:left;"><img class="sideimg2" src="images/information2.png" style="width: 20px;"></div>
		 	<div class="navtext">
			 	<a href=<%=supportpage %>>
					고객센터
				</a>
			</div>
		</div>
		
		<hr id="sidetext5" size="0.7" style="margin: 4px 15px 4px 15px;">
		
		<div class="navcontainer" id="sidetext6" style="padding-left:19px;">
		 	<div style="float:left;"><img class="sideimg2" src="images/logout.png" style="width: 20px;"></div>
		 	<div class="navtext">
			 	<a href=<%=loginpage %>>
					<%=login %>
				</a>
			</div>
		</div>
		
		<hr id="sidetext2" size="0.4" style="margin: 4px 15px 4px 15px;">
		
		<div id="sidetext10" style="float: left;">
			<img src="images/headset.png" style="width: 37px; margin: 28px 15px 0px 57px;">
		</div>
		
		 <div id="sidetext11" style="margin-top: 25px;">
			<div style="color:#585757; font-size: 12px;"><b>문의전화</b></div>
			<div style="margin-bottom: 2px;"> 
				 <a href="tel:02-2290-2114" style="color:#020873; text-decoration:none; font-size: 18px; ">
				 	<b>2290-2114</b>
				 </a>
			</div>
			<div style="color:#9e9e9e; font-size: 12px;">평일 : 09:00~12:00</div>
		</div>
		
		
	</div>
	
	<!--============================   지도      ============================-->
	<div id="map">
	
		<!--========================== 사이드메뉴 =================================-->
		<div class="topbtn">
				<span class="openmenu" onclick='openNav()'>
					<img class="arrowright" src="images/arrowright.png">
				</span>
		</div>
		
	</div>	

	<!-- 지도 정보 넘겨오기 -->
	<jsp:useBean id="parkinfo" class="parkInfo.parkinfo_DAO"/>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=afc73e8708a1877789df9bde0957eb90"></script>
	<!--============================ 지도 js ============================-->
	<script type="text/javascript">
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
		
		// 지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption),
	    customOverlay = new kakao.maps.CustomOverlay({}),
	    infowindow = new kakao.maps.InfoWindow({removable: true});
		
		var park_num='${park.num}';
		var park_title='${park.title}';
		var park_loc='${park.loc}';
		var park_days='${park.days}';
		var park_sat='${park.sat}';
		var park_holiday='${park.holiday}';
		var park_money='${park.money}';
		var park_minmoney='${park.minmoney}';
		var park_addmoney='${park.addmoney}';
		var park_latlng='${park.latlng}';
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
		    {
		    	title: '우성빌라',
		        latlng: new kakao.maps.LatLng(37.56021616547572,127.04900152694783),
		        loc1: '서울 성동구 사근동11길 33-4',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    },
		    {
		    	title: '한양빌라',
		        latlng: new kakao.maps.LatLng( 37.5606532635643 ,127.0487245192135),
		        loc1: '서울 성동구 살곶이4길 6-5',
		        mtwtf: '24시간',
		        sat: 'X',
		        so: 'X',
		        money: '2500원',
		        money_min: '2500원',
		        money_add: '500원'
		    },
		    {
		    	title: '그랜져빌라',
		        latlng: new kakao.maps.LatLng(37.55968061691981 ,127.04767131414454),
		        loc1: '서울 성동구 사근동12길 19',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    },
		    {
		    	title: '현대빌라',
		        latlng: new kakao.maps.LatLng(37.55982074970659,127.04647169581078 ),
		        loc1: '서울 성동구 사근동8길 14-10',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    },
		    {
		    	title: '성창빌딩',
		        latlng: new kakao.maps.LatLng(37.571406, 126.993685),
		        loc1: '서울특별시 종로구 서순라길 17',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    }
		    ,{
		    	title: '소망빌딩',
		        latlng: new kakao.maps.LatLng(37.529874, 127.141681),
		        loc1: '서울특별시 강동구 둔촌2동 77-86',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    },
		    {
		    	title: '다성빌리지',
		        latlng: new kakao.maps.LatLng(37.512090, 127.115645),
		        loc1: '서울특별시 송파구 방이동 145-58',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    },
		    {
		    	title: '세인빌딩',
		        latlng: new kakao.maps.LatLng(37.534527, 127.081011),
		        loc1: '서울특별시 광진구 자양동 뚝섬로51길 49',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    },
		    {
		    	title: '윤성빌딩',
		        latlng: new kakao.maps.LatLng(37.544935, 127.073873),
		        loc1: '서울특별시 광진구 화양동 93-2',
		        mtwtf: '24시간',
		        sat: '24시간',
		        so: '24시간',
		        money: '3000원',
		        money_min: '3000원',
		        money_add: '500원'
		    }
		];

		for(var i=0,len=positions.length; i<len; i++){
			displayMarker(positions[i]);
		}
		
		function displayMarker(positions){
			//마커생성
			var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: positions.latlng, // 마커의 위치
			        title : positions.title// 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			    });
			
			// 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
		    // 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
		    kakao.maps.event.addListener(marker, 'mouseover', function(mouseEvent) {
		        customOverlay.setPosition(mouseEvent.latLng); 
		        customOverlay.setMap(map);
		    });
			
			// 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경합니다 
		    kakao.maps.event.addListener(marker, 'mousemove', function(mouseEvent) {
		        
		        customOverlay.setPosition(mouseEvent.latLng); 
		    });
			
		    // 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
		    // 커스텀 오버레이를 지도에서 제거합니다 
		    kakao.maps.event.addListener(marker, 'mouseout', function() {
		        customOverlay.setMap(null);
		    }); 
		    
		    
			kakao.maps.event.addListener(marker,'click',function(mouseEvent){
				var content = '<div class="layerOnMap">' +

                '<p id="parkInfoParkName" class="title">우성빌라</p>' +

                '<div class="info"><div class="address"><p>&nbsp;' + positions.loc1 + '</p></div>' +

                '<ul><li><span class="title" style="margin-top: 5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;운영시간</span><p><span>평일: ' + positions.mtwtf + '</span><br>' +

                '<span>토요일: ' + positions.sat + '</span><br><span>공휴일: ' + positions.so + '</span><br></p></li>' +

                '<li><span class="title" style="margin-left:83px; margin-top: 5px;">주차요금</span><p><span style="margin-left:51px;">1시간 기준' + positions.money + '</span><br>' +

                '<span class="color_blue" style="color:; margin-left:79px;">최소 ' + positions.money_min + '</span><br>' +

                '<span class="color_blue" style="color:; margin-left:47px;">추가 10분당 ' + positions.money_add + '</span></p></li></ul></div>' +
                
                '<div><p class="park_start"><a href="Main.jsp" style="color: #f04137; text-decoration: none;">주차시작</a></p></div></div>';
			
            infowindow.setContent(content);

            infowindow.setPosition(positions.latlng);

            infowindow.setMap(map);
			
        });
		}
		</script>
		
		
		<!-- 자신의 현재 위치 -->
		<script type="text/javascript">
		//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		    
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        
		        var lat = position.coords.latitude, // 위도
		            lon = position.coords.longitude; // 경도
		        
		        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
		        
		        // 마커와 인포윈도우를 표시합니다
		        displayMarker(locPosition, message);
		            
		      });
		    
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		    
		    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
		        message = 'geolocation을 사용할수 없어요..';
		        
		    displayMarker(locPosition, message);
		}
		
		var imageSrc = 'images/circle.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(20, 20); // 마커이미지의 크기입니다
		  
		//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); // 마커가 표시될 위치입니다
		
		
		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {
		
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({  
		        map: map, 
		        position: locPosition,
		        image : markerImage
		    }); 
		    
		    // 지도 중심좌표를 접속위치로 변경합니다
		    map.setCenter(locPosition);      
		}    
	</script>
	
</div>

</body>

</html>