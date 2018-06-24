<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

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
<script>
function logout() {
	var result = confirm("로그아웃하시겠습니까?");
	if(result){
		document.getElementById("logoutFrm").submit();
	}
}

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
	

	/* <------------------------------펫시터 기능--------------------------------------> */
/* 	<-----------------------------펫시터의 돌보기 탭--------------------------------------> */
	var userId = '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.userId}';
	var role ='${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.role}';

	var sitterCallTab = document.getElementById('sitterCallTab');
	sitterCallTab.onclick = function() {
		$.ajax({
			
					type : "post",//전송방식
					data: "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
					url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequest", //서버요청주소
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
							str += "<td>"+ item.ownerRequestStart+ "</td>";
							str += "<td>"+ item.ownerRequestEnd+ "</td>";
							str += "<td>"+ item.ownerId+ "</td>";
							str += "<td id='hiddenTd'>"+ item.ownerRequestId+ "</td>";
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
					url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequestApproval", //서버요청주소
					data: "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
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
							str += "<td>"+ item.ownerRequestStart+ "</td>";
							str += "<td>"+ item.ownerRequestEnd+ "</td>";
							str += "<td>"+ item.ownerId+ "</td>";
							str += "</tr>";
							str += "</tbody>";
									
							 $('#sitterCallCalendar').fullCalendar({
							    	defaultDate : new Date(),
							    	editable : false,
							    	eventLimit : true, // allow "more" link when too many events
							   
							    	 events: function (start, end, timezone, callback) {
							        	
								              var events = [];
								              
								              $.each(result, function(index,item) {
								               
								               var startTime = item.ownerRequestStart.split(" ");
								               var endTime = item.ownerRequestEnd.split(" ");
								               console.log(startTime);
								               events.push({title: item.ownerId, start: startTime[0], end: endTime[0]});
								           });
								              callback(events);
								        
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
		
		/* 	<-----------------------------------펫시터의 출장가기 탭--------------------------------------> */

		var sitterRequestTab = document.getElementById('sitterRequestTab');
		sitterRequestTab.onclick = function() {
			$.ajax({
						type : "post",//전송방식
						url : "${pageContext.request.contextPath}/owner/allSelectSitterRequest", //서버요청주소
						data: "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
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
								str += "<td>"+item.callReservateStart+ "</td>";
								str += "<td>"+ item.callReservateEnd+ "</td>";
								str += "<td>"+ item.ownerId+ "</td>";
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
				url : "${pageContext.request.contextPath}/owner/allSelectSitterRequestApproval", //서버요청주소
				data : "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
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
						str += "<td>"+item.callReservateStart+ "</td>";
						str += "<td>"+ item.callReservateEnd+ "</td>";
						str += "<td>"+ item.ownerId+ "</td>";
						str += "</tr>";
						str += "</tbody>";
														
						 $('#sitterRequestCalendar').fullCalendar({
						    	defaultDate : new Date(),
						    	editable : false,
						    	eventLimit : true, // allow "more" link when too many events
						   
						    	 events: function (start, end, timezone, callback) {

							              var events = [];
							              
							              $.each(result, function(index,item) {
							               
							               var startTime = (item.callReservateStart).split(" ");
							               var endTime = (item.callReservateEnd).split(" ");
							               console.log(startTime);
							               events.push({title: item.ownerId, start: startTime[0], end: endTime[0]});
							           });
							              callback(events);
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
					url : "${pageContext.request.contextPath}/owner/updateSitterApproval", //서버주소
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
							
			var result = confirm("거절하시겠습니까?");
			if(result){
				var id = $(this).parent().parent().parent().find("td:nth-child(6)").text();
				$.ajax({
					type : "post", //전송방식
					url : "${pageContext.request.contextPath}/owner/updateSitterApproval", //서버주소
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
						<div class="profile-usertitle-job">펫시터</div>
						
						
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
					
							<li class="active"><a href="#userInfo" data-toggle="tab" > <i class="fa fa-user"></i> 나의정보</a></li>
					
							<li><a href="#sitterCall" data-toggle="tab" id="sitterCallTab"> <i class="fa fa-calendar"></i> 돌보기	</a></li>
							<li><a href="#sitterRequest" data-toggle="tab" id="sitterRequestTab"> <i class="fa fa-child"></i> 출장가기</a></li>
			
							
						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			<!-- ---------------------------------펫 정보------------------------------------------ -->
			<div class="col-md-9">
				<div class="tab-content">
					<!-- ----------------------------나의정보------------------------------------ -->
					<div class="tab-pane active" id="userInfo">
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
															<img class="img-circle img-responsive" alt="" src="${pageContext.request.contextPath}/resources/lib/save1/${sitterDTO.sitterFname}">
														</figure>
														<div class="row">
															<div class="col-xs-12 social-btns"></div>
														</div>
													</div>
													<div class="col-xs-12 col-sm-8">
														<ul class="list-group">
															<li class="list-group-item"> ${sitterDTO.sitterName}</li>
															<li class="list-group-item"> ${sitterDTO.sitterGrade} 별점</li>
															
															<li class="list-group-item"> 기본요금 <fmt:formatNumber value="${sitterDTO.sitterBasisPrice}" pattern="#,###"></fmt:formatNumber> 원</li>
															
															<li class="list-group-item"><i class="fa fa-phone"></i>  ${sitterDTO.sitterPhone}</li>
															<li class="list-group-item"><i class="fa fa-envelope"></i>  ${sitterDTO.sitterEmail}</li>
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

					<!-- -------------------------------돌보기---------------------------------------- -->
					<div class="tab-pane" id="sitterCall">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#sitterCall1" data-toggle="tab" id ="sitterCallTabBefore">확정전 </a></li>
							<li><a href="#sitterCall2" data-toggle="tab" id="sitterCallTabAfter">확정후</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="sitterCall1">
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
														<th>보호자</th>
														<th>수락</th>
														<th>거절</th>
													</thead>
												</table>
												<div class="clearfix"></div>
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
														<th>보호자</th>
													</thead>
												</table>
												<div class="clearfix"></div>
											</div>
											<div id='sitterCallCalendar' class="calendar1" style="width: 70%;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- --------------------------------------출장가기------------------------------------------------------------- -->
					<div class="tab-pane" id="sitterRequest">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#sitterRequest1" data-toggle="tab" >확정전 </a></li>
							<li><a href="#sitterRequest2" data-toggle="tab" id="sitterRequestTabAfter">확정후</a></li>
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
														<th>보호자</th>
													</thead>
												</table>
												<div class="clearfix"></div>
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
														<th>보호자</th>
													</thead>
												</table>
												<div class="clearfix"></div>
											</div>
											<div id='sitterRequestCalendar' class="calendar1" style="width: 70%;"></div>
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
