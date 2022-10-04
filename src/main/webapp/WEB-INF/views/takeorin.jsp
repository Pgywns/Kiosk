<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TakeOut or In</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/takeorin.css">
<script>
	function chkform1() {
		document.getElementById('orderselect').value = 'takein';
		document.getElementById('actionForm').submit();
	}
	
	function chkform2() {
		document.getElementById('orderselect').value = 'takeout';
		document.getElementById('actionForm').submit();
	}
</script>

</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="mainlogo">
				<img src="./resources/images/mainlogo2.png"
					style="width: 250px; height: 220px;">
			</div>
		</div>

		<div class="container">
			<div class="takeorin">
				<h1>식사하실 장소를 선택해주세요</h1>
			</div>
			<div class="order">
				<form id="actionForm" action="menu" method="post">
					<div class="orderchoice"
						onclick="chkform1()">
						<img class="choiceimg" src="./resources/images/takeout.jpg">
						<h2>매장에서 식사</h2>
					</div>
					
					<div class="orderchoice"
						onclick="chkform2()">
						<img class="choiceimg" src="./resources/images/in.png">
						<h2>테이크 아웃</h2>
					</div>
					
					<input type='hidden' id='orderselect' name="select">
				</form>
			</div>
		</div>
	</div>
</body>
</html>