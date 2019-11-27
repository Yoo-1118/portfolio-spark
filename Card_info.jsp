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
	
	/* 상단바 css */
	.othertopimg{
   		float: left;
		width: 28px;
		padding: 13px 10px;
	}
	.othertoplogo{
		width: 77%;
		float: left;
		color: #F1F2F2;
		font-size: 21px;
		padding-top: 13px;
		text-align: center;
	}
	
	/* Card_info.jsp css */
	.ci1{
   		background-color: #FFFFFF;
   		height: 76px;
   		margin:13px;
   		border-radius:5px;
   }
   .ci2{
   		height: 58px;
   		width: 50px;
   		padding: 8px 0px 0px 10px;
   		float:left;
   }
   .ci3{
   		background-color: #FFFFFF;
   		height: 360px;
   		margin:13px;
   		border-radius:5px;
   }
   .c1{
		font-size: 18px;
		font-weight:bold;	
		margin-top:5px;
   }
   .c2{
   		font-size: 12px;
   		padding-top: 4px;
   }
   .c{
   		padding:10px;
   		margin-left:75px;
   }
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
    body{
    	margin:0px;
    	background-color: #F2F2F2;
    	height:640px;
    }
    .co1{
    	border-radius:5px;
    	background-color: #5E5E5E;
    	height: 30px;
    	width: 25%;
    	text-align: center;
    	color:#FFFFFF; 
		margin-left:23%;
    }
    .co2{
    	border-radius:5px;
    	background-color: #5E5E5E;
    	height: 30px;
    	width: 25%;
    	text-align: center;
    	color:#FFFFFF; 
    }
    .ci4{
    	float: left;
    	font-weight: bold;
    	font-size: 13px;
    }
    .ci5{
    	float: left;
    	margin-left:10px;
    	border-style: none;
    	margin-top:2px;
    }
    .ci56{
    	margin-left:10px;
    	border-style: none;
    }
    .ci45{
    	margin-left: 15px; 
    	margin-right: 15px; 
    	margin-top: 5px;
    	padding-top: 10px;
    	padding-bottom: 20px;
    	border-bottom-style: solid;
    	border-bottom-color: #BDBDBD;  	
    }
    .ci46{
    	margin-left: 15px; 
    	margin-right: 15px; 
    	margin-top: 5px;
    	padding-top: 15px; 
    	padding-bottom: 5px;  
    	border-bottom-style: solid;
    	border-bottom-color: #BDBDBD;  	
    }
    .ci6{
    	width:95%;
    	font-size: 12px;
    	margin-left: 15px;
    	margin-top: 15px;
    }
    .ci7{
    	width:50%;
    	float: left;
    }
    .ci8{
    	width:46%;
    	float:right;
    }
    .ci78{
    	margin-left: 15px;	
    	margin-top: 13px;
    	font-size: 10px;
    }
    .a1{
    	color: #489CFF;
    }
    .r1{
    	width:10px;
    	height:10px;
    }
</style>
</head>
<body>
<div class="container">   
   <div class="top">
      <a href="Card.jsp">
          <img class="othertopimg" src="images/back2.png" >
      </a>
      <div class="othertoplogo" > 카드정보입력 </div>      
   </div>
   
   	<div class="ci1">
   		<img class="ci2" alt="그림 없음" src="images/card2.png">
   		<div class="c">
   			<div class="c1">카드정보 입력해주세요</div>
   			<div class="c2">반드시 본인 명의의 신용/체크카드만 등록 가능</div>
   		</div>	
   	</div>
   	<form action="Card_infoProc.jsp" method="post">
	   	<div class="ci3">
	   		<div class="ci46">
	   			<div class="ci4">은행사 선택</div>
		   			<select class="ci56" name="bank">
						<option value="농협">농협</option>
						<option value="신한">신한</option>
						<option value="기업">기업</option>
						<option value="우리">우리</option>
						<option value="국민">국민</option>
						<option value="제일">제일</option>
						<option value="신협">신협</option>
						<option value="시티">씨티</option>
						<option value="하나">하나</option>
						<option value="우체국">우체국</option>
						<option value="저축은행">저축은행</option>
						<option value="새마을">새마을</option>
					</select>
	   		</div>
	   		<div class="ci45">
	   			<div class="ci4">카드번호</div>
	   			<input class="ci5" type="text" name="cnumber">
	   		</div>
	   		<div class="ci45">
	   			<div class="ci4">유효기간</div>
	   			<input class="ci5" type="text" name="expiration">
	   		</div>
	   		<div class="ci45">
	   			<div class="ci4">소유자명</div>
	   			<input class="ci5" type="text" name="name">
	   		</div>
	   		<div class="ci45">
	   			<div class="ci4">보안코드</div>
	   			<input class="ci5" type="text" name="security">
	   		</div>
	   		
	   		<div class="ci6">등록하시는 결제정보는 안전하게 보관되며 회원님의 편리한 요금 결제를 위하여 활용 됩니다. 
	   		결제정보 수집, 활용에 동의하십니까?</div>
	   		<div class="ci78">
	   			<div class="ci7">정기과금 이용약관<a class="a1">(필수)</a></div>
		   		<div class="ci8">개인정보 수집 및 이용<a class="a1">(필수)</a></div>
		   		<div class="ci7">개인정보제공 및 위탁안내<a class="a1">(필수)</a></div>
		   		<div class="ci8">전자금융거래 이용약관<a class="a1">(필수)</a></div>
		   		<div class="ci7">교유식별정보 수집 및 이용안내<a class="a1">(필수)</a></div>
		   		<div class="ci8">전체동의<input class="r1" type="radio"></div>
	   		</div>
	   	</div>
	   	<a href="Card.jsp" style="text-decoration:none; color:#f1f2f2;">
	   			<input class="co1" type="submit" value="확인"></a>
		<input class="co2" type="reset" value="취소">
   	</form>
</div>
</body>
</html>