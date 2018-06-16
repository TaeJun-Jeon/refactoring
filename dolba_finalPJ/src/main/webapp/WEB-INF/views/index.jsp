<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  


<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
	<title>Lovely-pets an Animals Category Bootstrap Responsive website Template| Home :: w3layouts</title>

	<!--meta tags -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Lovely-pets Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//meta tags ends here-->

	<!--booststrap-->
	<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<!--//booststrap end-->
	<!-- font-awesome icons -->
	<link href="${pageContext.request.contextPath}/resources/lib/fonts/font-awesome.css" type="text/css" rel="stylesheet">
	<!-- //font-awesome icons -->
	<!--stylesheets-->
	<link href="${pageContext.request.contextPath}/resources/lib/css/main/style.css" rel='stylesheet' type='text/css' media="all">
	<!--//stylesheets-->
	<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath}/resources/lib/css/main/jquery.easy-gallery.css' />
	<!-- For-gallery-CSS -->
	<link href="${pageContext.request.contextPath}/resources/lib/css/main/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop-ups-->
	<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/lib/css/main/custom-style.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/resources/lib/css/main/login-style.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/resources/lib/css/main/price-style.css" rel="stylesheet" type="text/css"/>


</head>

<body>

	<div id="container">
		<video id="myVideo" preload="auto" autoplay="autoplay" loop="loop" style="opacity: 0.7; border:0;" width="100%">
			<source src="${pageContext.request.contextPath}/resources/lib/video/main_top.mp4" type="video/mp4">
		</video>
	</div>


	<div class="header-outs">
		<div class="header-w3layouts">
			<!-- Navigation -->
			<div class="header-bar">
				<nav class="navbar navbar-default" style="background-color: #18777F">
					<div class="navbar-header navbar-left">
						<h1>
							<!--로고시작-->
							<a href="${pageContext.request.contextPath}/">
								<img src="${pageContext.request.contextPath}/resources/lib/img/logo.png" width="40px" height="40px">&nbsp;PET-DATE
							</a>
							<!--로고 끝-->
						</h1>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="${pageContext.request.contextPath}/">Home</a></li>
								<li><a href="#about" class="scroll">About</a></li>
								<li><a href="#services" class="scroll">서비스소개</a></li>
								<li><a href="#price" class="scroll">가격정책</a></li>
								<li><a href="#protector-service" class="scroll">보호자서비스</a></li>
								<li><a href="#petsit-service" class="scroll">펫시터서비스</a></li>
								<li><a href="#qna" class="scroll">Q & A</a></li>
								<li>
									<div class="showback">
										<!-- Single button -->
										<div class="btn-group">
											<button type="button" class="btn btn-theme dropdown-toggle" data-toggle="dropdown">
												<span class="fa fa-user"></span> <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#myModal" data-toggle="modal"><span class="fa fa-sign-in"></span>&nbsp;&nbsp;로그인</a></li>
												<li><a href="${pageContext.request.contextPath}/admin/joinForm"><span class="fa fa-pencil-square-o"></span>&nbsp;&nbsp;회원가입</a></li>
												<li class="divider"></li>
												<sec:authorize access="isAuthenticated()">
												<li><a href="${pageContext.request.contextPath}/owner/myPage"><span class="fa fa-sign-out"></span>&nbsp;&nbsp;마이페이지</a></li>
												<li><a href="javascript:logout();"><span class="fa fa-sign-out"></span>&nbsp;&nbsp;로그아웃</a></li>
												</sec:authorize>
												<form id="logoutFrm" action="${pageContext.request.contextPath}/admin/logout" method="post" style:"display:none">
												<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
												</form>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</nav>
					</div>
				</nav>
			</div>
			<div class="clearfix"> </div>
		</div>





		<!-- Slideshow 4 -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider4">
					<li>
						<div class="slider-img">
							<div class="container">
								<div class="slider-info">
									<h4> <span class="home-banner">O</span>ur <span class="home-banner">B</span>est <span class="home-banner">S</span>ervice</h4>
									<p>Pet Sitting Service</p>
									<div class="outs_more-buttn">
										<a href="#" data-toggle="modal" data-target="#myModal">지금 시작하기</a>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img ">
							<div class="container">
								<div class="slider-info">
									<h4><span class="home-banner">L</span>ovely And <span class="home-banner">C</span>ute <span class="home-banner">P</span>ets</h4>
									<p>Personalized care for your pet</p>
									<div class="outs_more-buttn">
										<a href="#" data-toggle="modal" data-target="#myModal">지금 시작하기</a>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>

		<!-- //banner -->

		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						<h4 class="modal-title" id="myModalLabel">

							<!--로고-->
							<svg id="logo_layer" data-name="logo layer" xmlns="http://www.w3.org/2000/svg"
								 width="40px" height="40px" viewBox="0 0 55.79 58.59">
								<defs>
									<style>
										.cls-1{
										fill:none;
										stroke:#18777F;
										stroke-miterlimit:4;
										stroke-width:5px;
										}
									</style>
								</defs>
								<path class="cls-1" d="M334.46,197.49c-3.76-8.42-9.56-13.19-16.83-13-6.9,0-12.31,4.56-16.07,13-4.19,9.4-2.76,19.18,3.21,21.84,4,1.79,9.09-.12,13.24-4.45,4.16,4.33,9.22,6.24,13.24,4.45C337.22,216.67,338.65,206.89,334.46,197.49Z" transform="translate(-290.5 -162.91)"/>
								<path class="cls-1" d="M318,214.77s7.12-6.91,9.58-12.64c1.14-2.68.76-5.37-1.54-6.9-2-1.36-5.36.39-8,3.07-2.68-2.68-6-4.43-8-3.07-2.3,1.53-2.68,4.22-1.53,6.9,2.45,5.73,9.57,12.64,9.57,12.64" transform="translate(-290.5 -162.91)"/>
								<path class="cls-1" d="M318,195.23" transform="translate(-290.5 -162.91)"/>
								<ellipse class="cls-1" cx="297.49" cy="181.86" rx="5.2" ry="6.75" transform="translate(-338.79 -25.87) rotate(-24.05)"/>
								<ellipse class="cls-1" cx="310.25" cy="172.42" rx="5.93" ry="8.13" transform="matrix(0.97, -0.26, 0.26, 0.97, -324.55, -76.74)"/>
								<ellipse class="cls-1" cx="339.3" cy="181.86" rx="6.75" ry="5.2" transform="translate(-255.56 254.66) rotate(-65.95)"/>
								<ellipse class="cls-1" cx="326.54" cy="172.42" rx="8.13" ry="5.99" transform="translate(-215.02 280.3) rotate(-75)"/>
							</svg>

						</h4>
					</div>
					<div class="modal-body">
						<input type="button" class="btn btn-warning col-xs-12" value="Login with KAKAO">

						<br>
						<br>

						<div class="login-or">
							<hr class="hr-or">
						</div>

						<form role="form" method="post" action="${pageContext.request.contextPath}/admin/login">
							<div class="form-group">
								<input type="text" class="form-control" id="inputUsernameEmail" placeholder="Username or email" name="id">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
							</div>
							<div class="row row-submit">
								<div class="col-xs-12 col-sm-6">
									<a href="#"><p class="login-form-text">비밀번호 혹은 아이디를 잊어버리셨나요?</p></a>
								</div>
								<div class="col-xs-12 col-sm-6">
									아직 아이디가 없으신가요?<a href="#" class="login-form-text">&nbsp;&nbsp;회원가입</a>
								</div>
							</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type="submit" class="btn btn-primary col-xs-6 col-xs-offset-3" value="로그인">
						</form>
						<div class="col-xs-12 text-center">
							<br>
							
						</div>
					</div>
					<br>
					<br>
					<br>
					<br>
					<div class="modal-footer">
						<div class="col-xs-12 text-center">
							<div class="divider"></div>
							<p>
								"Login With KAKAO"를 클릭하고 펫시터 서비스를 이용할 경우 귀하는 자동으로 저희 사이트에 등록되며,
								<a href="#" class="login-form-text">이용약관</a> 및
								<a href="#" class="login-form-text">개인정보 보호정책</a>에 동의하는 것으로 간주됩니다.
							</p>
						</div>
					</div>

				</div> <!-- 모달 콘텐츠 -->
			</div> <!-- 모달 다이얼로그 -->
		</div> <!-- 모달 전체 윈도우 -->
	</div>
	<!-- //modal -->


	<div class="about" id="about" style="margin-top:120px;">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 text-center">
					<h1>About US</h1><br><br>
					<p style="font-size:14px; font-weight: bold;">하루 종일 집에서 낮잠만 자는 당신의 애완견은 지금 행복한가요?
						항상 모든 시간을 함께하는 당신 대신 가끔은 전문가에게 맡겨주세요.<br>
						다음과 같은 고객님께 저희 서비스를 강력 추천합니다.!!</p>

					<div class="arrow">
						<ul>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>업무상 혹은 불가피하게 반려견만을 두고 집을 비우는 일이 잦으신 분.</p>
							</li>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>잘못된 생활습관으로 행동교정이 필요한 반려견을 기르고 계신 분.</p>
							</li>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>장기간 집을 비워 반려견을 돌봐줄 사람을 찾고 계신 분.</p>
							</li>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>짧은 시간 잠시라도 소중한 당신의 반려견을 돌봐줄 사람이 필요하신 분</p>
							</li>
						</ul>
					</div>

				</div>
			</div>
			<div class="row" style="margin-top:40px;">
				<div class="col-xs-12 text-center">
					<h2>이용절차</h2>
				</div>
			</div>

			<div class="row" style="margin-top:40px;">
				<div class="col-xs-4">
					<center>
						<div class="hr-sect"><input type="button" class="button-circle" value="1" disabled="disabled"></div><br>
						&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/lib/img/rover-icon-1.png" width="95px" height="95px"><br><br><br>
						<h4>펫시터 검색</h4>
						<p>조건을 설정하고 조건에 알맞는 펫시터를 검색하세요.</p>

					</center>


				</div>
				<div class="col-xs-4">
					<center>
						<div class="hr-sect"><input type="button" class="button-circle" value="2" disabled="disabled"></div><br>
						&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/lib/img/rover-icon-2.png" width="95px" height="95px"><br><br><br>
						<h4>펫시팅 서비스 예약</h4>
						<p>조건에 맞는 펫시터를 찾으셨다면, 요청사항을 작성하고, 맡기기 혹은 부르기 신청을 합니다.</p>
					</center>
				</div>
				<div class="col-xs-4">
					<center>
						<div class="hr-sect"><input type="button" class="button-circle" value="3" disabled="disabled"></div><br>
						&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/lib/img/rover-icon-3.png" width="95px" height="95px"><br><br><br>
						<h4>서비스 이용 후 결제</h4>
						<p>서비스 이용 후, 혹은 이용 전 결제가 가능합니다.<br>
							(단, 이용 전 결제는 모바일 결제만 가능하고 현금 서비스는 불가능합니다.)
						</p>
					</center>
				</div>
			</div>

			<div class="row" style="margin-top:40px;">
				<div class="col-xs-12 text-center">
					<input type="button" class="custom-button" value="예약신청">
				</div>
			</div>
		</div>
	</div>




	<!--About 이전거-->
	<!--<div class="about" id="about" style="margin-top:50px;">
		<div class="container">
			<div class="about-top-grids">
				<div class="col-md-7 about-top-grid">
					<h2>About Us </h2>
					<div class="arrow">
						<ul>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>엄선된 펫시터가 당신의 반려동물을 돌봐드립니다. </p>
							</li>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>신청과 동시에 최적의 펫시터가 배정됩니다.  </p>
							</li>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>당일방문 서비스 </p>
							</li>
							<li><span class="fa fa-paw dog-arrow" aria-hidden="true"></span>
								<p>장기 돌봄 서비스 </p>
							</li>
						</ul>
					</div>
					<div class="about-para">
						<p>일회성 방문 혹은 반복 방문 모두 가능합니다. 경험많은 팀원이 애완 동물과 시간을 보내고, 먹이를 주고, 고양이 쓰레기 트레이를 바꾸고,
						개를 데리고 산책을 가고, 필요하면 병원에도 갑니다.</p>
					</div><br>

					<div id="col-xs-2 col-xs-offset-4">
						<input type="button" class="custom-button" value="예약신청">
					</div>

				</div>
				<div class="col-md-5 pope banner-agileits-btm" id="video">
					<div id="small-dialog1" class="mfp-hide w3ls_small_dialog wthree_pop">
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>-->
	<!--//About-->


	<!--services-->
	<div class="services" id="services">
		<div class="container">
			<h3 class="title clr">Services</h3>
				<div class="container">
					<div class="col-md-6">
						<div class="col-md-6 col-xs-6 its-banner-grid">
							<div class="left-icon-grid">
								<span class="fa fa-cutlery banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>Pets Food</h4>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-6 col-xs-6 its-banner-grid">
							<div class="left-icon-grid">
								<span class="fa fa-comments banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>Realtime Network</h4>
								<p></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-6 col-xs-6 its-banner-grid" style="margin-top:35px;">
							<div class="left-icon-grid">
								<span class="fa fa-road banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>Dog Wakling</h4>
								<p></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-6 col-xs-6 its-banner-grid">
							<div class="left-icon-grid">
								<span class="fa fa-hand-o-right banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>Behavioral Correction</h4>
								<p></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="col-md-6 col-xs-6 its-banner-grid">
							<div class="left-icon-grid">
								<span class="fa fa-home banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>Visiting Home</h4>
								<p></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-6 col-xs-6 its-banner-grid">
							<div class="left-icon-grid">
								<span class="fa fa-medkit banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>Visiting Hospital</h4>
								<p></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-6 col-xs-6 its-banner-grid" style="margin-top:65px;">
							<div class="left-icon-grid">
								<span class="fa fa-rotate-right banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>DAY Care</h4>
								<p></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-6 col-xs-6 its-banner-grid" style="margin-top:65px;">
							<div class="left-icon-grid">
								<span class="fa fa-clock-o banner-icon" aria-hidden="true"></span>
							</div>
							<div class="white-shadow">
								<h4>Time Unit Care</h4>
								<p></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
	</div>
	<!--//services-->

	<!--price table-->
	<div class="price-table" id="price" style="background-color: #f2f2f2">
		<div class="container">
			<h3 class="title-custom">Price-Table</h3>

				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 text-center">
						<p class="p-tag-custom-header">
							믿고 맡기세요!
						</p>
						<br>
						<p class="p-tag-custom">
							각 서비스 종류와 옵션에 따라 가격이 달라 집니다.
						</p>
						<p class="p-tag-custom">
							(개인 펫시터마다 가격을 다르게 책정할 수 있습니다.)
						</p>
					</div>
				</div>

				<div class="prices-box" id="prices">
					<div class="row">
						<div class="col-lg-12">
							<div class="col-md-3 price-table aos-init aos-animate price-table-margin" data-aos="fade-right">
								<div class="top-content text-center">
									<div class="title" style="color:white">
										<h3>Basic</h3>
											<center>
												<div class="circle" style="padding-top:25px;">
													<span class="fa fa-krw"></span>
												</div>
											</center>
									</div>
								</div>

								<div class="bottom-content text-center">
									<ul class="features-border list-unstyled">
										<li>시간단위</li>
										<li>산책 서비스 포함</li>
										<li>맡기기</li>
									</ul>
									<br>


									<div class="big-price">
										<br>
										<span class="fa fa-krw">6000~</span>
									</div>
									<br>
									<br>
									<br>
									<br>
									<a class="w3_play_icon1" href="#" data-toggle="modal" data-target="#myModal"> Buy Now</a>

								</div>

							</div>

							<div class="col-md-3 col-xs-offset-1 price-table aos-init aos-animate price-table-margin" data-aos="fade-up">
								<div class="top-content text-center">
									<div class="title" style="color:white">
										<h3>Standard</h3>
										<center>
											<div class="circle" style="padding-top:20px;">
												<span class="fa fa-money"></span>
											</div>
										</center>
									</div>

								</div>

								<div class="bottom-content text-center">
									<ul class="features-border list-unstyled">
										<li>맡기기 서비스</li>
										<li>산책 서비스</li>
										<li>목욕 그루밍 종합 케어 서비스</li>
									</ul>
									<br>

									<div class="big-price">
										<br>
										<span class="fa fa-krw">12000~</span>
									</div>
									<br>
									<br>
									<br>
									<br>
									<a class="w3_play_icon1" href="#" data-toggle="modal" data-target="#myModal"> Buy Now</a>

								</div>

							</div>

							<div class="col-md-3 col-xs-offset-1 price-table aos-init aos-animate" data-aos="fade-left">
								<div class="top-content text-center">
									<div class="title" style="color:white">
										<h3>Premium</h3>
										<center>
											<div class="circle">
												<span class="fa fa-thumbs-up" style="padding-top:30px;"></span>
											</div>
										</center>
									</div>

								</div>

								<div class="bottom-content text-center">
									<ul class="features-border list-unstyled">
										<li>출장 서비스</li>
										<li>프리미엄 서비스 제공</li>
										<li>건강진단 및 식사제공</li>
									</ul>
									<br>

									<div class="big-price">
										<br>
										<span class="fa fa-krw">20000~</span>
									</div>

									<br>
									<br>
									<br>
									<br>
									<a class="w3_play_icon1" href="#" data-toggle="modal" data-target="#myModal"> Buy Now</a>

								</div>

							</div>
						</div>

					</div>
				</div>

		</div>
	</div>
	<!--//price table-->


	<!--Protector-->
	<div class="protector-service" id="protector-service">
		<div class="container">
			<div class="about-top-grids">

				<div class="col-md-5 pope protector-image" id="video">
					<div id="small-dialog1" class="mfp-hide w3ls_small_dialog wthree_pop">
					</div>
				</div>

				<div class="col-md-7 about-top-grid protector-service-padding">

					<h2>보호자 서비스 </h2>
					<br><br>
					<div class="about-para">
						<p>당신이 집을 떠나고 혼자 남게 될 애완동물은 얼마나 스트레스를 받게 될까요. 또 얼마나 외로움에
							몸부림치게 될까요. 저희 펫데이트팀의 펫시터들은 모두 동물을 사랑하고 동물을 돌 본 경험이 많은
							전문가들 입니다. 또한 지역사회와도 깊은 유대관계를 맺고 있는 분들입니다. 당신의 반려견을 저희에게 맡겨주세요.
							누구보다 안전하고 세심하게 돌봐드립니다.</p>
					</div><br><br>

					<div class="col-xs-6">
						<input type="button" class="btn btn-primary btn-radius-1" value="부르기">
					</div>
					<div class="col-xs-6">
						<input type="button" class="btn btn-primary btn-radius-1" value="맡기기">
					</div>

				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//protector-->

	<!--petsitter-->
	<div class="petsit-service" id="petsit-service">
		<div class="container">
			<div class="about-top-grids">
				<div class="col-md-7 about-top-grid petsit-service-padding">
					<h2>펫시터 서비스</h2>
					<br><br>
					<div class="about-para">
						<p>저희 펫데이트는 현재 서울, 경기, 인천 지역에서 펫시팅 서비스를 제공하고 있습니다. 당신의 도움이 필요한
							애완동물을 찾으시고, 펫시팅 신청을 해주세요.</p>
					</div><br><br>

					<div id="col-xs-2 col-xs-offset-4">
						<input type="button" class="btn btn-warning btn-radius-1" value="돌보기 신청">
					</div>

				</div>
				<div class="col-md-5 pope petsit-image" id="video">
					<div id="small-dialog1" class="mfp-hide w3ls_small_dialog wthree_pop">
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//petsit-->

	<!--qna-->
	<div class="about" id="qna">
		<div class="container">
			<div class="about-top-grids">
				<div class="col-md-6 about-top-grid">
					<h2>Q & A</h2>
					<br>
					<br>
					<div class="about-para">
						<p>저희 사이트를 이용하시고, 멋진 후기를 남겨주세요. </p>
						<p>공지사항을 통해 펫시팅 관련 정보를 확인하세요.</p>
					</div>
					<br>
				</div>
				<div class="col-md-6">
					<div class="col-md-6 col-xs-6">
						<a href="#">
							<div class="qna-box">
								<br>
								<br>
								<center>
									<span class="fa fa-question fa-7x"></span>
									<span class="fa fa-question fa-10x"></span>
									<p class="qna-font"> Q & A</p>
								</center>
							</div>
						</a>
					</div>
					<div class="col-md-6 col-xs-6">
						<a href="#">
							<div class="qna-box">
								<center>
								<br>
								<br>
								<span class="fa fa-wechat fa-10x" style="color:white;"></span><br>
								<p class="qna-font"> 공지사항</p>

								</center>
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//qna-->
	<div class="insta-div">
		<div class="container">
			<h3 style="color:black;">follow on Instagram <span class="fa fa-instagram"></span> </h3><br>

			<div class="row">
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
				<div class="col-xs-3">
					<div class="col-md-2 insta-main"></div>
				</div>
			</div>
		</div>
	</div>


	<div class="buttom-w3">
		<div class="container">
			<div class="col-md-4 bottom-head text-center">

				<!--로고-->
				<svg id="logo_layer" data-name="logo layer" xmlns="http://www.w3.org/2000/svg"
					 width="40px" height="40px" viewBox="0 0 55.79 58.59">
					<defs>
						<style>
							.cls-1{
								fill:none;
								stroke:#18777F;
								stroke-miterlimit:4;
								stroke-width:5px;
							}
						</style>
					</defs>
					<path class="cls-1" d="M334.46,197.49c-3.76-8.42-9.56-13.19-16.83-13-6.9,0-12.31,4.56-16.07,13-4.19,9.4-2.76,19.18,3.21,21.84,4,1.79,9.09-.12,13.24-4.45,4.16,4.33,9.22,6.24,13.24,4.45C337.22,216.67,338.65,206.89,334.46,197.49Z" transform="translate(-290.5 -162.91)"/>
					<path class="cls-1" d="M318,214.77s7.12-6.91,9.58-12.64c1.14-2.68.76-5.37-1.54-6.9-2-1.36-5.36.39-8,3.07-2.68-2.68-6-4.43-8-3.07-2.3,1.53-2.68,4.22-1.53,6.9,2.45,5.73,9.57,12.64,9.57,12.64" transform="translate(-290.5 -162.91)"/>
					<path class="cls-1" d="M318,195.23" transform="translate(-290.5 -162.91)"/>
					<ellipse class="cls-1" cx="297.49" cy="181.86" rx="5.2" ry="6.75" transform="translate(-338.79 -25.87) rotate(-24.05)"/>
					<ellipse class="cls-1" cx="310.25" cy="172.42" rx="5.93" ry="8.13" transform="matrix(0.97, -0.26, 0.26, 0.97, -324.55, -76.74)"/>
					<ellipse class="cls-1" cx="339.3" cy="181.86" rx="6.75" ry="5.2" transform="translate(-255.56 254.66) rotate(-65.95)"/>
					<ellipse class="cls-1" cx="326.54" cy="172.42" rx="8.13" ry="5.99" transform="translate(-215.02 280.3) rotate(-75)"/>
				</svg>
				<!--로고 끝-->

				<h4><a href="index.html">PET-DATE</a></h4>
				<div class="pet-cat">
					<p>Care Pets</p>
				</div>
			</div>
			<div class="col-md-4 copyright text-center">
				<div class="sub-para">
					<p>sign up for puppies, pet tips, and promotions straight to your inbox!!</p>
					<br>
					<input type="email" class="form-control" placeholder="E-Mail" style="width:155px; display:inline-block">
					<input type="button" class="btn btn-primary" value="Send">
					<br><br>
					<p>Available on the web, ios, Android</p><br>

					<!--svg-->
					<svg version="1.1" id="US_UK_Download_on_the" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
					x="0px" y="0px" width="135px" height="40px" viewBox="0 0 135 40" enable-background="new 0 0 135 40" xml:space="preserve">
					<g>
					<path fill="#A6A6A6" d="M130.197,40H4.729C2.122,40,0,37.872,0,35.267V4.726C0,2.12,2.122,0,4.729,0h125.468
					C132.803,0,135,2.12,135,4.726v30.541C135,37.872,132.803,40,130.197,40L130.197,40z"/>
					<path d="M134.032,35.268c0,2.116-1.714,3.83-3.834,3.83H4.729c-2.119,0-3.839-1.714-3.839-3.83V4.725
					c0-2.115,1.72-3.835,3.839-3.835h125.468c2.121,0,3.834,1.72,3.834,3.835L134.032,35.268L134.032,35.268z"/>
					<g>
					<g>
					<path fill="#FFFFFF" d="M30.128,19.784c-0.029-3.223,2.639-4.791,2.761-4.864c-1.511-2.203-3.853-2.504-4.676-2.528
						c-1.967-0.207-3.875,1.177-4.877,1.177c-1.022,0-2.565-1.157-4.228-1.123c-2.14,0.033-4.142,1.272-5.24,3.196
						c-2.266,3.923-0.576,9.688,1.595,12.859c1.086,1.553,2.355,3.287,4.016,3.226c1.625-0.067,2.232-1.036,4.193-1.036
						c1.943,0,2.513,1.036,4.207,0.997c1.744-0.028,2.842-1.56,3.89-3.127c1.255-1.78,1.759-3.533,1.779-3.623
						C33.507,24.924,30.161,23.647,30.128,19.784z"/>
					<path fill="#FFFFFF" d="M26.928,10.306c0.874-1.093,1.472-2.58,1.306-4.089c-1.265,0.056-2.847,0.875-3.758,1.944
						c-0.806,0.942-1.526,2.486-1.34,3.938C24.557,12.205,26.016,11.382,26.928,10.306z"/>
					</g>
					</g>
					<g>
					<path fill="#FFFFFF" d="M53.645,31.504h-2.271l-1.244-3.909h-4.324l-1.185,3.909h-2.211l4.284-13.308h2.646L53.645,31.504z
					 M49.755,25.955L48.63,22.48c-0.119-0.355-0.342-1.191-0.671-2.507h-0.04c-0.131,0.566-0.342,1.402-0.632,2.507l-1.105,3.475
					H49.755z"/>
					<path fill="#FFFFFF" d="M64.662,26.588c0,1.632-0.441,2.922-1.323,3.869c-0.79,0.843-1.771,1.264-2.942,1.264
					c-1.264,0-2.172-0.454-2.725-1.362h-0.04v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04
					c0.711-1.146,1.79-1.718,3.238-1.718c1.132,0,2.077,0.447,2.833,1.342C64.284,23.949,64.662,25.127,64.662,26.588z M62.49,26.666
					c0-0.934-0.21-1.704-0.632-2.31c-0.461-0.632-1.08-0.948-1.856-0.948c-0.526,0-1.004,0.176-1.431,0.523
					c-0.428,0.35-0.708,0.807-0.839,1.373c-0.066,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.642,1.768
					s0.984,0.721,1.668,0.721c0.803,0,1.428-0.31,1.875-0.928C62.266,28.496,62.49,27.68,62.49,26.666z"/>
					<path fill="#FFFFFF" d="M75.699,26.588c0,1.632-0.441,2.922-1.324,3.869c-0.789,0.843-1.77,1.264-2.941,1.264
					c-1.264,0-2.172-0.454-2.724-1.362H68.67v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04
					c0.71-1.146,1.789-1.718,3.238-1.718c1.131,0,2.076,0.447,2.834,1.342C75.32,23.949,75.699,25.127,75.699,26.588z M73.527,26.666
					c0-0.934-0.211-1.704-0.633-2.31c-0.461-0.632-1.078-0.948-1.855-0.948c-0.527,0-1.004,0.176-1.432,0.523
					c-0.428,0.35-0.707,0.807-0.838,1.373c-0.065,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.64,1.768
					c0.428,0.48,0.984,0.721,1.67,0.721c0.803,0,1.428-0.31,1.875-0.928C73.303,28.496,73.527,27.68,73.527,26.666z"/>
					<path fill="#FFFFFF" d="M88.039,27.772c0,1.132-0.393,2.053-1.182,2.764c-0.867,0.777-2.074,1.165-3.625,1.165
					c-1.432,0-2.58-0.276-3.449-0.829l0.494-1.777c0.936,0.566,1.963,0.85,3.082,0.85c0.803,0,1.428-0.182,1.877-0.544
					c0.447-0.362,0.67-0.848,0.67-1.454c0-0.54-0.184-0.995-0.553-1.364c-0.367-0.369-0.98-0.712-1.836-1.029
					c-2.33-0.869-3.494-2.142-3.494-3.816c0-1.094,0.408-1.991,1.225-2.689c0.814-0.699,1.9-1.048,3.258-1.048
					c1.211,0,2.217,0.211,3.02,0.632l-0.533,1.738c-0.75-0.408-1.598-0.612-2.547-0.612c-0.75,0-1.336,0.185-1.756,0.553
					c-0.355,0.329-0.533,0.73-0.533,1.205c0,0.526,0.203,0.961,0.611,1.303c0.355,0.316,1,0.658,1.936,1.027
					c1.145,0.461,1.986,1,2.527,1.618C87.77,26.081,88.039,26.852,88.039,27.772z"/>
					<path fill="#FFFFFF" d="M95.088,23.508h-2.35v4.659c0,1.185,0.414,1.777,1.244,1.777c0.381,0,0.697-0.033,0.947-0.099l0.059,1.619
					c-0.42,0.157-0.973,0.236-1.658,0.236c-0.842,0-1.5-0.257-1.975-0.77c-0.473-0.514-0.711-1.376-0.711-2.587v-4.837h-1.4v-1.6h1.4
					v-1.757l2.094-0.632v2.389h2.35V23.508z"/>
					<path fill="#FFFFFF" d="M105.691,26.627c0,1.475-0.422,2.686-1.264,3.633c-0.883,0.975-2.055,1.461-3.516,1.461
					c-1.408,0-2.529-0.467-3.365-1.401s-1.254-2.113-1.254-3.534c0-1.487,0.43-2.705,1.293-3.652c0.861-0.948,2.023-1.422,3.484-1.422
					c1.408,0,2.541,0.467,3.396,1.402C105.283,24.021,105.691,25.192,105.691,26.627z M103.479,26.696
					c0-0.885-0.189-1.644-0.572-2.277c-0.447-0.766-1.086-1.148-1.914-1.148c-0.857,0-1.508,0.383-1.955,1.148
					c-0.383,0.634-0.572,1.405-0.572,2.317c0,0.885,0.189,1.644,0.572,2.276c0.461,0.766,1.105,1.148,1.936,1.148
					c0.814,0,1.453-0.39,1.914-1.168C103.281,28.347,103.479,27.58,103.479,26.696z"/>
					<path fill="#FFFFFF" d="M112.621,23.783c-0.211-0.039-0.436-0.059-0.672-0.059c-0.75,0-1.33,0.283-1.738,0.85
					c-0.355,0.5-0.533,1.132-0.533,1.895v5.035h-2.131l0.02-6.574c0-1.106-0.027-2.113-0.08-3.021h1.857l0.078,1.836h0.059
					c0.225-0.631,0.58-1.139,1.066-1.52c0.475-0.343,0.988-0.514,1.541-0.514c0.197,0,0.375,0.014,0.533,0.039V23.783z"/>
					<path fill="#FFFFFF" d="M122.156,26.252c0,0.382-0.025,0.704-0.078,0.967h-6.396c0.025,0.948,0.334,1.673,0.928,2.173
					c0.539,0.447,1.236,0.671,2.092,0.671c0.947,0,1.811-0.151,2.588-0.454l0.334,1.48c-0.908,0.396-1.98,0.593-3.217,0.593
					c-1.488,0-2.656-0.438-3.506-1.313c-0.848-0.875-1.273-2.05-1.273-3.524c0-1.447,0.395-2.652,1.186-3.613
					c0.828-1.026,1.947-1.539,3.355-1.539c1.383,0,2.43,0.513,3.141,1.539C121.873,24.047,122.156,25.055,122.156,26.252z
					 M120.123,25.699c0.014-0.632-0.125-1.178-0.414-1.639c-0.369-0.593-0.936-0.889-1.699-0.889c-0.697,0-1.264,0.289-1.697,0.869
					c-0.355,0.461-0.566,1.014-0.631,1.658H120.123z"/>
					</g>
					<g>
					<g>
					<path fill="#FFFFFF" d="M49.05,10.009c0,1.177-0.353,2.063-1.058,2.658c-0.653,0.549-1.581,0.824-2.783,0.824
						c-0.596,0-1.106-0.026-1.533-0.078V6.982c0.557-0.09,1.157-0.136,1.805-0.136c1.145,0,2.008,0.249,2.59,0.747
						C48.723,8.156,49.05,8.961,49.05,10.009z M47.945,10.038c0-0.763-0.202-1.348-0.606-1.756c-0.404-0.407-0.994-0.611-1.771-0.611
						c-0.33,0-0.611,0.022-0.844,0.068v4.889c0.129,0.02,0.365,0.029,0.708,0.029c0.802,0,1.421-0.223,1.857-0.669
						S47.945,10.892,47.945,10.038z"/>
					<path fill="#FFFFFF" d="M54.909,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.009,0.718-1.727,0.718
						c-0.692,0-1.243-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.712-0.698
						c0.692,0,1.248,0.229,1.669,0.688C54.708,9.757,54.909,10.333,54.909,11.037z M53.822,11.071c0-0.435-0.094-0.808-0.281-1.119
						c-0.22-0.376-0.533-0.564-0.94-0.564c-0.421,0-0.741,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
						c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.714-0.191,0.94-0.574
						C53.725,11.882,53.822,11.506,53.822,11.071z"/>
					<path fill="#FFFFFF" d="M62.765,8.719l-1.475,4.714h-0.96l-0.611-2.047c-0.155-0.511-0.281-1.019-0.379-1.523h-0.019
						c-0.091,0.518-0.217,1.025-0.379,1.523l-0.649,2.047h-0.971l-1.387-4.714h1.077l0.533,2.241c0.129,0.53,0.235,1.035,0.32,1.513
						h0.019c0.078-0.394,0.207-0.896,0.389-1.503l0.669-2.25h0.854l0.641,2.202c0.155,0.537,0.281,1.054,0.378,1.552h0.029
						c0.071-0.485,0.178-1.002,0.32-1.552l0.572-2.202H62.765z"/>
					<path fill="#FFFFFF" d="M68.198,13.433H67.15v-2.7c0-0.832-0.316-1.248-0.95-1.248c-0.311,0-0.562,0.114-0.757,0.343
						c-0.193,0.229-0.291,0.499-0.291,0.808v2.796h-1.048v-3.366c0-0.414-0.013-0.863-0.038-1.349h0.921l0.049,0.737h0.029
						c0.122-0.229,0.304-0.418,0.543-0.569c0.284-0.176,0.602-0.265,0.95-0.265c0.44,0,0.806,0.142,1.097,0.427
						c0.362,0.349,0.543,0.87,0.543,1.562V13.433z"/>
					<path fill="#FFFFFF" d="M71.088,13.433h-1.047V6.556h1.047V13.433z"/>
					<path fill="#FFFFFF" d="M77.258,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.01,0.718-1.727,0.718
						c-0.693,0-1.244-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.711-0.698
						c0.693,0,1.248,0.229,1.67,0.688C77.057,9.757,77.258,10.333,77.258,11.037z M76.17,11.071c0-0.435-0.094-0.808-0.281-1.119
						c-0.219-0.376-0.533-0.564-0.939-0.564c-0.422,0-0.742,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
						c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.713-0.191,0.939-0.574
						C76.074,11.882,76.17,11.506,76.17,11.071z"/>
					<path fill="#FFFFFF" d="M82.33,13.433h-0.941l-0.078-0.543h-0.029c-0.322,0.433-0.781,0.65-1.377,0.65
						c-0.445,0-0.805-0.143-1.076-0.427c-0.246-0.258-0.369-0.579-0.369-0.96c0-0.576,0.24-1.015,0.723-1.319
						c0.482-0.304,1.16-0.453,2.033-0.446V10.3c0-0.621-0.326-0.931-0.979-0.931c-0.465,0-0.875,0.117-1.229,0.349l-0.213-0.688
						c0.438-0.271,0.979-0.407,1.617-0.407c1.232,0,1.85,0.65,1.85,1.95v1.736C82.262,12.78,82.285,13.155,82.33,13.433z
						 M81.242,11.813v-0.727c-1.156-0.02-1.734,0.297-1.734,0.95c0,0.246,0.066,0.43,0.201,0.553c0.135,0.123,0.307,0.184,0.512,0.184
						c0.23,0,0.445-0.073,0.641-0.218c0.197-0.146,0.318-0.331,0.363-0.558C81.236,11.946,81.242,11.884,81.242,11.813z"/>
					<path fill="#FFFFFF" d="M88.285,13.433h-0.93l-0.049-0.757h-0.029c-0.297,0.576-0.803,0.864-1.514,0.864
						c-0.568,0-1.041-0.223-1.416-0.669s-0.562-1.025-0.562-1.736c0-0.763,0.203-1.381,0.611-1.853c0.395-0.44,0.879-0.66,1.455-0.66
						c0.633,0,1.076,0.213,1.328,0.64h0.02V6.556h1.049v5.607C88.248,12.622,88.26,13.045,88.285,13.433z M87.199,11.445v-0.786
						c0-0.136-0.01-0.246-0.029-0.33c-0.059-0.252-0.186-0.464-0.379-0.635c-0.195-0.171-0.43-0.257-0.701-0.257
						c-0.391,0-0.697,0.155-0.922,0.466c-0.223,0.311-0.336,0.708-0.336,1.193c0,0.466,0.107,0.844,0.322,1.135
						c0.227,0.31,0.533,0.465,0.916,0.465c0.344,0,0.619-0.129,0.828-0.388C87.1,12.069,87.199,11.781,87.199,11.445z"/>
					<path fill="#FFFFFF" d="M97.248,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.008,0.718-1.727,0.718
						c-0.691,0-1.242-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.713-0.698
						c0.691,0,1.248,0.229,1.668,0.688C97.047,9.757,97.248,10.333,97.248,11.037z M96.162,11.071c0-0.435-0.094-0.808-0.281-1.119
						c-0.221-0.376-0.533-0.564-0.941-0.564c-0.42,0-0.74,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
						c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.715-0.191,0.941-0.574
						C96.064,11.882,96.162,11.506,96.162,11.071z"/>
					<path fill="#FFFFFF" d="M102.883,13.433h-1.047v-2.7c0-0.832-0.316-1.248-0.951-1.248c-0.311,0-0.562,0.114-0.756,0.343
						s-0.291,0.499-0.291,0.808v2.796h-1.049v-3.366c0-0.414-0.012-0.863-0.037-1.349h0.92l0.049,0.737h0.029
						c0.123-0.229,0.305-0.418,0.543-0.569c0.285-0.176,0.602-0.265,0.951-0.265c0.439,0,0.805,0.142,1.096,0.427
						c0.363,0.349,0.543,0.87,0.543,1.562V13.433z"/>
					<path fill="#FFFFFF" d="M109.936,9.504h-1.154v2.29c0,0.582,0.205,0.873,0.611,0.873c0.188,0,0.344-0.016,0.467-0.049
						l0.027,0.795c-0.207,0.078-0.479,0.117-0.814,0.117c-0.414,0-0.736-0.126-0.969-0.378c-0.234-0.252-0.35-0.676-0.35-1.271V9.504
						h-0.689V8.719h0.689V7.855l1.027-0.31v1.173h1.154V9.504z"/>
					<path fill="#FFFFFF" d="M115.484,13.433h-1.049v-2.68c0-0.845-0.316-1.268-0.949-1.268c-0.486,0-0.818,0.245-1,0.735
						c-0.031,0.103-0.049,0.229-0.049,0.377v2.835h-1.047V6.556h1.047v2.841h0.02c0.33-0.517,0.803-0.775,1.416-0.775
						c0.434,0,0.793,0.142,1.078,0.427c0.355,0.355,0.533,0.883,0.533,1.581V13.433z"/>
					<path fill="#FFFFFF" d="M121.207,10.853c0,0.188-0.014,0.346-0.039,0.475h-3.143c0.014,0.466,0.164,0.821,0.455,1.067
						c0.266,0.22,0.609,0.33,1.029,0.33c0.465,0,0.889-0.074,1.271-0.223l0.164,0.728c-0.447,0.194-0.973,0.291-1.582,0.291
						c-0.73,0-1.305-0.215-1.721-0.645c-0.418-0.43-0.625-1.007-0.625-1.731c0-0.711,0.193-1.303,0.582-1.775
						c0.406-0.504,0.955-0.756,1.648-0.756c0.678,0,1.193,0.252,1.541,0.756C121.068,9.77,121.207,10.265,121.207,10.853z
						 M120.207,10.582c0.008-0.311-0.061-0.579-0.203-0.805c-0.182-0.291-0.459-0.437-0.834-0.437c-0.342,0-0.621,0.142-0.834,0.427
						c-0.174,0.227-0.277,0.498-0.311,0.815H120.207z"/>
					</g>
					</g>
					</g>
					</svg>

					<!--android-->

					<svg version="1.1" id="artwork" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					 width="135px" height="40px" viewBox="0 0 135 40" enable-background="new 0 0 135 40" xml:space="preserve">
				<g>
					<g>
						<path d="M130,40H5c-2.8,0-5-2.2-5-5V5c0-2.7,2.2-5,5-5h125c2.8,0,5,2.2,5,5v30C135,37.7,132.8,40,130,40z"/>
					</g>
					<g>
						<g>
							<path fill="#A6A6A6" d="M130,0.8c2.3,0,4.2,1.9,4.2,4.2v30c0,2.3-1.9,4.2-4.2,4.2H5c-2.3,0-4.2-1.9-4.2-4.2V5
								c0-2.3,1.9-4.2,4.2-4.2H130 M130,0H5C2.3,0,0,2.3,0,5v30c0,2.8,2.2,5,5,5h125c2.8,0,5-2.2,5-5V5C135,2.3,132.8,0,130,0L130,0z"/>
						</g>
					</g>
					<g>
						<path fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.2" stroke-miterlimit="10" d="M47.4,10.2c0,0.8-0.2,1.5-0.7,2
							c-0.6,0.6-1.3,0.9-2.2,0.9c-0.9,0-1.6-0.3-2.2-0.9c-0.6-0.6-0.9-1.3-0.9-2.2c0-0.9,0.3-1.6,0.9-2.2c0.6-0.6,1.3-0.9,2.2-0.9
							c0.4,0,0.8,0.1,1.2,0.3c0.4,0.2,0.7,0.4,0.9,0.7l-0.5,0.5c-0.4-0.5-0.9-0.7-1.6-0.7c-0.6,0-1.2,0.2-1.6,0.7
							c-0.5,0.4-0.7,1-0.7,1.7s0.2,1.3,0.7,1.7c0.5,0.4,1,0.7,1.6,0.7c0.7,0,1.2-0.2,1.7-0.7c0.3-0.3,0.5-0.7,0.5-1.2h-2.2V9.8h2.9
							C47.4,9.9,47.4,10.1,47.4,10.2z"/>
						<path fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.2" stroke-miterlimit="10" d="M52,7.7h-2.7v1.9h2.5v0.7h-2.5v1.9H52V13
							h-3.5V7H52V7.7z"/>
						<path fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.2" stroke-miterlimit="10" d="M55.3,13h-0.8V7.7h-1.7V7H57v0.7h-1.7V13z"/>
						<path fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.2" stroke-miterlimit="10" d="M59.9,13V7h0.8v6H59.9z"/>
						<path fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.2" stroke-miterlimit="10" d="M64.1,13h-0.8V7.7h-1.7V7h4.1v0.7h-1.7V13z"
							/>
						<path fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.2" stroke-miterlimit="10" d="M73.6,12.2c-0.6,0.6-1.3,0.9-2.2,0.9
							c-0.9,0-1.6-0.3-2.2-0.9c-0.6-0.6-0.9-1.3-0.9-2.2s0.3-1.6,0.9-2.2c0.6-0.6,1.3-0.9,2.2-0.9c0.9,0,1.6,0.3,2.2,0.9
							c0.6,0.6,0.9,1.3,0.9,2.2C74.5,10.9,74.2,11.6,73.6,12.2z M69.8,11.7c0.4,0.4,1,0.7,1.6,0.7s1.2-0.2,1.6-0.7
							c0.4-0.4,0.7-1,0.7-1.7S73.5,8.7,73,8.3c-0.4-0.4-1-0.7-1.6-0.7s-1.2,0.2-1.6,0.7c-0.4,0.4-0.7,1-0.7,1.7S69.3,11.3,69.8,11.7z"/>
						<path fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.2" stroke-miterlimit="10" d="M75.6,13V7h0.9l2.9,4.7h0l0-1.2V7h0.8v6h-0.8
							l-3.1-4.9h0l0,1.2V13H75.6z"/>
					</g>
					<path fill="#FFFFFF" d="M68.1,21.8c-2.4,0-4.3,1.8-4.3,4.3c0,2.4,1.9,4.3,4.3,4.3c2.4,0,4.3-1.8,4.3-4.3
						C72.4,23.5,70.5,21.8,68.1,21.8z M68.1,28.6c-1.3,0-2.4-1.1-2.4-2.6c0-1.5,1.1-2.6,2.4-2.6c1.3,0,2.4,1,2.4,2.6
						C70.5,27.5,69.4,28.6,68.1,28.6z M58.8,21.8c-2.4,0-4.3,1.8-4.3,4.3c0,2.4,1.9,4.3,4.3,4.3c2.4,0,4.3-1.8,4.3-4.3
						C63.1,23.5,61.2,21.8,58.8,21.8z M58.8,28.6c-1.3,0-2.4-1.1-2.4-2.6c0-1.5,1.1-2.6,2.4-2.6c1.3,0,2.4,1,2.4,2.6
						C61.2,27.5,60.1,28.6,58.8,28.6z M47.7,23.1v1.8h4.3c-0.1,1-0.5,1.8-1,2.3c-0.6,0.6-1.6,1.3-3.3,1.3c-2.7,0-4.7-2.1-4.7-4.8
						s2.1-4.8,4.7-4.8c1.4,0,2.5,0.6,3.3,1.3l1.3-1.3c-1.1-1-2.5-1.8-4.5-1.8c-3.6,0-6.7,3-6.7,6.6c0,3.6,3.1,6.6,6.7,6.6
						c2,0,3.4-0.6,4.6-1.9c1.2-1.2,1.6-2.9,1.6-4.2c0-0.4,0-0.8-0.1-1.1H47.7z M93.1,24.5c-0.4-1-1.4-2.7-3.6-2.7c-2.2,0-4,1.7-4,4.3
						c0,2.4,1.8,4.3,4.2,4.3c1.9,0,3.1-1.2,3.5-1.9l-1.4-1c-0.5,0.7-1.1,1.2-2.1,1.2c-1,0-1.6-0.4-2.1-1.3l5.7-2.4L93.1,24.5z
						 M87.3,25.9c0-1.6,1.3-2.5,2.2-2.5c0.7,0,1.4,0.4,1.6,0.9L87.3,25.9z M82.6,30h1.9V17.5h-1.9V30z M79.6,22.7L79.6,22.7
						c-0.5-0.5-1.3-1-2.3-1c-2.1,0-4.1,1.9-4.1,4.3c0,2.4,1.9,4.2,4.1,4.2c1,0,1.8-0.5,2.2-1h0.1v0.6c0,1.6-0.9,2.5-2.3,2.5
						c-1.1,0-1.9-0.8-2.1-1.5l-1.6,0.7c0.5,1.1,1.7,2.5,3.8,2.5c2.2,0,4-1.3,4-4.4V22h-1.8V22.7z M77.4,28.6c-1.3,0-2.4-1.1-2.4-2.6
						c0-1.5,1.1-2.6,2.4-2.6c1.3,0,2.3,1.1,2.3,2.6C79.7,27.5,78.7,28.6,77.4,28.6z M101.8,17.5h-4.5V30h1.9v-4.7h2.6
						c2.1,0,4.1-1.5,4.1-3.9S103.9,17.5,101.8,17.5z M101.9,23.5h-2.7v-4.3h2.7c1.4,0,2.2,1.2,2.2,2.1C104,22.4,103.2,23.5,101.9,23.5z
						 M113.4,21.7c-1.4,0-2.8,0.6-3.3,1.9l1.7,0.7c0.4-0.7,1-0.9,1.7-0.9c1,0,1.9,0.6,2,1.6v0.1c-0.3-0.2-1.1-0.5-1.9-0.5
						c-1.8,0-3.6,1-3.6,2.8c0,1.7,1.5,2.8,3.1,2.8c1.3,0,1.9-0.6,2.4-1.2h0.1v1h1.8v-4.8C117.2,23,115.5,21.7,113.4,21.7z M113.2,28.6
						c-0.6,0-1.5-0.3-1.5-1.1c0-1,1.1-1.3,2-1.3c0.8,0,1.2,0.2,1.7,0.4C115.2,27.8,114.2,28.6,113.2,28.6z M123.7,22l-2.1,5.4h-0.1
						l-2.2-5.4h-2l3.3,7.6l-1.9,4.2h1.9l5.1-11.8H123.7z M106.9,30h1.9V17.5h-1.9V30z"/>
					<g>

							<linearGradient id="SVGID_1_" gradientUnits="userSpaceOnUse" x1="21.7997" y1="173.2903" x2="5.0173" y2="156.5079" gradientTransform="matrix(1 0 0 -1 0 182)">
							<stop  offset="0" style="stop-color:#00A0FF"/>
							<stop  offset="6.574450e-03" style="stop-color:#00A1FF"/>
							<stop  offset="0.2601" style="stop-color:#00BEFF"/>
							<stop  offset="0.5122" style="stop-color:#00D2FF"/>
							<stop  offset="0.7604" style="stop-color:#00DFFF"/>
							<stop  offset="1" style="stop-color:#00E3FF"/>
						</linearGradient>
						<path fill="url(#SVGID_1_)" d="M10.4,7.5C10.1,7.8,10,8.3,10,8.9v22.1c0,0.6,0.2,1.1,0.5,1.4l0.1,0.1l12.4-12.4V20v-0.1L10.4,7.5
							L10.4,7.5z"/>

							<linearGradient id="SVGID_2_" gradientUnits="userSpaceOnUse" x1="33.8344" y1="161.9986" x2="9.6375" y2="161.9986" gradientTransform="matrix(1 0 0 -1 0 182)">
							<stop  offset="0" style="stop-color:#FFE000"/>
							<stop  offset="0.4087" style="stop-color:#FFBD00"/>
							<stop  offset="0.7754" style="stop-color:#FFA500"/>
							<stop  offset="1" style="stop-color:#FF9C00"/>
						</linearGradient>
						<path fill="url(#SVGID_2_)" d="M27,24.3l-4.1-4.1V20v-0.1l4.1-4.1l0.1,0.1l4.9,2.8c1.4,0.8,1.4,2.1,0,2.9L27,24.3L27,24.3z"/>

							<linearGradient id="SVGID_3_" gradientUnits="userSpaceOnUse" x1="24.827" y1="159.7039" x2="2.0687" y2="136.9456" gradientTransform="matrix(1 0 0 -1 0 182)">
							<stop  offset="0" style="stop-color:#FF3A44"/>
							<stop  offset="1" style="stop-color:#C31162"/>
						</linearGradient>
						<path fill="url(#SVGID_3_)" d="M27.1,24.2L22.9,20L10.4,32.5c0.5,0.5,1.2,0.5,2.1,0.1L27.1,24.2"/>

							<linearGradient id="SVGID_4_" gradientUnits="userSpaceOnUse" x1="7.2973" y1="181.8238" x2="17.4599" y2="171.6613" gradientTransform="matrix(1 0 0 -1 0 182)">
							<stop  offset="0" style="stop-color:#32A071"/>
							<stop  offset="6.850000e-02" style="stop-color:#2DA771"/>
							<stop  offset="0.4762" style="stop-color:#15CF74"/>
							<stop  offset="0.8009" style="stop-color:#06E775"/>
							<stop  offset="1" style="stop-color:#00F076"/>
						</linearGradient>
						<path fill="url(#SVGID_4_)" d="M27.1,15.8L12.5,7.5c-0.9-0.5-1.6-0.4-2.1,0.1L22.9,20L27.1,15.8z"/>
						<g>
							<path opacity="0.2" enable-background="new    " d="M27,24.1l-14.5,8.2c-0.8,0.5-1.5,0.4-2,0l0,0l-0.1,0.1l0,0l0.1,0.1l0,0
								c0.5,0.4,1.2,0.5,2,0L27,24.1L27,24.1z"/>
							<path opacity="0.12" enable-background="new    " d="M10.4,32.3C10.1,32,10,31.5,10,30.9v0.1c0,0.6,0.2,1.1,0.5,1.4V32.3
								L10.4,32.3z"/>
						</g>
						<path opacity="0.12" enable-background="new    " d="M32,21.3l-5,2.8l0.1,0.1l4.9-2.8c0.7-0.4,1-0.9,1-1.4l0,0
							C33,20.5,32.6,20.9,32,21.3z"/>
						<path opacity="0.25" fill="#FFFFFF" enable-background="new    " d="M12.5,7.6L32,18.7c0.6,0.4,1,0.8,1,1.3l0,0c0-0.5-0.3-1-1-1.4
							L12.5,7.5C11.1,6.7,10,7.3,10,8.9v0.1C10,7.5,11.1,6.8,12.5,7.6z"/>
					</g>
				</g>
				</svg>



				</div>
			</div>

			<div class="col-md-4 letter-sub text-center">
				<div class="sub-para">
					<p>Share Us</p>
				</div>
				<br>
				<div class="social">

					<ul>
						<li><a href="#"><i class="fa fa-lg fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-github"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-pinterest"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-flickr"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-vimeo-square"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-stack-overflow"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-dropbox"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-tumblr"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-dribbble"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-skype"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-stack-exchange"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-youtube"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-xing"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-rss"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-foursquare"></i></a></li>
						<li><a href="#"><i class="fa fa-lg fa-youtube-play"></i></a></li>
					</ul>
				</div>

			</div>
			<div class="clearfix"> </div>
		</div>

	</div>



	<footer>
		<p>&copy; 2018 Lovely-Pets. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank"> W3layouts </a></p>
		<p>Developed By : Group Dolba, <span style="color:red; font-weight:bold;"> CEO : </span> Hee-jung, Jang </p>
		<p>
			<span style="color:red; font-weight:bold;">Manager : </span> Han-byul, Jung |
			<span style="color:red; font-weight:bold;">Head Developer :</span> Seung-hyun, Baek |
			<span style="color:red; font-weight:bold;">Team Mate : </span> Jin-ju, Kim | Si-yeon, Kim | Tae-jun, Jeon
		</p>
		<p>
			Address : 경기도 성남시 분당구 삼평동 대왕판교로 670, 유스페이스 2동 8층
		</p>
	</footer>

	<!--js working-->
	<script type='text/javascript' src='${pageContext.request.contextPath}/resources/lib/js/main/jquery-2.2.3.min.js'></script>
	<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.js"></script>
	<!-- //js  working-->

	<script src="${pageContext.request.contextPath}/resources/lib/js/main/responsiveslides.min.js"></script>

	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 900,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--// banner-->
	<!--pop-up-box video-->
	<script src="${pageContext.request.contextPath}/resources/lib/js/main/jquery.magnific-popup.js" type="text/javascript"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //pop-up-box video -->

	<!-- script for portfolio -->
	<script type='text/javascript' src='${pageContext.request.contextPath}/resources/lib/js/main/jquery.easy-gallery.js'></script>
	<script type='text/javascript'>
		//init Gallery
		$('.portfolio').easyGallery();
	</script>
	<script src="${pageContext.request.contextPath}/resources/lib/js/main/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true // 100% fit in a container
			});
		});
	</script>
	<!-- //script for portfolio -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/main/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/main/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->

	<!-- for-bottom-to-top smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
			
			
		});
		
		function logout() {
			document.getElementById("logoutFrm").submit();
		}
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //for-bottom-to-top smooth scrolling -->


</body>

</html>