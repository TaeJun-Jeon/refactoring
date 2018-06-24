<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" src="${pageContext.request.contextPath}/lib/css/request/sitterPreview.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/photo.css">
<!-- css 적용 -->
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container-fluid">
		<c:forEach items="${diaryList}" var="diaryDto" varStatus="statuscount">
			<div class="row">
				<div class="col-md-2 col-md-push-1">
					<h3 class="text-center" style="margin-top: 100px">${diaryDto.diaryWriteDay}</h3>
					<div class="text-center">
						<img alt="Bootstrap Image Preview" src="${pageContext.request.contextPath}/resources/lib/save/${sitterFname}" class="img-circle"
							style="width: 150px; height: 150px"
						/>
					</div>
				</div>
				<div class="col-md-8 col-md-push-1">
					<h3 class="text-left" style="margin-top: 100px">${diaryDto.diaryTitle}</h3>
					<p>${diaryDto.diaryContent}</p>
					<div>
						<c:forEach items="${diaryDto.imgNameList}" var="fileName">
							<div style="display: inline; width: 270px; float: left; margin-top: 30px">
								<a href="${pageContext.request.contextPath}/resources/lib/save/${fileName}" target="_blank"> <img class="img-responsive"
									src="${pageContext.request.contextPath}/resources/lib/save/${fileName}" style="width: 250px; height: 200px;"
								/> <span class="overlay" style="margin-left: 0px;">+</span>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<hr style="border: 1px dashed #18777F">
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>