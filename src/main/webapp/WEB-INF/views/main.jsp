<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiosk Main</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/kioskmain.css?after">
<link rel="stylesheet" href="./resources/css/jquery.bxslider.min.css">

<script src="./resources/js/jquery.js"></script>
<script src="./resources/js/jquery.bxslider.min.js"></script>
<script>
	$(function() {
		$("#images").bxSlider({
			auto : true,
			autoControls : false,
			stopAutoOnClick : true,
			pager : false,
			onSlideBefore : function(b, c, d) {
				var obj = $(b).prev().find("img");
				var imgPath = obj.attr("src");

				var idx = imgPath.lastIndexOf("/");
				var endIdx = imgPath.lastIndexOf(".");
				var imgName = imgPath.substring(idx + 1, endIdx);
			}
		});
	});
</script>
</head>
<body onclick="location.href='takeorin'">
	<div id="wrap">
		<div id="header">
			<div id="header1">
				<h1>기다리지 말고 여기에서 주문하세요</h1>
			</div>
			<div id="header2">
				<p>화면을 클릭해주세요!</p>
			</div>
		</div>

		<div id="content">
			<div id="imgbox">
				<ul id="images">
					<li id="item"><img src="./resources/images/main1.png"></li>
					<li id="item"><img src="./resources/images/main2.jpg"></li>
					<li id="item"><img src="./resources/images/main3.jpg"></li>
				</ul>
			</div>
		</div>

		<div id="footer">
			<div id="footheader">
				<ul id="warning">
					<li>쿠폰 및 모바일 상품권 사용은 카운터에 문의해 주세요</li>
					<li>현금 결제는 카운터에서만 가능 Please pay at Front Counter for Cash</li>
				</ul>
			</div>

			<div class="box" id="box1">
				<img src="./resources/images/mainlogo.png">
			</div>
			<div class="box" id="box2">
				<h1>주문하려면 클릭하세요</h1>
			</div>
		</div>
	</div>
	<script src="./resources/js/slide.js"></script>
</body>
</html>
