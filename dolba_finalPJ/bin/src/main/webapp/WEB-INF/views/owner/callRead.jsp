<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- css 적용 -->
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/photo.css?v1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/reservate.css?v2">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/petsitterOption.css">
<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	
</script>
</head>
<body>
	<form name="form" method="POST" action="${pageContext.request.contextPath}/owner/request/insertOwnerRequest">
		<input type="hidden" name="" value="${_csrf.token}">
		<input type="hidden" value="" name="sitterId">
		<input type="hidden" id="ownerRequestPrice" name="ownerRequestPrice">
		<input type="hidden" id="ownerRequestPetCount" name="ownerRequestPetCount">
		<input type="hidden" id="checkArr" name="checkArr">
		
		<div class="container">
			<section id="gallery">
				<div class="container">
					<div class="row" style="padding-top: 100px;">
						<div class="col-xs-6 img-space">
							<div class="gallery">
								<a href="${pageContext.request.contextPath}/resources/lib/save/2.jpg" target="_blank"> <img class="img-responsive"
									src="${pageContext.request.contextPath}/resources/lib/save/2.jpg" style="width: 725px; height: 320px; margin-left: 100px;"
								/> <span class="overlay2">+</span>
								</a>
							</div>
						</div>
						
					
					</div>
				</div>
				<div class="main-top-detail">
					<div class="contents-form" >
						<div class="contents-form-service text-center">보호자가 원하는 날짜와 시간을 확인해주세요.</div>
						<div class="contents-form-date">
							<input type="text"  id="callReservateStart" name="callReservateStart" value="2018-06-22" readonly style="width: 100px; border-top-width: 0px;border-left-width: 0px;border-right-width: 0px;padding-bottom: 0px;padding-top: 0px;border-bottom-width: 0px;"/>~ 
							<input type="text"  id="callReservateEnd" name="callReservateEnd" value="2018-06-24" readonly style="width: 100px; border-top-width: 0px;border-left-width: 0px;border-right-width: 0px;padding-bottom: 0px;padding-top: 0px;border-bottom-width: 0px;"/>
						</div>
						<div class="contents-form-price">
								<div style="font-size: 13px">반려견 추가 당<span style="color: #18777F;">x2</span></div>
								<div style="font-size: 13px">펫<span style="color: #18777F;"> 3</span> 마리</div>
							<div class="container option-filters-sitter">
								<ul class="clearfix">
									<li class="col-tags col-md-8" style="width: 210px; padding-bottom: 5px; padding-top: 5px; height: 235px;">
										<dl>
											<dt style="font-size: 15px; margin-top: 10px">필수 옵션</dt>
											<dd>
												<%-- <c:forEach items="${sitterOption}" var="sitterOptionList"> --%>
													<div class="btn-group col-md-2"  style="width: 100px; padding-bottom: 5px; padding-left: 20px">
														<label class="btn btn-xs btn-block" style="width: 70px; border-bottom-width: 5px; background-color:#18777F" >돌보기 
														</label>
													</div>
												<%-- </c:forEach> --%>
											</dd>
										</dl>
									</li>
								</ul>
							</div>
						
							
						
							<input type="text" style="border: white; color: #18777F; width: 70px; text-align: center;" value="" id="price"
								readonly="readonly">원 <p>
								
							
							
							
							<input type="button" class="btn" style="background-color: #18777F; color: white;" value="예약요청하기" onclick="sendReservation()"> <a href="QA링크"
								class="btn btn-default"
							>예약문의하기</a>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="profile-image-box">
			<div class="contents-thum-sitter">
				<div class="thum-wrap-sitter thum-wrap01-sitter ">
					<img style="width: 100%;" src="${pageContext.request.contextPath}/resources/lib/save/2.jpg" class="img-responsive">
				</div>
			</div>
			<div class="col-lg-6">
				<dl>
					<dt style="margin-left: 70px; width: 200px; color: #7d7d7d;">장희정</dt>
					<dd style="margin-left: 70px; width: 400px; color: #7d7d7d;">대전 중구 오류동 삼성아파트 28동 502호
						<small></small>
					</dd>
				</dl>
			</div>
			<div>
				<dl>
					<br><br><br>
				</dl>
			</div>
		</div>
		<div class="profile-image-box">
			<span style="color: #7d7d7d;"><i class="fa fa-paw"></i> 우리 펫 좀 돌봐주세요!! </span>
			<p>
			<div style="border: 1px solid #cccccc; width: 560px; height: 113px; padding: 10px 10px; margin-top: 10px;"></div>
		</div>
	<br>
	<br>
	
	</form>
</body>