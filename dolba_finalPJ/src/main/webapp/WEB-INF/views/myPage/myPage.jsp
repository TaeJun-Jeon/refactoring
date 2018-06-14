<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
<script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css">
<link href='${pageContext.request.contextPath}/resources/lib/css/myPage/fullcalendar.min.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/lib/css/myPage/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='${pageContext.request.contextPath}/resources/lib/js/fullCalendar/moment.min.js'></script>
<script src='${pageContext.request.contextPath}/resources/lib/js/fullCalendar/fullcalendar.min.js'></script>
</head>
<style>
#aaa {
	width: 70%;
	float: center;
}

div.table-responsive {
	width: 70%;
	float: center;
	box-sizing: border-box;
	margin-bottom: 50px;
}

div.calendar1 {
	width: 70%;
	float: left;
	box-sizing: border-box;
}

body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#callCalendar, #requestCalendar {
	max-width: 900px;
	margin: 0px auto;
}

#hiddenTd {
	display: none;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
						$("#mytable #checkall").click(function() {
											if ($("#mytable #checkall").is(':checked')) {
												$("#mytable input[type=checkbox]").each(function() {
																	$(this).prop("checked",true);
												});

											} else {
												$("#mytable input[type=checkbox]").each(function() {
																	$(this).prop("unchecked",false);
												});
											}
										});

						$("[data-toggle=tooltip]").tooltip();
						
						var petInfo = document.getElementById('petInfo');
						petInfo.onclick= function(){
							$.ajax({
								type:"post",
								url:"${pageContext.request.contextPath}/owner/selectPetInfo",
								dataType:"json",
								data:"ownerId=happymom",
								success:function(result){
									
								},
								error:function(err){
									console.log("에러발생: "+err);
								}
								
							})
						}

						var ownerCallTab = document.getElementById('ownerCallTab');
						ownerCallTab.onclick = function() {
							$.ajax({
										type : "post",//전송방식
										url : "${pageContext.request.contextPath}/owner/allSelectCall", //서버요청주소
										dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
										success : function(result) {//개수|단어,단어,단어,...
											$("#callBeforeTable tr:gt(0)").remove();
											var str = "";
											var set = 1;
											$.each(result,function(index,item) {
												str += "<tbody>";
												str += "<tr>";
												str += "<td><input type='checkbox' class='checkthis'/></td>";
												str += "<td><a href='#'>"+ set+++ "</a></td>";
												str += "<td>"+ item.callReservateStart+ "</td>";
												str += "<td>"+ item.callReservateEnd+ "</td>";
												str += "<td>"+ item.sitterId+ "</td>";
												str += "<td id='hiddenTd'>"+ item.callId+ "</td>";
												str += "<td><p data-placement='top' data-toggle='tooltip' title='수락'><button class='btn btn-primary btn-xs' data-title='Edit' value='수락' id='ok' ><span class='glyphicon glyphicon-pencil'></span></button></p></td>";
												str += "<td><p data-placement='top' data-toggle='tooltip' title='거절'><button class='btn btn-danger btn-xs' data-title='Delete' value='거절' id='reject' ><span class='glyphicon glyphicon-trash'></span></button></p></td>";

												str += "</tr>";
												str += "</tbody>";
											

								})

											$('#callBeforeTable').append(str);

										},
										error : function(err) {
											console.log("에러 발생 : " + err);
										}
									});

						}
						
						var ownerCallTabAfter= document.getElementById('ownerCallTabAfter');
						ownerCallTabAfter.onclick = function() {
							$.ajax({
										type : "post",//전송방식
										url : "${pageContext.request.contextPath}/owner/allSelectCallApproval", //서버요청주소
										dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
										success : function(result) {//개수|단어,단어,단어,...
											$("#callAfterTable tr:gt(0)").remove();
											var str = "";
											var set = 1;
											$.each(result,function(index,item) {
												str += "<tbody>";
												str += "<tr>";
												str += "<td><input type='checkbox' class='checkthis'/></td>";
												str += "<td><a href='#'>"+ set+++ "</a></td>";
												str += "<td>"+ item.callReservateStart+ "</td>";
												str += "<td>"+ item.callReservateEnd+ "</td>";
												str += "<td>"+ item.sitterId+ "</td>";
												str += "</tr>";
												str += "</tbody>";
												
														
												 $('#callCalendar').fullCalendar({
												    	defaultDate : new Date(),
												    	editable : false,
												    	eventLimit : true, // allow "more" link when too many events
												   
												    	 events: function (start, end, timezone, callback) {
												        	 $.ajax({
													          url: '${pageContext.request.contextPath}/owner/allSelectCallApproval',
													          type: "GET",
													          async:false,
													          datatype: 'json',
													          success: function(data){
													             // var json = data.calendarList;
													              var events = [];
													              
													              $.each(data, function(index,item) {
													               
													               var startTime = item.callReservateStart.split(" ");
													               var endTime = item.callReservateEnd.split(" ");
													           
													               events.push({title: item.sitterId, start: startTime[0], end: endTime[0]});
													           });
													              callback(events);
													          },
													         });
													     },
													     
													     eventClick: function(event) {
													    	 location.href = "${pageContext.request.contextPath}/owner/callRead";
																return false;
												  }
												    });
											

											})

												$('#callAfterTable').append(str);

										},
											error : function(err) {
												console.log("에러 발생 : " + err);
										}
									});

						}

						var ownerRequestTab = document.getElementById('ownerRequestTab');
						ownerRequestTab.onclick = function() {
							$.ajax({
										type : "post",//전송방식
										url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequest", //서버요청주소
										dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
										success : function(result) {//개수|단어,단어,단어,...
											$("#requestBeforeTable tr:gt(0)").remove();
											var str = "";
											var set = 1;
											$.each(result,function(index,item) {
												str += "<tbody>";
												str += "<tr>";
												str += "<td><input type='checkbox' class='checkthis'/></td>";
												str += "<td><a href='#'>"+ set+++ "</a></td>";
												str += "<td>"+ item.ownerRequestStart+ "</td>";
												str += "<td>"+ item.ownerRequestEnd+ "</td>";
												str += "<td>"+ item.sitterId+ "</td>";
												str += "<td>"+ item.sitterApproval+ "</td>";
												str += "</tr>";
												str += "</tbody>";
											})
				
											$('#requestBeforeTable').append(str);

										},
										error : function(err) {
											console.log("에러 발생 : " + err);
										}
									});

						} 
						
						var ownerRequestTabAfter = document.getElementById('ownerRequestTabAfter');
						ownerRequestTabAfter.onclick =function(){
							$.ajax({
								type : "post",//전송방식
								url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequestApproval", //서버요청주소
								dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
								success : function(result) {//개수|단어,단어,단어,...
									$("#requestAfterTable tr:gt(0)").remove();
									var str = "";
									var set = 1;
									$.each(result,function(index,item) {
										str += "<tbody>";
										str += "<tr>";
										str += "<td><input type='checkbox' class='checkthis'/></td>";
										str += "<td><a href='#'>"+ set+++ "</a></td>";
										str += "<td>"+ item.ownerRequestStart+ "</td>";
										str += "<td>"+ item.ownerRequestEnd+ "</td>";
										str += "<td>"+ item.sitterId+ "</td>";
										str += "</tr>";
										str += "</tbody>";
										
										/* $('#requestCalendar').fullCalendar(
												{
													defaultDate : new Date(),
													editable : false,
													eventLimit : true, // allow "more" link when too many events
													events : [ {
														title : 'All Day Event',
														start : '2018-03-01'
													}, {
														title : '정한별',
														start : '2018-06-05',
														end : '2018-06-09'
													}, {
														title : '정한별',
														start : '2018-06-09',
														end : '2018-06-11'
													} ],
													eventClick : function(event) {
														// opens events in a popup window
														//window.open("/owner/callRead", 'gcalevent', 'width=1000,height=800');
														location.href = "${pageContext.request.contextPath}/owner/callRead";
														return false;
													}
												}); */
												
										 $('#requestCalendar').fullCalendar({
										    	defaultDate : new Date(),
										    	editable : false,
										    	eventLimit : true, // allow "more" link when too many events
										   
										    	 events: function (start, end, timezone, callback) {
										        	 $.ajax({
											          url: '${pageContext.request.contextPath}/owner/allSelectOwnerRequestApproval',
											          type: "GET",
											          async:false,
											          datatype: 'json',
											          success: function(data){
											             // var json = data.calendarList;
											              var events = [];
											              
											              $.each(data, function(index,item) {
											               
											               var startTime = item.ownerRequestStart.split(" ");
											               var endTime = item.ownerRequestEnd.split(" ");
											               console.log(startTime);
											               events.push({title: item.sitterId, start: startTime[0], end: endTime[0]});
											           });
											              callback(events);
											          },
											         });
											     },
											   
											     eventClick: function(event) {
											    	 
											    	 location.href = "${pageContext.request.contextPath}/owner/callRead";
													 return false;
										  }
										    });
									})
		
									$('#requestAfterTable').append(str);

								},
								error : function(err) {
									console.log("에러 발생 : " + err);
								}
							});
						}

						$(document).on("click",	"#ok",function() {
											
							var result = confirm("수락하시겠습니까?");
							if(result){
								var id = $(this).parent().parent().parent().find("td:nth-child(6)").text();
						$.ajax({
									type : "post", //전송방식
									url : "${pageContext.request.contextPath}/owner/updateOwnerApproval", //서버주소
									data : "callId="+ id +"&state=y",//서버에게 보낼 parameter 정보
									dataType : "text", //서버가 front로 보내주는 데이터 타입 (text ,html, xml, json)
									success : function(result) {
										alert("예약 수락되었습니다");
										location.reload();
									},
									error : function(err) {
										console.log(err)
									}
								})
								
							}
										
						})
						
						$(document).on("click",	"#reject",function() {
											
							var result = confirm("수락하시겠습니까?");
							if(result){
								var id = $(this).parent().parent().parent().find("td:nth-child(6)").text();
								$.ajax({
									type : "post", //전송방식
									url : "${pageContext.request.contextPath}/owner/updateOwnerApproval", //서버주소
									data : "callId="+ id +"&state=x",//서버에게 보낼 parameter 정보
									dataType : "text", //서버가 front로 보내주는 데이터 타입 (text ,html, xml, json)
									success : function(result) {
										alert("예약 거절되었습니다");
										location.reload();
									},
									error : function(err) {
										console.log(err)
									}
								})
								
							}
										
						})
						
				
					})
</script>
<body>
	<div class="container">
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
</body>
</html>
