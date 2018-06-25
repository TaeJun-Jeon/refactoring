<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
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
		<h1>보호자의 부르기 신청 내역입니다.</h1>
		<p>출장 신청을 위해 아래 내용을 확인하여주세요.</p>
		<ul>
			<li>
				<dl class="clearfix-call">
					<dt class="pull-left">이름</dt>
					<dd class="pull-left">${callDTO.ownerDTO.ownerName}</dd>
				</dl>
			</li>
			<li>
				<dl class="clearfix-call">
					<dt class="pull-left">연락처</dt>
					<dd class="pull-left">${callDTO.ownerDTO.ownerPhone}</dd>
				</dl>
			</li>
			<li class="editable">
				<dl class="clearfix-call">
					<dt class="pull-left">주소</dt>
					<dd class="pull-left">
						<p class="pull-left ">${callDTO.ownerDTO.ownerAddr} (* 상세 주소는 보호자 출장 승낙 후 확인 가능합니다.)</p>
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
						<sec:authentication var="user" property="principal"/>
						<form role="form" method="post" id="sitterRequestFormSubmit" action="${pageContext.request.contextPath}/sitter/call/sitterRequest?sitterId=${user.userId}&ownerId=${callDTO.ownerDTO.ownerId}">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type="hidden" name="callId" value="${callDTO.callId}">
							<div class="form-group form-group-line">
								<div class="pets">
									<label>추가 돌봄을 원하시면 옵션을 선택해주세요.</label>
									
									<div class="row" style="margin: 0px">
										<div class="petinfo col-xs-6">
											<p style="margin-top: 20px">반려견 이름 : ${petDTO.petName} (size : ${petDTO.petSize})
										</div>
										<div class="col-xs-6">
											<select class="insert-petinfo col-sm-12 form-control" id="petAdd" style="width: 250px;">
												<option disabled value="0">추가반려동물 없음</option>
												<option disabled value="1">1마리 추가</option>
												<option disabled value="2">2마리 추가</option>
												<option disabled value="3">3마리 추가</option>
												<option disabled value="4">4마리 추가</option>
												<option disabled value="5">5마리 추가</option>
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
											<c:forEach items="${opList}" var="option">
												<div class="btn-group col-xs-3">
													<label class="btn btn-xs btn-block active">
														<span id="optionName">${option.optionName}</span>
													</label>
												</div>
											</c:forEach>	
										</dd>
									</dl>
								</li>
							</div>
							<div class="form-group dates form-group-line">
								<label>예약날짜</label>
								<div class="row">
									<div class="col-sm-4">
										<input name="callReservateStart" type="text" readonly placeholder="${callDTO.callReservateStart}" style="position: relative;z-index:1000;">
									</div>
									<div class="col-sm-4">
										<input name="callReservateEnd" type="text" readonly placeholder="${callDTO.callReservateEnd}" style="position: relative;z-index:1000;">
									</div>
								</div>
							</div>
							<div class="form-group form-group-line" style="padding-bottom: 20px">
								<label>토탈 금액</label> <input type="text" class="callform-size form-control" name="callTotalPrice" id="callPrice" readonly placeholder="${callDTO.callTotalPrice}">
							</div>
							<div class="form-group form-group-line" style="padding-bottom: 20px;">
								<label>돌봄 시 요청 사항</label><br>
								<p>* 1시간 돌봄 포함 내용 (배식, 배변처리, 산책) 외 요청사항이 있으시다면 적어주세요.</p>
								<textarea rows="5" class="form-control" id="callComment" name="callComment" readonly placeholder="${callDTO.callComment}"></textarea>
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
					<div class="col-xs-2 col-xs-push-5" style="margin-top: 20px;margin-bottom: 20px;margin-left: 50px">
						<a href="${pageContext.request.contextPath}/sitter/call/callList"><input type="button" class="btn btn-primary" id="callList" style="background-color: #18777F;" value="목록으로"></a>
					</div>
		</div>
	</div>
	<script type="text/javascript">
	$(function(){
		$("#petAdd option[value='${callDTO.callPetcount-1}']").prop("selected", true);
		
		$(document).on("click","#callSubmit",function(){
			alert("신청되었습니다.");
			$("#sitterRequestFormSubmit").submit();
		})
	})
	</script>
	<!-- // jQuery UI 라이브러리 js파일 -->
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
</body>
</html>