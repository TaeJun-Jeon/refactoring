<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/board/read.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/board/reply.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/board/adminReply.css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css">
<!------ Include the above in your HEAD tag ---------->
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script
	src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'
></script>
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="canonical" href="https://codepen.io/chrisburton/pen/dlFky?limit=all&page=3&q=comment" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
<script>
$(function(){
	$("#replyBtn").click(function(){
		var f = window.document.replyForm;
		if (f.replyContent.value == "") {
			alert("내용을 입력해 주세요.");
			f.replyContent.focus();
			return false;
		}
		$("#replyForm").submit();
	})	
})
</script>
</head>
<body>
	<div class="container" style="width: 600px">
		<div class="row">
			<form role="form" class="contact-form" style="margin-top: 50px;">
				<h3 style="margin-bottom: 25px; text-align: center;">Q & A 자세히 보기</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							작성일 <input type="text" class="form-control" name="Date" autocomplete="off" id="Date" value="${qaDTO.qaWriteday}" readonly>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							조회수 <input type="text" class="form-control" name="View" autocomplete="off" id="View" value="${qaDTO.qaReadnum}" readonly>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							작성자 <input type="text" class="form-control" name="name" autocomplete="off" id="name" value="${qaDTO.ownerId}" readonly>
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							제목 <input type="text" class="form-control" name="subject" autocomplete="off" id="subject" value="${qaDTO.qaTitle}" readonly>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							내용
							<textarea class="form-control textarea" rows="3" name="Message" id="Message">${qaDTO.qaContent}</textarea>
						</div>
					</div>
				</div>
			</form>
			<hr>
			<section id="" class="comments">
				<!-- <div class="col-md-10 col-md-pull-8"> -->
				<c:forEach items="${replyList}" var="replyDto">
					<article>
						<img id="profile-photo" src="${pageContext.request.contextPath}/resources/lib/img/paw.PNG" />
						<h4 style="margin-bottom: 0px;">관리자</h4><h5 style="margin-bottom: 15px;">${replyDto.replyWriteday}</h5>
						<p>
							<span>${replyDto.replyContent}</span>
					</article>
				</c:forEach>
			</section>
			<form name="replyForm" action="${pageContext.request.contextPath}/reply/insertReply" method="post">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<input type="hidden" name="qaId" value="${qaDTO.qaId}">
					<sec:authorize access="hasAuthority('ADMIN')">
						<!-- 관리자일경우 -->
						<div class="container">
							<div class="row">
								<div class="col-md-6" style="width: 620px;">
									<div class="widget-area no-padding blank">
										<div class="status-upload">
											<textarea name="replyContent" placeholder="댓글을 입력해주세요" style="width: 535px; height: 106px"></textarea>
											<button id="replyBtn" type="submit" class="btn btn-success" style="margin-bottom: 27px;">
												<i class="fa fa-paw"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</sec:authorize>
			</form>
				<input id="button" style="width: 126px;margin-bottom: 50px;" value="목록으로" name="button"
				class="btn btn-primary pull-right"
				onclick="location.href='${pageContext.request.contextPath}/qa/allSelect'" />
		</div>
	</div>
	
</body>
</html>