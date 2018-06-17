<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>



</head>
<script>


/* 	<-------------------------------------------펫시터 기능------------------------------------------------->*/
 
/*	<-----------------------------------펫시터 출장가기 탭--------------------------------------> */
 $(document).ready(function(){

	var sitterCallTab = document.getElementById('sitterCallTab');
	sitterCallTab.onclick = function() {
		$.ajax({
			
					type : "post",//전송방식
					data: "${_csrf.parameterName}=${_csrf.token}",
					url : "${pageContext.request.contextPath}/owner/allSelectCall", //서버요청주소
					dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
					success : function(result) {//개수|단어,단어,단어,...
						$("#sitterCallBeforeTable tr:gt(0)").remove();
						var str ="";
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

						$('#sitterCallBeforeTable').append(str);

					},
					error : function(err) {
						console.log("에러 발생 : " + err);
					}
				});

	}
	
	
	var sitterCallTabAfter= document.getElementById('sitterCallTabAfter');
	sitterCallTabAfter.onclick = function() {
		$.ajax({
					type : "post",//전송방식
					url : "${pageContext.request.contextPath}/owner/allSelectCallApproval", //서버요청주소
					data : "${_csrf.parameterName}=${_csrf.token}",
					dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
					success : function(result) {//개수|단어,단어,단어,...
						$("#sitterCallAfterTable tr:gt(0)").remove();
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
								 		  date: '${_csrf.parameterName}=${_csrf.token}',
								          type: "GET",
								          async:false,
								          datatype: 'json',
								          success: function(data){
								              var events = [];
								              
								              $.each(data, function(index,item) {
								               
								               var startTime = item.callReservateStart.split(" ");
								               var endTime = item.callReservateEnd.split(" ");
								               console.log(startTime);
								               events.push({title: item.sitterId, start: startTime[0], end: endTime[0]});
								           });
								              callback(events);
								          },
								         });
								     },
								     eventAfterRender: function (event, element, view) {
								     },
								     dayClick: function(date, jsEvent, view) {
								      return false;
								     },
								     eventClick: function(calEvent, jsEvent, view) {
								      return false;
							  }
							    });
						

						})

							$('#sitterCallAfterTable').append(str);

					},
						error : function(err) {
							console.log("에러 발생 : " + err);
					}
				});

	}

	
/* 	<-----------------------------------보호자의 맡기기 탭--------------------------------------> */

	var sitterRequestTab = document.getElementById('sitterRequestTab');
	sitterRequestTab.onclick = function() {
		$.ajax({
					type : "post",//전송방식
					url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequest", //서버요청주소
					data: "${_csrf.parameterName}=${_csrf.token}",
					dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
					success : function(result) {//개수|단어,단어,단어,...
						$("#sitterRequestBeforeTable tr:gt(0)").remove();
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

						$('#sitterRequestBeforeTable').append(str);

					},
					error : function(err) {
						console.log("에러 발생 : " + err);
					}
				});

	} 
	
	var sitterRequestTabAfter = document.getElementById('sitterRequestTabAfter');
	sitterRequestTabAfter.onclick =function(){
		$.ajax({
			type : "post",//전송방식
			url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequestApproval", //서버요청주소
			data: "${_csrf.parameterName}=${_csrf.token}",
			dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
			success : function(result) {//개수|단어,단어,단어,...
				$("#sitterRequestAfterTable tr:gt(0)").remove();
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
						     eventAfterRender: function (event, element, view) {
						     },
						     dayClick: function(date, jsEvent, view) {
						      return false;
						     },
						     eventClick: function(calEvent, jsEvent, view) {
						      return false;
					  }
					    });
				})

				$('#sitterRequestAfterTable').append(str);

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
				data: "${_csrf.parameterName}=${_csrf.token}&callId="+ id +"&state=y",//서버에게 보낼 parameter 정보
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
				data:"${_csrf.parameterName}=${_csrf.token}&callId="+ id +"&state=x",//서버에게 보낼 parameter 정보
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
	
})	/* <------------------------------펫시터 기능--------------------------------------> */
/* 	<-----------------------------펫시터의 돌보기 탭-------------------------------------->
 */
	
})
</script>
<body>
<sec:authorize access="isAuthenticated()">
	<div class="container myPage-padding">
		<div class="row profile">
			<div class="col-md-3">
				<div class="profile-sidebar">
					<!-- SIDEBAR USERPIC -->
					<div class="profile-userpic"></div>
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
					
					<sec:authentication var="user" property="principal"/>
					<div class="profile-usertitle-name">${user.userName}</div>
						<sec:authorize access="hasRole('ROLE_OWNER')">
						<div class="profile-usertitle-job">보호자</div>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_SITTER')">
						<div class="profile-usertitle-job">펫시터</div>
						</sec:authorize>
						
					</div>
					<!-- END SIDEBAR USER TITLE -->
					<!-- SIDEBAR BUTTONS -->
					<div class="profile-userbuttons">
						<button type="button" class="btn btn-success btn-sm" onclick="javascript:logout();">로그아웃</button>
						<button type="button" class="btn btn-danger btn-sm">회원탈퇴</button>
						<form id="logoutFrm" action="${pageContext.request.contextPath}/admin/logout" method="post" style:"display:none">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
						</form>
					</div>
					<!-- END SIDEBAR BUTTONS -->
					<!-- SIDEBAR MENU -->
					<div class="profile-usermenu">
						<ul class="nav">
						<sec:authorize access="hasRole('ROLE_OWNER')">
							<li class="active"><a href="#petInfo" data-toggle="tab" > <i class="fa fa-paw"></i> 펫정보
							</a></li>
						</sec:authorize>
							<li><a href="#userInfo" data-toggle="tab" > <i class="fa fa-user"></i> 나의정보
							</a></li>
						<sec:authorize access="hasRole('ROLE_OWNER')">
						<li><a href="#tab3" data-toggle="tab" id="ownerCallTab"> <i class="fa fa-calendar"></i> 부르기
							</a></li>
							<li><a href="#tab4" data-toggle="tab" id="ownerRequestTab"> <i class="fa fa-child"></i> 맡기기
							</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_SITTER')">
						<li><a href="#sitterCall" data-toggle="tab" id="sitterCallTab"> <i class="fa fa-calendar"></i> 돌보기
							</a></li>
							<li><a href="#sitterRequest" data-toggle="tab" id="sitterRequestTab"> <i class="fa fa-child"></i> 출장가기
							</a></li>
						</sec:authorize>
							
						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			
					<!-- -------------------------------부르기---------------------------------------- -->
					<div class="tab-pane" id="sitterCall">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#sitterCall1" data-toggle="tab" id ="sitterCallTabBefore">확정전 </a></li>
							<li><a href="#sitterCall2" data-toggle="tab" id="sitterCallTabAfter">확정후</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="#sitterCall1">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive" id="aaa">
												<table id="sitterCallBeforeTable" class="table table-bordred table-striped">
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
							<div class="tab-pane" id="sitterCall2">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table id="sitterCallAfterTable" class="table table-bordred table-striped">
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
					<div class="tab-pane" id="sitterRequest">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#sitterRequest1" data-toggle="tab" >확정전 </a></li>
							<li><a href="#sitterRequest2" data-toggle="tab" id="ownerRequestTabAfter">확정후</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="sitterRequest1">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive" id="aaa">
												<table id="sitterRequestBeforeTable" class="table table-bordred table-striped">
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
							<div class="tab-pane" id="sitterRequest2">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table id="sitterRequestAfterTable" class="table table-bordred table-striped">
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
</sec:authorize>
	

	<script src='${pageContext.request.contextPath}/resources/lib/js/fullCalendar/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/resources/lib/js/fullCalendar/fullcalendar.min.js'></script>
</body>
</html>
