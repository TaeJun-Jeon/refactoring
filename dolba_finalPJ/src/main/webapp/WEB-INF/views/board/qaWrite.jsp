<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/board/read.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css">
<!------ Include the above in your HEAD tag ---------->
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="canonical" href="https://codepen.io/chrisburton/pen/dlFky?limit=all&page=3&q=comment" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
<style type="text/css">
input {
	margin-top: 10px;
}

textarea {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container" style="width: 600px; margin-top: 130px; margin-bottom: 50px;">
		<div class="row">
			<form class="contact-form" id="writeForm" name="writeForm" method="post" action="${pageContext.request.contextPath}/qa/writeQa"
				onsubmit="return checkValid();"
			>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<sec:authorize access="isAuthenticated()">
					<sec:authentication var="user" property="principal" />
					<h3 style="margin-bottom: 25px; text-align: center;">Q & A 등록</h3>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<input type="text" class="form-control" name="ownerId" autocomplete="off" id="ownerId" value="${user.userId}" readonly>
							</div>
						</div>
					</div>
				</sec:authorize>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							제목 <input type="text" class="form-control" name="qaTitle" autocomplete="off" id="qaTitle" placeholder="subject">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							내용
							<textarea class="form-control textarea" rows="3" name="qaContent" id="content" name="qaContent" placeholder="content"></textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							비밀번호 <input type="password" class="form-control" name="qaPwd" autocomplete="off" id="qaPwd" placeholder="password">
						</div>
					</div>
				</div>
				<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">
					<i class="fa fa-paw"></i>
				</button>
			</form>
		</div>
	</div>
	<SCRIPT>
		function checkValid() {
			var f = window.document.writeForm;
			if (f.qaTitle.value == "") {
				alert("제목을 입력해 주세요.");
				f.qaTitle.focus();
				return false;
			}

			if (f.qaContent.value == "") {
				alert("내용을 입력해 주세요.");
				f.qaContent.focus();
				return false;
			}

			return true;
		}
	</SCRIPT>
</body>
</html>