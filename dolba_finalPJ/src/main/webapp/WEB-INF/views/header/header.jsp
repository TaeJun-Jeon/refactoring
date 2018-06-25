<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--부트스트랩(공통코드)-->
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<!-- 폰트(공통코드) -->
<link href="${pageContext.request.contextPath}/resources/lib/fonts/font-awesome.css" type="text/css" rel="stylesheet">
<!-- 헤더 스타일(특정코드) -->
<link href="${pageContext.request.contextPath}/resources/lib/css/header/header-style.css" type="text/css" rel="stylesheet">
</head>
<sec:authorize access="hasAuthority('ADMIN')">
	<style>
.navbar-dolba {
	background-color: #FF8000;
	border-radius: 4px;
}
</style>
</sec:authorize>
<body>
	<nav class="navbar navbar-default navbar-dolba">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">
					<img src="${pageContext.request.contextPath}/resources/lib/img/logo.png" width="40px" height="40px"> <span>&nbsp;PET-DATE</span>
				</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.request.contextPath}/">
						<span class="fa fa-home"></span>&nbsp;Home
					</a></li>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication var="user" property="principal" />
					<li><a href="#">${user.userName}님 안녕하세요.</a></li>
				</sec:authorize>
				<sec:authorize access="hasAnyAuthority('OWNER','SITTER')">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="fa fa-list"></span>&nbsp;메뉴
						</a>
						<div class="dropdown-custom dropdown-menu" style="margin-top: 20px;margin-right: 0px;margin-left: 1000px;">
							<div class="container" style="margin-top: 20px;">
								<div class="row" style="margin-left: 130px;">
									<sec:authorize access="hasAnyAuthority('OWNER')">
									<sec:authentication var="user" property="principal"/>
									<div class="col-md-2">
										<a href="${pageContext.request.contextPath}/owner/call/callForm?ownerId=${user.userId}" class="dropdown-custom-a-tag">
											<img src="${pageContext.request.contextPath}/resources/lib/img/callSitter.png" width="85px" height="75px"><br> <span
												class="text-center"
											>펫시터 부르기</span>
										</a>
									</div>
									<div class="col-md-2" style="margin-left: 40px;">
										<a href="${pageContext.request.contextPath}/owner/request/sitterList" class="dropdown-custom-a-tag">
											<img src="${pageContext.request.contextPath}/resources/lib/img/entrustSitter.png" width="95px" height="75px"><br> <span
												class="text-center" style="padding-left: 20px"
											>펫 맡기기</span>
										</a>
									</div>
									</sec:authorize>
									<sec:authorize access="hasAnyAuthority('SITTER')">
									<sec:authentication var="user" property="principal"/>
									<div class="col-md-2" style="margin-left: 50px;">
										<a href="${pageContext.request.contextPath}/sitter/call/callList?sitterId=${user.userId}" class="dropdown-custom-a-tag">
											<img src="${pageContext.request.contextPath}/resources/lib/img/petsit.png" width="65px" height="75px"><br> <span
												class="text-center"
											>돌보기 신청</span>
										</a>
									</div>
									</sec:authorize>
									<div class="col-md-2" style="margin-left: 20px;">
										<a href="${pageContext.request.contextPath}/notice/allSelect" class="dropdown-custom-a-tag">
											<img src="${pageContext.request.contextPath}/resources/lib/img/noticeBoard.png" width="85px" height="75px"><br> <span
												class="text-center" style="padding-left: 13px"
											>공지사항</span>
										</a>
									</div>
									<div class="col-md-2" class="dropdown-custom-a-tag" style="margin-left: 30px;">
										<a href="#" class="dropdown-custom-a-tag">
											<img src="${pageContext.request.contextPath}/resources/lib/img/question.png" width="95px" height="75px"><br> <span
												class="text-center"
											>질문과 답변</span>
										</a>
									</div>
								</div>
							</div>
						</div></li>
				</sec:authorize>
				<li style="margin-top: 6px;margin-right: 10px;margin-left: 3px">
					<div class="showback">
						<!-- Single button -->
						<div class="btn-group">
							<button type="button" class="btn btn-theme dropdown-toggle" data-toggle="dropdown">
								<span class="fa fa-user"></span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<sec:authorize access="isAuthenticated()">
									<sec:authentication var="user" property="principal" />
									<sec:authorize access="hasAnyAuthority('OWNER','SITTER')">
										<li><a href="${pageContext.request.contextPath}/owner/myPage?role=${user.role}&userId=${user.userId}">
												<span class="fa fa-sign-out"></span>&nbsp;&nbsp;마이페이지
											</a></li>
									</sec:authorize>
									<sec:authorize access="hasAuthority('ADMIN')">
										<li><a href="${pageContext.request.contextPath}/admin/adminSitterList">
												<span class="fa fa-sign-out"></span>&nbsp;&nbsp;펫시터 관리
											</a></li>
									</sec:authorize>
									<li><a href="javascript:logout();">
											<span class="fa fa-sign-out"></span>&nbsp;&nbsp;로그아웃
										</a></li>
								</sec:authorize>
								<form id="logoutFrm" action="${pageContext.request.contextPath}/admin/logout" method="post"style:"display:none">
									<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
								</form>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</nav>
	<script type="text/javascript">
		function logout() {
			var result = confirm("로그아웃하시겠습니까?");
			if(result){
				document.getElementById("logoutFrm").submit();
			}
		}
	</script>
	
	
	<!-- 제이쿼리(공통코드) -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.js"></script>
	<!-- 부트스트랩 js (공통코드) -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.js"></script>
</body>
</html>