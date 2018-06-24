<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/board/read.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css">
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
			<form role="form" class="contact-form" id="updateForm" name="updateForm" method="post" onsubmit="return checkValid()"
				action="${pageContext.request.contextPath}/qa/updateQa?${_csrf.parameterName}=${_csrf.token}"
			>
				<input type="hidden" name=qaId value="${boardDTO.qaId}" />
				<h3 style="margin-bottom: 25px; text-align: center;">Q & A 수정하기</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							작성일 <input disabled="disabled" type="text" class="form-control" name="qaWriteday" autocomplete="off" id="qaWriteday"
								value="${requestScope.boardDTO.qaWriteday}" readonly
							>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							조회수 <input disabled="disabled" type="text" class="form-control" name="qaReadnum" autocomplete="off" id="qaReadnum"
								value="${requestScope.boardDTO.qaReadnum}" readonly
							>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							작성자 <input disabled="disabled" type="text" class="form-control" name="ownerId" autocomplete="off" id="ownerId"
								value="${requestScope.boardDTO.ownerId}" readonly
							>
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							제목 <input type="text" class="form-control" name="qaTitle" autocomplete="off" id="qaTitle" value="${requestScope.boardDTO.qaTitle}">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							내용
							<textarea class="form-control textarea" rows="3" name="qaContent" id="qaContent">${requestScope.boardDTO.qaContent}
							</textarea>
						</div>
					</div>
				</div>
				<br>
				<sec:authentication var="user" property="principal"/> 
			 	<c:if test="${user.userId eq boardDTO.ownerId}">
				<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">
					<i class="fa fa-paw"></i>
				</button>
				</c:if> 
			
			</form>
		</div>
	</div>
	<SCRIPT>
		function checkValid() {
			var f = window.document.updateForm;
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