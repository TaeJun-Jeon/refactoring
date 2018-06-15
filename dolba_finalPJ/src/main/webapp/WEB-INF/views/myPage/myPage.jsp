<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/fullcalendar.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/fullcalendar.print.min.css" rel="stylesheet" media="print" />
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/myPage.css" rel="stylesheet"/>
</head>

<body>
	<div class="container myPage-padding">
		<div class="row profile">
			<div class="col-md-3">
				<div class="profile-sidebar">
					<!-- SIDEBAR USERPIC -->
					<div class="profile-userpic"></div>
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
						<div class="profile-usertitle-name">정한별</div>
						<div class="profile-usertitle-job">보호자</div>
					</div>
					<!-- END SIDEBAR USER TITLE -->
					<!-- SIDEBAR BUTTONS -->
					<div class="profile-userbuttons">
						<button type="button" class="btn btn-success btn-sm">로그아웃</button>
						<button type="button" class="btn btn-danger btn-sm">회원탈퇴</button>
					</div>
					<!-- END SIDEBAR BUTTONS -->
					<!-- SIDEBAR MENU -->
					<div class="profile-usermenu">
						<ul class="nav">
							<li class="active"><a href="#petInfo" data-toggle="tab" id="petInfo"> <i class="fa fa-paw"></i> 펫정보
							</a></li>
							<li><a href="#userInfo" data-toggle="tab" id="userInfo"> <i class="fa fa-user"></i> 나의정보
							</a></li>
							<li><a href="#tab3" data-toggle="tab" id="ownerCallTab"> <i class="fa fa-calendar"></i> 부르기
							</a></li>
							<li><a href="#tab4" data-toggle="tab" id="ownerRequestTab"> <i class="fa fa-child"></i> 맡기기
							</a></li>
						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			<!-- ---------------------------------펫 정보------------------------------------------ -->
			<div class="col-md-9">
				<div class="tab-content">
					<div class="tab-pane active" id="petInfo">
						<div class="resume">
							<header class="page-header">
								<h1 class="page-title">Profile of Happy</h1>
							</header>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
									<div class="panel panel-default">
										<div class="panel-heading resume-heading">
											<div class="row">
												<div class="col-lg-12">
													<div class="col-xs-12 col-sm-4">
														<figure>
															<img class="img-circle img-responsive" alt="" src="http://placehold.it/300x300">
														</figure>
														<div class="row">
															<div class="col-xs-12 social-btns"></div>
														</div>
													</div>
													<div class="col-xs-12 col-sm-8">
														<ul class="list-group">
															<li class="list-group-item">John Doe</li>
															<li class="list-group-item">Software Engineer</li>
															<li class="list-group-item">Google Inc.</li>
															<li class="list-group-item">Google Inc.</li>
															<li class="list-group-item">Google Inc.</li>
															<li class="list-group-item">Google Inc.</li>
														</ul>
													</div>
													<div class="profile-userbuttons">
														<button type="button" class="btn btn-info btn-sm" id="updatePet">수정하기</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ----------------------------나의정보------------------------------------ -->
					<div class="tab-pane" id="userInfo">
						<div class="resume">
							<header class="page-header">
								<h1 class="page-title">My profile</h1>
							</header>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
									<div class="panel panel-default">
										<div class="panel-heading resume-heading">
											<div class="row">
												<div class="col-lg-12">
													<div class="col-xs-12 col-sm-4">
														<figure>
															<img class="img-circle img-responsive" alt="" src="http://placehold.it/300x300">
														</figure>
														<div class="row">
															<div class="col-xs-12 social-btns"></div>
														</div>
													</div>
													<div class="col-xs-12 col-sm-8">
														<ul class="list-group">
															<li class="list-group-item">John Doe</li>
															<li class="list-group-item">Software Engineer</li>
															<li class="list-group-item">Google Inc.</li>
															<li class="list-group-item"><i class="fa fa-phone"></i> 000-000-0000</li>
															<li class="list-group-item"><i class="fa fa-envelope"></i> john@example.com</li>
														</ul>
													</div>
													<div class="profile-userbuttons">
														<button type="button" class="btn btn-info btn-sm" id="updateUser">수정하기</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- -------------------------------부르기---------------------------------------- -->
					<div class="tab-pane" id="tab3">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tabb1" data-toggle="tab" id ="ownerCallTabBefore">확정전 </a></li>
							<li><a href="#tabb2" data-toggle="tab" id="ownerCallTabAfter">확정후</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabb1">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive" id="aaa">
												<table id="callBeforeTable" class="table table-bordred table-striped">
													<thead>
														<th><input type="checkbox" id="checkall" /></th>
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
														<th>수락</th>
														<th>거절</th>
													</thead>
												</table>
												<div class="clearfix"></div>
												<ul class="pagination pull-right" id="page">
												 	<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li> 
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="tabb2">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table id="callAfterTable" class="table table-bordred table-striped">
													<thead>
														<th><input type="checkbox" id="checkall" /></th>
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
													</thead>
												</table>
												<div class="clearfix"></div>
												<ul class="pagination pull-right">
													<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
												</ul>
											</div>
											<div id='callCalendar' class="calendar1" style="width: 70%;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ---------------------------------------맡기기------------------------------------------------------------- -->
					<div class="tab-pane" id="tab4">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tabb3" data-toggle="tab">확정전 </a></li>
							<li><a href="#tabb4" data-toggle="tab" id="ownerRequestTabAfter">확정후</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabb3">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive" id="aaa">
												<table id="requestBeforeTable" class="table table-bordred table-striped">
													<thead>
														<th><input type="checkbox" id="checkall" /></th>
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
														<th>처리상태</th>
													</thead>
												</table>
												<div class="clearfix"></div>
												<ul class="pagination pull-right">
													<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="tabb4">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table id="requestAfterTable" class="table table-bordred table-striped">
													<thead>
														<th><input type="checkbox" id="checkall" /></th>
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
													</thead>
												</table>
												<div class="clearfix"></div>
												<ul class="pagination pull-right">
													<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
												</ul>
											</div>
											<div id='requestCalendar' class="calendar1" style="width: 70%;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src='${pageContext.request.contextPath}/resources/lib/js/fullCalendar/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/resources/lib/js/fullCalendar/fullcalendar.min.js'></script>
	<script src="${pageContext.request.contextPath}/resources/lib/js/myPage/myPage.js" type="text/javascript"></script>
</body>
</html>
