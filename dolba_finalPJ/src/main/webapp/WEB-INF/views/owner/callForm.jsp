<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/call/callForm.css">
<!-- // jQuery UI CSS파일  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
</head>
<body>
	<div class="profile container">
		<h1>펫데이트 방문펫시터를 신청해주셔서 감사합니다.</h1>
		<p>예약 신청을 위해 아래 내용을 작성해주세요.</p>
		<ul>
			<li>
				<dl class="clearfix-call">
					<dt class="pull-left">이름</dt>
					<dd class="pull-left">${ownerDTO.ownerName}</dd>
				</dl>
			</li>
			<li>
				<dl class="clearfix-call">
					<dt class="pull-left">연락처</dt>
					<dd class="pull-left">${ownerDTO.ownerPhone}</dd>
				</dl>
			</li>
			<li class="editable">
				<dl class="clearfix-call">
					<dt class="pull-left">주소</dt>
					<dd class="pull-left">
						<p class="pull-left ">${ownerDTO.ownerAddr} ${ownerDTO.ownerDetailAddr}</p>
						<a href="${pageContext.request.contextPath}/owner/myPage" class="pull-right">수정하기</a>
					</dd>
				</dl>
			</li>
		</ul>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="callform panel panel-primary">
					<div class="callform-heading panel-heading">
						<h1 class="panel-title">아래 내용을 작성해 주세요</h1>
					</div>
					<div class="panel-body form-margin">
						<form role="form" method="post" id="callFormSubmit" action="${pageContext.request.contextPath}/owner/call/insertCall?ownerId=${ownerDTO.ownerId}">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type="hidden" name="optionSelect" id="optionSelect">
							<input type="hidden" name="callPetcount" id="callPetcount">
							<input type="hidden" name="callTotalPrice" id="callTotalPrice">
							<div class="form-group form-group-line">
								<div class="pets">
									<label>추가 돌봄을 원하시면 옵션을 선택해주세요.</label>
									
									<div class="row" style="margin: 0px">
										<div class="petinfo col-xs-6">
											<p style="margin-top: 20px">반려견 이름 : ${petDTO.petName} (size : ${petDTO.petSize})
										</div>
										<div class="col-xs-6">
											<select class="insert-petinfo col-sm-12 form-control" id="petAdd" style="width: 250px;">
												<option value="0" selected>추가반려동물 없음</option>
												<option value="1">1마리 추가</option>
												<option value="2">2마리 추가</option>
												<option value="3">3마리 추가</option>
												<option value="4">4마리 추가</option>
												<option value="5">5마리 추가</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group option-filters form-group-line " style="height: 151px;">
								<label>검색 필터 설정하기</label>
								<li class="col-tags">
									<dl>
										<dt>* 원하는 태그를 모두 선택해주세요! ( 옵션당 2000원 추가 )</dt>
										<dd>
											<c:forEach items="${optionList}" var="option">
												<div class="btn-group col-xs-3" data-toggle="buttons">
													<label class="btn btn-xs btn-block"> <input type="checkbox" name="${option.optionId}" id="optionId" autocomplete="off" value="${option.optionId}">
														<span id="optionName">${option.optionName}</span>
													</label>
												</div>
											</c:forEach>	
										</dd>
									</dl>
								</li>
							</div>
							<div class="form-group dates form-group-line">
								<label>예약날짜를 알려주세요</label>
								<div class="row">
									<div class="col-sm-4">
										<input name="callReservateStart" type="text" id="datepickerStart" placeholder="시작날짜" style="position: relative;z-index:1000;">
									</div>
									<div class="col-sm-4">
										<input name="callReservateEnd" type="text" id="datepickerEnd" placeholder="마침날짜" style="position: relative;z-index:1000;">
									</div>
								</div>
							</div>
							<div class="form-group form-group-line" style="padding-bottom: 20px">
								<label>원하는 단위 기본 금액을 제시해 주세요</label> <input type="NUMBER" min="25000" step="5000" name="callTotalPrice" id="callPrice" class="callform-size form-control"
									placeholder="기본 25000"
								>
							</div>
							<div class="form-group form-group-line" style="padding-bottom: 20px;">
								<label>돌봄 시 요청 사항이 있습니까?</label><br>
								<p>* 1시간 돌봄 포함 내용 (배식, 배변처리, 산책) 외 요청사항이 있으시다면 적어주세요.</p>
								<textarea rows="5" class="form-control" id="callComment" name=callComment
									"
                                      placeholder="ex)  고양이 돌봄도 함께 해주세요. 산책없이 놀이서비스로 대체 해주세요...."
								></textarea>
							</div>
							<div class="notice">
								<br>
								<p>* 예약 내역은 MyPage에서 확인 가능합니다</p>
							</div>
							<center>
								<input type="button" class="btn btn-primary" id="callSubmit" style="background-color: #18777F;" value="신청">
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- // jQuery UI 라이브러리 js파일 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/call/callForm.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
</body>
</html>