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


	$("[data-toggle=tooltip]").tooltip();
	
	var userId = '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.userId}';
	var role ='${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.role}';
	
/* 	<-------------------------------------------보호자 기능------------------------------------------------->*/
 
/*	<-----------------------------------보호자의 부르기 탭--------------------------------------> */
	var ownerCallTab = document.getElementById('ownerCallTab');
	var ownerCallTabFunc = function() {
		
		$.ajax({
			
					type : "post",//전송방식
					data: "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
					url : "${pageContext.request.contextPath}/owner/allSelectCall", //서버요청주소
					dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
					success : function(result) {//개수|단어,단어,단어,...
						$("#callBeforeTable tr:gt(0)").remove();
						var str = "";
						var set = 1;
						$.each(result,function(index,item) {
							str += "<tbody>";
							str += "<tr>";
							str += "<td><a href='#' onclick=\'window.open(\"${pageContext.request.contextPath}/owner/call/ownerCallDetail?callId="+item.callId+" \", \"DetailView\", \"width=1250px, height=700px, status=no, toolbar=no, menubar=no, resizable=no, channelmode=no, left=250px, top=80px\")\' >"+ set+++ "</a></td>";
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
	ownerCallTab.onclick = ownerCallTabFunc;
	
	
		
	
	var ownerCallTabAfter= document.getElementById('ownerCallTabAfter');
	ownerCallTabAfter.onclick = function() {
		$.ajax({
					type : "post",//전송방식
					url : "${pageContext.request.contextPath}/owner/allSelectCallApproval", //서버요청주소
					data : "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
					dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
					success : function(result) {//개수|단어,단어,단어,...
						$("#callAfterTable tr:gt(0)").remove();
						var str = "";
						var set = 1;
						$.each(result,function(index,item) {
							str += "<tbody>";
							str += "<tr>";
							str += "<td><a href='#' onclick=\'window.open(\"${pageContext.request.contextPath}/owner/call/ownerCallDetailAfter?callId="+item.callId+" \", \"DetailView\", \"width=1250px, height=700px, status=no, toolbar=no, menubar=no, resizable=no, channelmode=no, left=250px, top=80px\")\' >"+ set+++ "</a></td>";
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
							        	
								              var events = [];
								              
								              $.each(result, function(index,item) {
								               
								               var startTime = item.callReservateStart.split(" ");
								               var endTime = item.callReservateEnd.split(" ");
								               console.log(startTime);
								               events.push({title: item.sitterId, start: startTime[0], end: endTime[0]});
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

							$('#callAfterTable').append(str);

					},
						error : function(err) {
							console.log("에러 발생 : " + err);
					}
				});

	}

	
/* 	<-----------------------------------보호자의 맡기기 탭--------------------------------------> */

	var ownerRequestTab = document.getElementById('ownerRequestTab');
	ownerRequestTab.onclick = function() {
		$.ajax({
					type : "post",//전송방식
					url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequest", //서버요청주소
					data: "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
					dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
					success : function(result) {//개수|단어,단어,단어,...
						$("#requestBeforeTable tr:gt(0)").remove();
						var str = "";
						var set = 1;
						$.each(result,function(index,item) {
							str += "<tbody>";
							str += "<tr>";
							str += "<td><a href='#' onclick=\'window.open(\"${pageContext.request.contextPath}/owner/ownerRequestDetail?ownerRequestId="+item.ownerRequestId+" \", \"DetailView\", \"width=1250px, height=700px, status=no, toolbar=no, menubar=no, resizable=no, channelmode=no, left=250px, top=80px\")\' >"+ set+++ "</a></td>";
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
			data: "${_csrf.parameterName}=${_csrf.token}&role="+role+"&userId="+userId,
			dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
			success : function(result) {//개수|단어,단어,단어,...
				$("#requestAfterTable tr:gt(0)").remove();
				var str = "";
				var set = 1;
				$.each(result,function(index,item) {
					str += "<tbody>";
					str += "<tr>";
					str += "<td><a href='#' onclick=\'window.open(\"${pageContext.request.contextPath}/owner/ownerRequestDetailAfter?ownerRequestId="+item.ownerRequestId+" \", \"DetailView\", \"width=1250px, height=700px, status=no, toolbar=no, menubar=no, resizable=no, channelmode=no, left=250px, top=80px\")\' >"+ set+++ "</a></td>";
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
					        
						          
						             // var json = data.calendarList;
						              var events = [];
						              
						              $.each(result, function(index,item) {
						               
						               var startTime = item.ownerRequestStart.split(" ");
						               var endTime = item.ownerRequestEnd.split(" ");
						               console.log(startTime);
						               events.push({title: item.sitterId, start: startTime[0], end: endTime[0]});
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
			var id = $(this).parent().parent().parent().find("td:nth-child(5)").text();
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
						
		var result = confirm("거절하시겠습니까?");
		if(result){
			var id = $(this).parent().parent().parent().find("td:nth-child(5)").text();
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
	
	var tabStatus;
		$("#myCallTabLink").bind("click",function(){
			tabStatus = "myCallTabLi";
		})
		$("#ownerTabLi").bind("click",function(){
			tabStatus = "ownerTabLi";
		})
		$("#ownerRequestTabLi").bind("click",function(){
			tabStatus = "ownerRequestTabLi";
		})
		
		$("#pagingPrev").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/owner/myPage?pageNum=${pagingUtil.curPage}&role="+role+"&tabStatus="+tabStatus)
				$("#pagingForm").submit();
			})
			
			$("#paingNext").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/owner/myPage?pageNum=${pagingUtil.curPage+2}&role="+role+"&tabStatus="+tabStatus)
				$("#pagingForm").submit();
			})
			
			$(".pageNum").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/owner/myPage?&pageNum="+$(this).text()+"&role="+role+"&tabStatus="+tabStatus);
				$("#pagingForm").submit();
			})
})
$(function(){
	var status;
	status = "#${tabStatus}";
	if(status != "#"){
		$(status).addClass("active");
		$("#myCall").addClass("active");
	}else{
		$("#petInfoTabLi").addClass("active");
		$("#petInfo").addClass("active");
	}
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
						<div class="profile-usertitle-job">보호자</div>
						
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
						
							<li id="petInfoTabLi"><a href="#petInfo" data-toggle="tab" > <i class="fa fa-paw"></i> 펫정보</a></li>
							<li><a href="#userInfo" data-toggle="tab" > <i class="fa fa-user"></i> 나의정보</a></li>
							<li id="myCallTabLi"><a href="#myCall" data-toggle="tab" id="myCallTabLink"><i class="fa fa-user"></i> 내가 쓴 돌보기신청</a></li>
							<li id="ownerTabLi"><a href="#tab3" data-toggle="tab" id="ownerCallTab"> <i class="fa fa-calendar"></i> 부르기</a></li>
							<li id="ownerRequestTabLi"><a href="#tab4" data-toggle="tab" id="ownerRequestTab"> <i class="fa fa-child"></i> 맡기기</a></li>
				

						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			<!-- ---------------------------------펫 정보------------------------------------------ -->
			<div class="col-md-9">
				<div class="tab-content">
					<div class="tab-pane" id="petInfo">
						<div class="resume">
						<c:choose>
						<c:when test="${petDTO eq null}">
						<header class="page-header">
						<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
						
						<div class="col-xs-12 col-sm-8" style="margin-top:100px">
						<div style="margin-bottom:20px">등록된 펫 정보가 없습니다</div>
						<button type="button" class="btn btn-info btn-sm" id="updatePet" onclick="location.href='${pageContext.request.contextPath}/owner/petInsertForm?userId=${user.userId}'" style="margin-top:80px">펫 등록</button>
						</div>
						
						</div>
						</div>
						</header>
						</c:when>
						<c:otherwise>
							<header class="page-header">
								<h1 class="page-title">Profile of ${petDTO.petName}</h1>
							</header>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
									<div class="panel panel-default">
										<div class="panel-heading resume-heading">
											<div class="row">
												<div class="col-lg-12">
													<div class="col-xs-12 col-sm-4">
														<figure>
															<img class="img-circle img-responsive" alt="" src="${pageContext.request.contextPath}/resources/lib/save/pet/${petDTO.petFname}">
														</figure>
														<div class="row">
															<div class="col-xs-12 social-btns"></div>
														</div>
													</div>
													<div class="col-xs-12 col-sm-8">
														<ul class="list-group">
															<li class="list-group-item"> ${petDTO.petName}</li>
															<li class="list-group-item"> ${petDTO.petSpecies}</li>
															<li class="list-group-item"> ${petDTO.petIllness}</li>
															<li class="list-group-item"> ${petDTO.petWeight}</li>
															<li class="list-group-item"> ${petDTO.petGender}</li>
														</ul>
													</div>
													<div class="profile-userbuttons">
														<button type="button" class="btn btn-info btn-sm" id="updatePet" onclick="location.href='${pageContext.request.contextPath}/owner/updatePetInfoForm?userId=${user.userId}'">수정하기</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:otherwise>
						</c:choose>
						
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
															<img class="img-circle img-responsive" alt="" src="${pageContext.request.contextPath}/resources/lib/save/owner/${ownerDTO.ownerfName}">
														</figure>
														<div class="row">
															<div class="col-xs-12 social-btns"></div>
														</div>
													</div>
													<div class="col-xs-12 col-sm-8">
														<ul class="list-group">
															<li class="list-group-item">${ownerDTO.ownerName}</li>
															<li class="list-group-item">${ownerDTO.ownerAddr}</li>
															<li class="list-group-item">${ownerDTO.ownerDetailAddr}</li>
															<li class="list-group-item"><i class="fa fa-phone"></i> ${ownerDTO.ownerPhone}</li>
															<li class="list-group-item"><i class="fa fa-envelope"></i> ${ownerDTO.ownerEmail}</li>
														</ul>
													</div>
													<div class="profile-userbuttons">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!------------------------------------나의 부르기 신청목록--------------------------------->
					<div class="tab-pane" id="myCall">
						<div class="resume">
							<header class="page-header">
								<h1 class="page-title">나의 부르기 신청 목록</h1>
							</header>
							<div class="container">
							
							<div class="row">
								<div class="col-md-12">
							
									<div class="table-responsive">
										<table class="table table-bordred table-striped">
					<thead>
						<td>NO.</td>
						<td>시작 날짜</td>
						<td>종료 날짜</td>
						<td>작성일</td>
						<td>총 액 (원)</td>					
					</thead>
					<tbody>
						<c:forEach items="${callList}" var="callList" varStatus="status">
						<tr>
						<td>${status.count}</td>
						<td>${callList.callReservateStart}</td>
						<td>${callList.callReservateEnd}</td>
						<td>${callList.callWriteday}</td>
						<td><fmt:formatNumber value="${callList.callTotalPrice}" pattern="#,###"></fmt:formatNumber></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="clearfix"></div>
			<div class="row paging" id="paging-div">
			<div class="row">
				<div class="col-md-6 text-center col-md-push-3">
					<nav>
					<form action="" method="post" id="pagingForm">
					<ul class="pagination sitter-pagination">
						<li class="page-item"><a class="page-link" id="pagingPrev" href="#">Previous</a></li>
						<c:forEach begin="${pagingUtil.startPage}" end="${pagingUtil.endPage}" varStatus="status">
							<c:choose>
								<c:when test="${pagingUtil.startPage+status.count-1 eq pagingUtil.curPage+1}">
									<li class="page-item active"><a class="page-link pageNumNow" id="pageElement">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:when test="${pagingUtil.startPage+status.count-1 gt pagingUtil.totalPage}">
									<li class="page-item disabled"><a class="page-link pageNumDisabled" id="pageElement">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link pageNum" id="pageElement" href="#">${pagingUtil.startPage+status.count-1}</a></li>
										<input type="hidden" name="pagehidden" id="pagehidden" value="${pagingUtil.startPage+status.count-1}">
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<li class="page-item"><a class="page-link" id="paingNext" href="#">Next</a></li>
					</ul>
					<input type="hidden" name="userId" value="${user.userId}">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					</form>
					</nav>
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
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
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
							<div class="tab-pane" id="tabb2">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table id="callAfterTable" class="table table-bordred table-striped">
													<thead>
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
													</thead>
												</table>
												<div class="clearfix"></div>
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
							<li class="active"><a href="#tabb3" data-toggle="tab" >확정전 </a></li>
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
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
														<th>처리상태</th>
													</thead>
												</table>
												<div class="clearfix"></div>
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
														<th>No</th>
														<th>시작날짜</th>
														<th>종료날짜</th>
														<th>펫시터</th>
													</thead>
												</table>
												<div class="clearfix"></div>
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
