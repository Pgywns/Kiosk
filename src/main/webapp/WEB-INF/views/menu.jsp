<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
}

#wrap {
	width: 950px;
	/* height: 1050px; */
	margin: 0 auto;
	font-family: 'Jua', sans-serif;
}

#header {
	height: 240px;
}

#container {
	height: 580px;
	margin-top: 15px;
}

#menubox {
	width: 950px;
	height: 580px;
	overflow: scroll;
}

#menubox::-webkit-scrollbar {
	display: none;
}

.tab {
	margin-top: 30px;
}

.tab div {
	display: inline-block;
	text-align: left;
}

.menuinfo {
	margin-top: 25px;
	margin-bottom: 25px;
	margin-left: 36px;
	cursor: pointer;
}

.menuinfo img {
	width: 190px;
	height: 120px;
}

.menuinfo p {
	text-align: center;
	margin-top: 3px;
}

#footer {
	height: 250px;
	background-color: #EFECEC;
}

#category {
	width: 950px;
}

#category ul {
	width: 100%;
	list-style: none;
	margin-top: -6px;
	font-size: 0;
}

#category ul li {
	width: 19.7%;
	border: 1px solid #C5C3C3;
	display: inline-block;
	font-size: 23px;
	font-weight: 530;
	color: #A09D9D;
	line-height: 60px;
	text-decoration: none;
	height: 100%;
	text-align: center;
	cursor: pointer;
	
}

#menubannerimg {
	width: 100%;
	height: 180px;
}

#cartinfo {
	height: 60px;
	font-size: 20px;
}

#cartbox {
	display: flex;
	padding-top: 15px;
	height: 25px;
	line-height: 25px;
}

#ordercontainer {
	height: 140px;
}

#noorder {
	display: flex;
	justify-content: center;
	font-size: 19px;
}

#footerbannerimg {
	margin-top: 20px;
	margin-right: 15px;
	width: 80px;
	height: 80px;
	width: 80px;
}

#textbox {
	width: 150px;
	margin-top: 35px;
	color: #979595;
}

#textbox p {
	text-align: left;
}

#cart {
	margin-left: 120px;
}

#cart p {
	display: inline-block;
}

#allcost {
	margin-left: 400px;
}

#allcost p {
	display: inline-block;
}

#cartnum {
	background-color: #817F7F;
	margin-left: 20px;
	padding-left: 20px;
	padding-right: 20px;
	border-radius: 15px;
	padding-left: 20px;
	color: white;
}

#box1 {
	float: left;
	width: 50%;
	height: 50px;
	line-height: 50px;
	background-color: #E4E2E2;
	font-size: 25px;
	color: white;
	font-weight: 500;
	text-align: center;
}

#box2 {
	float: right;
	width: 50%;
	height: 50px;
	line-height: 50px;
	background-color: #D2D0D0;
	font-size: 25px;
	color: white;
	font-weight: 500;
	text-align: center;
}

.modal {
	position: absolute;
	display: none;
	top: 0;
	left: 0;
	width: 100%;
	height: 1085px;
	background-color: rgba(0, 0, 0, 0.4);
}

.menucheck {
	position: absolute;
	display: none;
	top: 0;
	left: 0;
	width: 100%;
	height: 1085px;
	background-color: rgba(0, 0, 0, 0.4);
}

.ingrecheck {
	position: absolute;
	display: none;
	top: 0;
	left: 0;
	width: 100%;
	height: 1085px;
	background-color: rgba(0, 0, 0, 0.4);
}

.menucheck .modal_content {
	padding-top: 20px;
}

.menucheck .modal_content {
	padding-left: 20px;
	padding-right: 20px;
}

.modal_content {
	position: relative;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 500px;
	padding: 40px;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
}

.modal_header {
	height: 50px;
	line-height: 50px;
}

#menucheckmodal {
	float: right;
	height: 50px;
	width: 80%;
	font-size: 20px;
	text-align: center;
}

#menucheckmodalback {
	float: left;
	height: 50px;
	width: 20%;
	font-size: 23px;
}

#modalheader {
	float: left;
	width: 90%;
	font-size: 27px;
}

#modal_close {
	float: right;
	margin-left: 10px;
	font-size: 35px;
	margin-top: -5px;
	cursor: pointer;
}

.modal_container {
	height: 450px;
	font-size: 23px;
}

.modal_container2 {
	height: 450px;
}

.largesetcontainer {
	margin-top: 60px;
	text-align: left;
	margin-left: 20px;
}

.basicsetcontainer {
	margin-top: 30px;
	text-align: left;
	margin-left: 20px;
}

.singlemenucontainer {
	margin-top: 130px;
	text-align: left;
	margin-left: 20px;
}

#modalmenuname {
	display: inline-block;
	cursor: pointer;
	margin-left: 10px;
}

#modalmenuprice {
	margin-left: 25px;
	color: red;
	cursor: pointer;
	width: 200px;
}

#modalmenuside {
	margin-left: 25px;
	font-size: 17px;
	cursor: pointer;
}

#modalmenuok {
	position: absolute;
  	bottom: 65px;
  	width: 400px;
	height: 60px;
	line-height: 60px;
	border-radius: 10px;
	background-color: #E4E2E2;
	cursor: pointer;
	text-align: center;
	pointer-events: none;
}

#menucheckcontent1 {
	height: 300px;
}

#menucheckcontent2 {
	height: 150px;
}

#menucheckheader {
	height: 25px;
	line-height: 25px;
	font-size: 18px;
	margin-top: 10px;
}

#menunum {
	width: 25px;
	float: left;
	background-color: red;
	border-radius: 50%;
	color: white;
	text-align: center;
}

#menutext {
	float: left;
	margin-top: 2px;
	margin-left: 6px;
	text-align: center;
}

#menuallprice {
	float: left;
	margin-top: 2px;
	margin-left: 12px;
	color: red;
}

#cartinbtn {
	position: absolute;
  	bottom: 50px;
  	width: 400px;
	height: 60px;
	line-height: 60px;
	border-radius: 10px;
	background-color: #6E6C6C;
	cursor: pointer;
	font-size: 23px;
	color: white;
	text-align: center;
}

.selectmenucontainer {
    height: 275px;
    width: 100%;
}

.selectmenuinfo {
	width: 120px;
	margin-right: 6.6px;
	margin-left: 6.6px;
	margin-top: 65px;
	text-align: center;
}

.selectmenuinfo img {
	width: 100%;
	height: 80px;
}

#changeingre {
	width: 100px;
	color: white;
	margin-top: 10px;
	background-color: #6E6C6C;
	border-radius: 15px;
	padding-top: 2px;
	padding-bottom: 2px;
	margin-left: 10px;
	cursor: pointer;
}

#menucheckmodalback {
	cursor: pointer;
}

.ingre_container {
	height: 330px;
	overflow: auto;
}

.ingre_container::-webkit-scrollbar {
	width: 15px;
	border-radius: 15px;
	background-color: #BEBDBD;
}

.ingre_container::-webkit-scrollbar-thumb {
	width: 15px;
	border-radius: 10px;
	background-color: gray;
}

.ingre_footer {
	height: 120px;
}

#ingretext {
	float: left;
	font-size: 20px;
}

.ingrerefresh {
	float: right;
	font-size: 16px;
	background-color: #6E6C6C;
	color: white;
	border-radius: 20px;
	margin-top: 8px;
	height: 30px;
	line-height: 30px;
	padding-left: 10px;
	padding-right: 10px;
	cursor: pointer;
	display: none;
}

#ingrepricetext {
	float:left;
	font-size: 20px;
}

#ingreprice {
	float:right;
	font-size: 20px;
	margin-right: 30px;
	color: red;
}

.ingre_footer div {
	font-size: 20px;
}

#ingrepriceinfo {
	height: 30px;
	line-height: 30px;
	margin-top: 25px;
}

#ingrebtninfo {
	margin-top: 40px;
}

#ingrecanclebtn {
	float: left;
	width: 40%;
	background-color: #6E6C6C;
	color: white;
	border-radius: 25px;
	padding: 10px;
	cursor: pointer;
	text-align: center;
}

#ingrebtn {
	float: right;
	width: 40%;
	background-color: red;
	color: white;
	border-radius: 25px;
	padding: 10px;
	cursor: pointer;
	text-align: center;
}

#ingre_content {
	margin-top: 25px;
	height: 20px;
	line-height: 20px;
}

#ingre_content label {
	cursor: pointer;
}

#ingre_content input {
	float: left;
	margin-top: 3px;
}

#ingrecontentname {
	float: left;
	margin-left: 15px;
}

#ingrecontentprice {
	float: right;
	margin-right: 10px;
}

.ingrecontent {
	display: none;
}

#cost {
	margin-left: 20px;
	color: #A8A5A5;
}

#selectmenutext {
	font-size: 13.5px;
	height: 20px;
	line-height: 20px;
}

.yesorder {
	display: none;
	width: 100%;
	height: 100%;
}

.yesorder .incartinfo {
	border: 1px solid black;
	width: 200px;
	height: 100px;
	margin-top: 7px;
	margin-left: 20px;
	margin-right: 20px;
}

.incartinfo p {
	margin-left: 5px;
}

.incartinfodel {
	width: 100%;
	height: 30px;
}

.incartinfodel p {
	width: 30px;
	float: right;
	margin-right: 10px;
	line-height: 30px;
	background-color: white;
	text-align: center;
	border-radius: 20px;
	cursor: pointer;
}

.yesorder::-webkit-scrollbar {
	width: 950px;
	height: 15px;
	border-radius: 20px;
	background-color: #D2D1D1;
}

.yesorder::-webkit-scrollbar-thumb {
	width: 300px;
	border-radius: 10px;
	background-color: #949292;
	background-color: #BEBDBD;
}

.yesorder::-webkit-scrollbar-thumb:active {
	background: grey;
} 


</style>

<script src="./resources/js/jquery.js"></script>

<script>
var menuprice = 0;
var orderprice = 0;
var orderingreprice = 0;
var ordersideprice = 0;
var orderdrinkprice = 0;
var ordersideimage = "";
var orderdrinkimage = "";
var ordersidename = "";
var orderdrinkname = "";
var ordersidepid = "side01";
var orderdrinkpid = "drink01";
var productid = "";
var ingrepid = "";
var ordername = "";
var cart = [];
var incart = [];
var numcheck = 0;
var setinfo = "";
var count = 0;
var i =0;

$(document).ready(function() {
	$('#cost').html(orderprice + "원");
	$('#cartnum').html(count);
	
	$('#opentab1').css('color', 'red');
	$('#opentab1').css('box-shadow', '0 -6px 0 0 #f00 inset');
	
	$('#menubox .tab').hide();
	$('#tab1').fadeIn();
});

function opentab(num) {
	$('#tabul li').css('color', '#A09D9D');
	$('#tabul li').css('box-shadow', 'none');
	$('#opentab' + num).css('color', 'red');
	$('#opentab' + num).css('box-shadow', '0 -6px 0 0 #f00 inset');
	
	$('#menubox .tab').hide();
	$('#tab' + num).fadeIn();
}

function openmodal(image, name, price, num, pid) {
	
	menuimage = "'" + image + "'";
	menuname = "'" + name + "'";
	menupid = "'" + pid + "'";
	menuprice = parseInt(price);
	
	if (num == 1) {
		$('.modal_container').append("<div class='largesetcontainer'>" + 
			"<label id='modalmenucontainer'>" +
			"<input id='setchk' type='radio' name='setchk' value='L' onclick='setchk(event)'>" +
			"<p id='modalmenuname'>"+ name +" 라지세트</p>" +
			"<p id='modalmenuside'>"+ name +" + 프렌치프라이(L) + 콜라(L)</p>" +
			"<p id='modalmenuprice'>"+ (menuprice + 500)+" 원</p>" +
			"</label></div>" +
			"<div class='basicsetcontainer'>" + 
			"<label id='modalmenucontainer'>" +
			"<input id='setchk' type='radio' name='setchk' value='R' onclick='setchk(event)'>" +
			"<p id='modalmenuname'>"+ name +" 세트</p>" +
			"<p id='modalmenuside'>"+ name +" + 프렌치프라이(R) + 콜라(R)</p>" +
			"<p id='modalmenuprice'>"+ menuprice +" 원</p>" +
			"</label></div>");
		
		$('.modal_container').append('<div id="modalmenuok" onclick="modalok(' + menuimage + "," + menuname + "," + menuprice + "," + num + "," + menupid + ')">' + '<p>확인</p></div>');
		
		$('body').css('top', '$(document).scrollTop()');
		
		$('.modal').fadeIn();
		
	}  else {
		numcheck = 1;
		modalok(image, name, price, num, pid);	
	}
	
}

function modalclose() {
	
	cart = [];
	menuprice = 0;
	orderingreprice = 0;
	ordersideprice = 0;
	orderdrinkprice = 0;
	$('#modalmenuok').css('pointer-events', 'none');
	$('#ingreprice').text(orderprice + "원");
	$('#ingre_content input').prop('checked',false);
	$('.modal_container').empty();
	$('body').css('top', '$(document).scrollTop()');
	$('.modal').hide();
	$("#setchk").attr("checked", false);
	
}

function modalok(image, name, price, num, pid) {

	menuprice = price;
	setinfo = setinfo;
	productid = pid;
	cart.push(pid);
	
	if (num == 1) {
		cart.push(ordersidepid);
		cart.push(orderdrinkpid);
	} else {
		ordersidepid = "";
		orderdrinkpid = "";
	}
	
	if (setinfo == "L") {
		menuprice += 500;
	}
	
	$('.selectmenucontainer').empty();
	
	$('.modal').hide();
	$('.selectmenucontainer').append('<div id="selectmenuinfo" class="selectmenuinfo"><img src="./resources/images/' + image + '">' +
			'<p id="selectmenutext">' + name + '</p></div>');
		
	if (num == 1) {
		$('.selectmenucontainer').append('<div id="selectmenuinfo2" class="selectmenuinfo"><img src="./resources/images/french.png">' +
				'<p id="selectmenutext">프렌치프라이(' + setinfo +')</p></div>');
		$('#selectmenuinfo2').append('<p id="changeingre" onclick="opensidechange('+ price +')">사이드변경</p>');	
		
		$('.selectmenucontainer').append('<div id="selectmenuinfo3" class="selectmenuinfo"><img src="./resources/images/coke.png">' +
				'<p id="selectmenutext">콜라(' + setinfo +')</p></div>');
		$('#selectmenuinfo3').append('<p id="changeingre" onclick="opendrinkchange('+ price +')">음료변경</p>');	
		
		$('.selectmenucontainer').css('display', 'flex');
	} 
		
	$('#menucheckcontent2 #menutext').after('<p id="menuallprice">' + menuprice + '원</p>')
		
	if (num ==1 || num ==3) {
		$('#selectmenuinfo').append('<p id="changeingre" onclick="openingrechange('+ price +')">재료변경</p>');
	}
		
	$('.menucheck').fadeIn();
}

function menucheckback() {
	
	cart = [];
	ordersideimage = "";
	ordersidename = "";
	orderdrinkimage = "";
	orderdrinkname = "";
	
	$('#ingrecontent2 input').prop('checked',false);
	$('#ingrecontent3 input').prop('checked',false);
	ordersideprice = 0;
	orderdrinkprice = 0;
	ingrerefresh();
	
	if(numcheck == 1) {
		$('.selectmenucontainer').empty();
		$('#menuallprice').remove();
		$('.menucheck').hide();
		numcheck = 0;
	}
	
	else {
		$('.menucheck').hide();
		$('.selectmenucontainer').empty();
		$('#menuallprice').remove();
		$('.modal').fadeIn();
	}
}

function addingre(element, name, price, pid, category, image) {
		
	if (element.checked == true) {
		
		if (category == 6) {
			orderingreprice += price;
			cart.push(pid);
			$('#ingreprice').text(orderingreprice + "원");
		}
		
		else if (category == 4) {
			ordersideprice = price;
			ordersideimage = image;
			ordersidename = name;
			removecart(cart, ordersidepid, pid);
			ordersidepid = pid;
			$('#ingreprice').text(ordersideprice + "원");
		}
		
		else if (category == 5) {
			orderdrinkprice = price;
			orderdrinkimage = image;
			orderdrinkname = name;
			removecart(cart, orderdrinkpid, pid);
			orderdrinkpid = pid;
			$('#ingreprice').text(orderdrinkprice + "원");
		}
		
	}
	
	else if (element.checked == false) {
		
		if (category == 6) {
			orderingreprice -= price;
			cart.splice(cart.indexOf(pid), 1);
			$('#ingreprice').text(orderingreprice + "원");
		}
		
	}
}

function openingrechange(price) {
	$('.ingrecontent').css('display', 'none');
	$('#ingrecontent1').css('display', 'block');
	$('.ingrerefresh').css('display', 'block');
	$('#ingretext').html("재료변경");
	
	menuprice = price;
	$('#ingreprice').text(orderingreprice + "원");
	$('.menucheck').hide();
	$('.ingrecheck').fadeIn();
}

function opensidechange(price) {
	
	$('.ingrecontent').css('display', 'none');
	$('#ingrecontent2').css('display', 'block');
	$('.ingrerefresh').css('display', 'none');
	$('#ingretext').html("사이드변경");
	
	menuprice = price;
	$('#ingreprice').text(ordersideprice + "원");
	$('.menucheck').hide();
	$('.ingrecheck').fadeIn();
}

function opendrinkchange(price) {
	
	$('.ingrecontent').css('display', 'none');
	$('#ingrecontent3').css('display', 'block');
	$('.ingrerefresh').css('display', 'none');
	$('#ingretext').html("음료변경");
	
	menuprice = price;
	$('#ingreprice').text(orderdrinkprice + "원");
	$('.menucheck').hide();
	$('.ingrecheck').fadeIn();
}

function closeingre() {
	
	$('.ingrecheck').hide();
	$('.menucheck').fadeIn();
}

function ingresubmit() {
	
	menuprice = menuprice + orderingreprice + ordersideprice + orderdrinkprice;
	
	if (ordersideimage != "" || ordersidename != "") {
		$("#selectmenuinfo2 img").attr("src", ("./resources/images/" + ordersideimage));
		$('#selectmenuinfo2 #selectmenutext').html(ordersidename);
	}
	
	if (orderdrinkimage != "" || orderdrinkname != "") {
		$("#selectmenuinfo3 img").attr("src", ("./resources/images/" + orderdrinkimage));
		$('#selectmenuinfo3 #selectmenutext').html(orderdrinkname);
	}
	
	console.log(cart);
	
	$('#menuallprice').text(menuprice + '원');
	$('.ingrecheck').hide();
	$('.menucheck').fadeIn();
}

function ingrerefresh() {
	
	cart = [];
	cart.push(productid);
	
	if (ordersidepid != "" && orderdrinkpid != "") {
		cart.push(ordersidepid);
		cart.push(orderdrinkpid);
}
	
	orderingreprice = 0;
	$('#ingrecontent1 #ingre_content input').prop('checked',false);
	$('#ingreprice').text("0원");
}

function orderincart(price) {
	
	count += 1;
	orderprice += menuprice;
	
	incart.push(cart);
	
	ordersidepid = "side01";
	orderdrinkpid = "drink01";
	
		 $('.yesorder').append('<div id="incartinfo' + i + '" class="incartinfo"><div class="incartinfodel"><p onclick="incartinfodel('+ i + "," + price +')">X</p></div><p id="incartmenu"></p>' +
					'<p id="incartside"></p>'+
					'<p id="incartdrink"></p></div>');
		 
		 $('#incartinfo' + i).append('<form action="' + '<c:url value="' + '/menu/incartinfo' + '"></c:url>"' +
				 'id="insertcart" method="get"><input type="hidden" name="productid" value="' + cart[0] + '"><input type="hidden" name="ordernumber" value="' + i + '"></form>');
		 
				 toajax();
				 
		 for (j =0; j < incart[i].length; j++) {
			 
			 if (incart[i][0].includes('set') == true) {
				 
				 $('#incartinfo' + i + ' #incartmenu').html(incart[i][0]);
				 
				 if (incart[i][j].includes('side') == true) {
					 $('#incartinfo' + i + ' #incartside').html(incart[i][j]);
				 }
				 
				 else if (incart[i][j].includes('drink') == true) {
					 $('#incartinfo' + i + ' #incartdrink').html(incart[i][j]);
				 }
			 }
			 else {
				 $('#incartinfo' + i + ' #incartmenu').html(incart[i][0]);
			 }
		 }

		 i += 1;
		 
		$('#cartnum').css('background-color', 'red');
		$('#cartnum').html(count);
		$('#cost').css('color', 'red');
		$('#box1').css('background-color', 'black');
		$('#box2').css('background-color', 'red');
		$('#cost').html(orderprice + '원');
		$('#noorder').css('display', 'none');
		$('.yesorder').css('display', 'flex');
		$('.yesorder .incartinfo').css('flex', 'none');
		$('.yesorder').css('overflow-x', 'auto');
	
	console.log(incart);
	
	menucheckback();
	modalclose();
}

function removecart(arr, pid, pid2) {
	
	if (arr.includes(pid) == true) {
		arr.splice(arr.indexOf(pid), 1, pid2);
	}
}

function incartinfodel(num, price) {
	orderprice -= price;
	count -= 1;
	$('#cartnum').html(count);
	$('#cost').html(orderprice + '원');
	
	if (count == 0) {
		$('#cartnum').css('background-color', '#817F7F');
		$('#cost').css('color', '#A8A5A5');
		$('#box1').css('background-color', '#E4E2E2');
		$('#box2').css('background-color', '#D2D0D0');
		$('#noorder').css('display', 'flex');
		$('#ordercontainer').css('overflow', 'hidden');
	}
	
	$('#incartinfo' + num).remove();
	
	console.log(incart);
	
}

function toajax() {
	var xhr = new XMLHttpRequest();
	
	xhr.open('POST', '/menu/incartinfo', 'true');
	
	xhr.setRequestHeader("Content-type", 'application/x-www-form-urlencoded');
	
	xhr.send("productid="+ cart + "&ordernumber=" + i);
	
}


</script>

</head>
<body>
	<div id="wrap">
		<div id="header">
			<div id="menubanner">
				<img id="menubannerimg" src="./resources/images/menubanner.jpg">
				<div id="category" class="tab_menu">
					<ul id="tabul">
						<li onclick="opentab(1)" id="opentab1">세트메뉴</li>
						<li onclick="opentab(2)" id="opentab2">맥모닝</li>
						<li onclick="opentab(3)" id="opentab3">버거메뉴</li>
						<li onclick="opentab(4)" id="opentab4">사이드</li>
						<li onclick="opentab(5)" id="opentab5">음료</li>
					</ul>
				</div>
			</div> <!--end menubanner-->
		</div> <!--end header-->

		<div id="container">
			<div id="menubox" class="tab_form">

				<div id="tab1" class="tab">
					<c:forEach items="${setlist}" var="setlist">
						<div class="menuinfo"
							onclick="openmodal('${setlist.image}', '${setlist.name}', ${setlist.price}, 1, '${setlist.productid}')">
							<img src="./resources/images/${setlist.image}">
							<p>${setlist.name}</p>
							<p>${setlist.price}원</p>
						</div>
					</c:forEach>
				</div>

				<div id="tab2" class="tab">
					<c:forEach items="${morninglist}" var="morninglist">
						<div class="menuinfo"
							onclick="openmodal('${morninglist.image}', '${morninglist.name}', ${morninglist.price}, 2, '${morninglist.productid}')">
							<img src="./resources/images/${morninglist.image}">
							<p>${morninglist.name}</p>
							<p>${morninglist.price}원</p>
						</div>
					</c:forEach>
				</div>

				<div id="tab3" class="tab">
					<c:forEach items="${burgerlist}" var="burgerlist">
						<div class="menuinfo"
							onclick="openmodal('${burgerlist.image}', '${burgerlist.name}', ${burgerlist.price}, 3, '${burgerlist.productid}')">
							<img src="./resources/images/${burgerlist.image}">
							<p>${burgerlist.name}</p>
							<p>${burgerlist.price}원</p>
						</div>
					</c:forEach>
				</div>

				<div id="tab4" class="tab">
					<c:forEach items="${sidelist}" var="sidelist">
						<div class="menuinfo"
							onclick="openmodal('${sidelist.image}', '${sidelist.name}', ${sidelist.price}, 4, '${sidelist.productid}')">
							<img src="./resources/images/${sidelist.image}">
							<p>${sidelist.name}</p>
							<p>${sidelist.price}원</p>
						</div>
					</c:forEach>
					
				</div>

				<div id="tab5" class="tab">
					<c:forEach items="${drinklist}" var="drinklist">
						<div class="menuinfo"
							onclick="openmodal('${drinklist.image}', '${drinklist.name}', ${drinklist.price}, 5, '${drinklist.productid}')">
							<img src="./resources/images/${drinklist.image}">
							<p>${drinklist.name}</p>
							<p>${drinklist.price}원</p>
						</div>
					</c:forEach>
				</div>

				<div class="modal">
					<div class="modal_content">
						<div class="modal_header">
							<p id="modalheader">원하시는 구성을 선택해주세요</p>
							<p id="modal_close" onclick="modalclose()">X</p>
						</div>
						
						<div class="modal_container"></div>
					</div>
				</div> <!-- end modal-->

				<div class="menucheck">
					<div class="modal_content">
						<div class="modal_header">
							<p id="menucheckmodalback" onclick="menucheckback()">&lt;
								BACK</p>
							<p id="menucheckmodal">선택한 메뉴를 확인해 주세요</p>
						</div>
						
						<div class="modal_container2">
							<div id="menucheckcontent1">
								<div id="menucheckheader">
									<p id="menunum">1</p>
									<p id="menutext">선택한 메뉴</p>
								</div>

								<div class="selectmenucontainer">
										<div class="selectmenuinfo">
										</div>
								</div>
							</div>
							
							<div id="menucheckcontent2">
								<div id="menucheckheader">
									<p id="menunum">2</p>
									<p id="menutext">주문금액</p>
									
									<p id="selectmenuprice"></p>
									
								</div>
								
								<div id="cartinbtn">
									<p onclick="orderincart(menuprice)">카트담기</p>
								</div>
							</div>
						</div> <!--end modal_container-->
					</div> <!--end modal_content-->
				</div> <!--end menucheck-->

				<div class="ingrecheck">
					<div class="modal_content">
						<div class="modal_header">
							<p id="ingretext"></p>
							<p class="ingrerefresh" id="ingrerefresh" onclick="ingrerefresh()">기본 재료로 변경  ⟲</p>
						</div>

						<div class="ingre_container">
							<div id="ingrecontent1" class="ingrecontent">
								<c:forEach items="${ingrelist}" var="ingrelist">
									<div id="ingre_content">
										<label id="${ingrelist.productid}">
											<input id="ingrecheckinfo" type="checkbox" name="ingrecheckbox" onclick="addingre(this, '${ingrelist.name}', ${ingrelist.price}, '${ingrelist.productid}', ${ingrelist.category})">
											<p id="ingrecontentname">${ingrelist.name}</p>
											<p id="ingrecontentprice">+ ${ingrelist.price}원</p>
										</label>
									</div>
								</c:forEach>
							</div>
							
							<div id="ingrecontent2" class="ingrecontent">
								<c:forEach items="${sidelist}" var="sidelist">
									<div id="ingre_content">
										<label id="${sidelist.productid}">
											<input id="ingrecheckinfo" type="radio" name="ingrecheckbox2" onclick="addingre(this, '${sidelist.name}', ${sidelist.price}, '${sidelist.productid}', ${sidelist.category}, '${sidelist.image}')">
											<p id="ingrecontentname">${sidelist.name}</p>
											<p id="ingrecontentprice">+ ${sidelist.price}원</p>
										</label>
									</div>
								</c:forEach>
							</div>
							
							<div id="ingrecontent3" class="ingrecontent">
								<c:forEach items="${drinklist}" var="drinklist">
									<div id="ingre_content">
										<label id="${drinklist.productid}">
											<input id="ingrecheckinfo" type="radio" name="ingrecheckbox3" onclick="addingre(this, '${drinklist.name}', ${drinklist.price}, '${drinklist.productid}', ${drinklist.category}, '${drinklist.image}')">
											<p id="ingrecontentname">${drinklist.name}</p>
											<p id="ingrecontentprice">+ ${drinklist.price}원</p>
										</label>
									</div>
								</c:forEach>
							</div>
							
						</div>

						<div class="ingre_footer">
						
							<div id="ingrepriceinfo">
								<p id="ingrepricetext">총 주문금액</p>	
								<p id="ingreprice">원</p>	
							</div>
						
							<div id="ingrebtninfo">
								<p id="ingrecanclebtn" onclick="closeingre()">취소</p>
								<p id="ingrebtn" onclick="ingresubmit()">완료</p>
							</div>
						</div>
					</div>
				</div>
				
				
			</div> <!--end menubox-->
		</div> <!--end container-->

		<div id="footer">
			<div id="cartinfo">
				<div id="cartbox">
					<div id="cart">
						<p>카트</p>
						<p id="cartnum"></p>
					</div>

					<div id="allcost">
						<p>총 주문금액</p>
						<p id="cost"></p>
					</div>
				</div>
			</div>

			<div id="ordercontainer">
				<div id="noorder">
					<img id="footerbannerimg" src="./resources/images/noorder.png">
					<div id="textbox">
						<p>카트에 담긴 상품이 없습니다.</p>
					</div>
				</div>
				
				<div class="yesorder">
				</div>
				
			</div>

			<div id="box1">
				<p>취소</p>
			</div>
			
			<div id="box2">
				<p>결제하기</p>
			</div>
			
		</div> <!--end footer-->
	</div> <!--end wrap-->
	
<script>

	function setchk(event) {
		
		setinfo = event.target.value;
		document.getElementById("modalmenuok").style.backgroundColor = 'red';
		$('#modalmenuok').css('pointer-events', 'auto');
	}
</script>
</body>
</html>