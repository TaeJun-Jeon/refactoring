<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<!DOCTYPE html>
<html>
<head>
<%-- <script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/read.css">
<link href="${pageContext.request.contextPath}/resources/lib/css/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/petProfile.css" rel="stylesheet" type="text/css"> --%>
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/board/read.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css">

<!------ Include the above in your HEAD tag ---------->
<!-- <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script
	src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'
></script> -->
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="canonical" href="https://codepen.io/chrisburton/pen/dlFky?limit=all&page=3&q=comment" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
<style type="text/css">
input{
margin-top: 10px;
}
textarea{
margin-top: 10px;
}
</style>
<SCRIPT >
 function checkValid() {
	var f = window.document.writeForm;
	if (f.subject.value == "" ) {
		alert( "제목을 입력해 주세요." );
		f.subject.focus();
		return false;
	}
	
	if ( f.content.value == "" ) {
		alert( "내용을 입력해 주세요." );
		f.content.focus();
		return false;
	}
	
	if ( f.password.value == "" ) {
		alert( "비밀번호를 입력해 주세요." );
		f.password.focus();
		return false;
	}
	
    return true;
} 
</SCRIPT>
</head>
<body>
	<div class="container" style="width: 600px; margin-top: 130px;margin-bottom: 50px;">
		<div class="row">
			<form role="form" class="contact-form" id="writeForm" name="writeForm" method="post" 
			action="${pageContext.request.contextPath}/review/writeReview?${_csrf.parameterName}=${_csrf.token}" 
			onsubmit="return checkValid();">
				<h3 style="margin-bottom: 25px; text-align: center;">Review 등록</h3>
				<div class="row">
					<!-- <div class="col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" name="reviewWriteday" autocomplete="off" id="Date" placeholder="Date">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" name="reviewReadnum" autocomplete="off" id="View" placeholder="View">
						</div>
					</div>-->
					<div class="col-md-6">
						<div class="form-group">
							<sec:authorize access="isAuthenticated()">
								<sec:authentication var="user" property="principal" />
							작성자 <input readonly="readonly" type="text" class="form-control" name="ownerId" autocomplete="off" id="name" value="${user.userId}">
								   <%-- <input type="hidden" name="ownerId" value="ownerId=${user.userId}"/> --%>
							</sec:authorize>
						</div>
					</div> 
					<%-- <input type="hidden" name="ownerId" value="${dto.ownerId}"/> --%>
					<%-- <input type="hidden" name="ownerId" value="${requestScope.dto.ownerId}"/> --%>
					<div class="col-md-12">
						<div class="form-group">
							제목<input type="text" class="form-control" name="reviewTitle" autocomplete="off" id="subject" placeholder="subject">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							내용<textarea class="form-control textarea" rows="3" name="reviewContent" id="content" placeholder="content"></textarea>
						</div>
					</div>
				</div>
				<div class="row">
				<div class="col-md-6">
						<div class="form-group">
							비밀번호<input type="password" class="form-control" name="reviewPwd" autocomplete="off" id="password" placeholder="password">
						</div>
					</div>
				</div>
				<br>
				<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">글등록 <i class="fa fa-paw"></i></button>
			</form>
		</div>
	</div>
</body>
</html>