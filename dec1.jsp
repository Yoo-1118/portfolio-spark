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
	
	/* dec1.jsp css */
	body{
        line-height:2em;        
        font-family:"맑은 고딕";
	}
    ul, li{ 
        list-style:none;
        text-align:center;
        padding:0;
        margin:0;
	}
	#mainWrapper{
		padding-left: 10px;
		padding-right: 10px;
		margin-top: 25px;
	}

    #mainWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:35px;
	}

    #ulTable {margin-top:10px;}
    

    #ulTable > li:first-child > ul > li {
        background-color:#c9c9c9;
        font-weight:bold;
        text-align:center;
	}

    #ulTable > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:40px;
	}
    #ulTable > li > ul > li { 
        float:left;
        font-size:9pt;
        border-bottom:1px solid silver;
        vertical-align:baseline;
	}    

    #ulTable > li > ul > li:first-child               {width:10%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li           {width:45%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li        {width:20%;} /*작성일 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li     {width:15%;} /*작성자 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li{width:10%;} /*조회수 열 크기*/

    #divPaging {
        clear:both; 
        margin:0px auto; 
        padding-top: 10px;
        width:220px; 
        height:50px;
	}

    #divPaging > div {
        float:left;
        width: 30px;
        margin:0 auto;
        text-align:center;
	}

    #liSearchOption {clear:both;}
    #liSearchOption > div {
        margin:0 auto; 
        width:auto; 
        height:100px; 

	}

    .left {
        text-align : left;
	}
</style>
</head>
<body>
<div class="container" style="background-color: #f1f2f2;">   
	<div class="top">
      <a href="Main.jsp">
          <img class="othertopimg" src="images/back2.png" >
      </a>
      <div class="othertoplogo" > 문제신고 </div>      
   </div>
   
    <div id="mainWrapper">

        <ul>
            <li>
                <ul id ="ulTable">
                    <li>
                        <ul>
                            <li>No</li>
                            <li>제목</li>
                            <li>작성일</li>
                            <li>작성자</li>
                            <li>조회수</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
                    <li>
                        <ul>
                            <li>1</li>
                            <li class="left">제목제목제목제목1</li>
                            <li>2019.11.09</li>
                            <li>aa</li>
                            <li>0</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
                            <li>2</li>
                            <li class="left">제목제목제목제목1</li>
                            <li>2019.10.11</li>
                            <li>bb</li>
                            <li>0</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
                            <li>3</li>
                            <li class="left">제목제목제목제목1</li>
                            <li>2019.10.05</li>
                            <li>cc</li>
                            <li>0</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
                            <li>4</li>
                            <li class="left">제목제목제목제목1</li>
                            <li>2019.08.13</li>
                            <li>dd</li>
                            <li>0</li>
                        </ul>
                    <li>                                        
                </ul>
            </li>
            
            <li>
            	<div style="float:right; margin-right: 3px; margin-top: 5px;">
            		<input type='button' value='등록'/>
            	</div>
            </li>

            <!-- 게시판 페이징 영역 -->
            <li>
                <div id="divPaging" style="font-size:12pt;">
                    <div>◀</div>
                       <div><b>1</b></div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>▶</div>
                </div>
            </li>

            <!-- 검색 폼 영역 -->
            <li id='liSearchOption'>
                <div>
                    <select id='selSearchOption' style="padding-bottom:5px;">
                        <option value='A'>제목+내용</option>
                        <option value='T'>제목</option>
                        <option value='C'>내용</option>
                    </select>
                    <input id='txtKeyWord' />
                    <input type='button' value='검색'/>
                </div>
                </li>

        </ul>
    </div>
</div>
</body>
</html>