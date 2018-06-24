<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%-- <script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
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
background-color: white;
margin-top: 10px;
}
textarea{
background-color: white;
margin-top: 10px;
}
.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control{
background-color: white;
}
</style>
</head>
<body>
	<div class="container" style="width: 600px;margin-top: 130px;margin-bottom: 50px;">
		<div class="row">
			<form role="form" class="contact-form">
				<h3 style="margin-bottom: 25px; text-align: center;">Notice 자세히
					보기</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							작성일 <input disabled="disabled" type="text" class="form-control" name="Date"
								autocomplete="off" id="Date" value="${requestScope.dto.noticeWriteday}">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							조회수 <input disabled="disabled" type="text" class="form-control" name="View"
								autocomplete="off" id="View" value="${requestScope.dto.noticeReadnum}">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							작성자 <input disabled="disabled" type="text" class="form-control" name="name"
								autocomplete="off" id="name" value="관리자">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							제목 <input disabled="disabled" type="text" class="form-control" name="subject"
								autocomplete="off" id="subject" value="${requestScope.dto.noticeTitle}">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							내용
							<textarea disabled="disabled" class="form-control textarea" rows="3" name="content"
								id="content">${requestScope.dto.noticeContent}</textarea>
						</div>
					</div>
				</div>
				<br> 
				<input id="button" style="width: 126px;" value="목록으로" name="button"
				class="btn btn-primary pull-right"
				onclick="location.href='${pageContext.request.contextPath}/notice/allSelect'" />

			</form>
		</div>
	</div>
</body>
</html>