<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Context-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/lib/css/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/petProfile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/signup.css">
<!-- 내가 설정한 css -->

</head>
<body>
	<div class="container">
		<div class="main-wrap no-profile">
			<div class="form-wrap inner">
				<div class="form-title">회원가입</div>
				<form class="sign-up-form">


					<div class="form-control-wrap" style="display: block;">
						<label class="label-name tooltip-label">가입유형 선택</label> 
						
						<input name="radio1" class="radiobox" id="radio1-1" type="radio"
							checked="checked" value="1"> 
						<label for="radio1-1">보호자(견주)</label>
						
						<input name="radio1" class="radiobox" id="radio1-2" type="radio"
							value="0"> 
						<label for="radio1-2">펫시터</label>
					</div><!-- form-control-wrap -->

					<div class="form-control-wrap label-wrap">
						<div class="email-insert" style="display: block;">
							<label class="label-name tooltip-label">아이디</label> 
							<input class="form-control" id="txtMEM_EMAIL" type="text"
								placeholder="이메일"> @
							<!-- <i class="form-mail"></i> -->
							<select name="email_corp_select">
								<option value="@">[선택해주세요]</option>
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="daum.net">daum.net</option>
								<option value="">직접 입력</option>
							</select> 
							
							<input  class="form-control email_corp"
								style="display: block; width: 40%; margin-top: -15px; margin-left: auto;"
								type="text" placeholder="직접입력"> 
								<!-- name="email_corp" -->
								<!-- style="display: nones -->
						</div>
						<!-- email-insert -->

						<label class="label-name tooltip-label">비밀번호</label> 
						<input class="form-control form-pwd"  type="password"
							placeholder="비밀번호">
					</div>
					<!-- form-control-wrap -->

					<div class="form-date-wrap label-wrap" style="display: block;">
						<div class="form-address">
						<label class="label-name tooltip-label">주소</label>
							<input name="postcode" class="form-control form-address-serch"
								 type="text" readonly="readonly">
							<div class="btn-dogmate address-search-btn" type="button" name="">
								<a href="javascript:openDaumPostcode()">우편번호검색</a>
							</div>
							<input name="addr1" class="form-control form-address" id="addr1"
								type="text" readonly="readonly">
							<input name="addr2" class="form-control form-control-last form-address" id="addr2"
								type="text" placeholder="상세주소"> 
							<input name="dong_addr" id="dong_addr" type="hidden"> 
					 
							<!-- <input name="hp_cert_ci" id="hp_cert_ci" type="hidden"
								value="HSIej/9Wi295SUHtRsWrtAvzzrqlnRv/LbzsJZrt53rtwEYThl5K3kslqKsv20+DF6bel71nlijSR45/QIMC9A==">
							<input name="hp_cert_di" id="hp_cert_di" type="hidden"
								value="MC0GCCqGSIb3DQIJAyEAFqTPcPsve65Sgv1mFURhQ21RlrxwlmJs7rS5j23dWsE="> -->
						</div>

						<div  style="display: block;">
							<div class="form-date-wrap label-wrap">
								<div class="row">
									<div class="col-xs-6">
										<label class="label-name tooltip-label">이름</label> <input
											class="form-control"  type="text" placeholder="이름">
									</div>
									<div class="col-xs-6">
										<label class="label-name tooltip-label">성별</label> 
										<select	class="form-control">
											<option value="">선택해주세요</option>
											<option value="fm">여성</option>
											<option value="m">남성</option>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<label class="label-name tooltip-label">생년월일</label>
									</div>
									<div class="col-xs-6">
										<input class="form-control  inner-content" type="text"
											placeholder="yyyy" >
									</div>
									<div class="col-xs-3">
										<input class="form-control  inner-content" type="text"
											placeholder="mm" >
									</div>
									<div class="col-xs-3">
										<input class="form-control  inner-content" type="text"
											placeholder="dd">
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<label class="label-name tooltip-label">핸드폰 번호</label> 
										<input class="form-control form-phone " 
											placeholder="핸드폰">
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- form-date-wrap label-wrap  -->
					
				<!-- 	<div class="row agreement-wrapper mb-2">
						<div class="col-xs-12">
							<input name="chk_all" class="checkbox" id="chk_all"
								type="checkbox"> <label class="small-checkbox"
								for="chk_all">아래 항목에 전체 동의합니다</label>
						</div>
						<div class="col-xs-12 mb-1">
							<span class="divider"></span>
						</div>
						<div class="col-xs-12 agreement-content">
							<input name="chk_14_year" class="checkbox" id="chk_14_year"
								type="checkbox"> <label class="small-checkbox"
								for="chk_14_year">본인은 만 14세 이상입니다(필수)</label>
						</div>
						<div class="col-xs-12 agreement-content">
							<input name="chk_service_terms" class="checkbox"
								id="chk_service_terms" type="checkbox"> <label
								class="small-checkbox" for="chk_service_terms">서비스 이용약관<a
								href="/doc/terms" target="_blank">(보기)</a>, 개인정보처리방침<a
								href="/doc/privacypolicy" target="_blank">(보기)</a>에 동의합니다(필수)
							</label>
						</div>
						<div class="col-xs-12 agreement-content">
							<input name="chk_safety_terms" class="checkbox"
								id="chk_safety_terms" type="checkbox"> <label
								class="small-checkbox" for="chk_safety_terms">안전보상제도 약관<a
								href="/doc/safety_info" target="_blank">(보기)</a>에 동의합니다(필수)
							</label>
						</div>
						<div class="col-xs-12 agreement-content">
							<input name="evt_sms_receive" class="checkbox"
								id="evt_sms_receive" type="checkbox"> <label
								class="small-checkbox" for="evt_sms_receive">이벤트 SMS 수신
								동의(선택)</label>
						</div>
						<div class="col-xs-12 agreement-content">
							<input name="evt_email_receive" class="checkbox"
								id="evt_email_receive" type="checkbox"> <label
								class="small-checkbox" for="evt_email_receive">이벤트 이메일
								수신 동의(선택)</label>
						</div>
					</div> -->
					
					<input type="button" class="btn-dogmate btn-orange signup-btn" value="가입하기">
					
				</form>
				<!-- sign-up-form -->
			</div>
			<!-- form-wrap inner" -->
		</div>
		<!--main-wrap no-profile-->
	</div>
	<!-- container -->

</body>
</html>