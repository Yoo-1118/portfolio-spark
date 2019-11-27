<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
		var oldtime = sessionStorage.getItem('old');
		
		var newtime = new Date().getTime();
		
		var tmin = Math.floor((newtime-oldtime)/1000/60);
		
		if (tmin < 60){
			var price = 3000;
		} else if (tmin < 90){
			var price = 3500;
		} else if (tmin < 120){
			var price = 4000;
		} else if (tmin < 150){
			var price = 4500;
		} else if (tmin < 180){
			var price = 5000;
		} else if (tmin < 210){
			var price = 5500;
		} else {
			var price = 6000;
		}
		
		var URL = "Pay.jsp?price="+price;
		
		window.location.href=URL;
</script>
</body>
</html>