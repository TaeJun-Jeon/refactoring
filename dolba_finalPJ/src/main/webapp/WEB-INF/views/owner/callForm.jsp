<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link href="${pageContext.request.contextPath}/resources/lib/css/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/petProfile.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="google-site-verification" content="5_siBWA3366-CgITypUGEPitq0wB_txUTk3dSvPNJkI">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<!-- 2016.02.14 ara start-->
<!-- 2016.02.14 ara end-->
<title>부르기</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/lib/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/reset.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/serch.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/call.css">
<!-- 내가 설정한 css -->
<style type="text/css">
.btn-group {
	padding: 7px 0 6px;
	border-radius: 5px;
	background-color: #dcdcdc;
	color: #fff;
	margin: 5px;
	width: 92px;
}

.btn.active, .btn-group.active {
	background-color: #6eb9b5;
	box-shadow: none;
}

form .btn-mint, form .btn-mint:hover, form .btn-mint:focus {
	display: block;
	margin: 40px auto !important;
	padding: 12px 30px !important;
	border-radius: 8px;
	color: #fff;
	font-weight: 300;
}

p {
	font-size: 12px;
}
</style>
</head>
<body>
	<div class="header-wrap "></div>
	<!--gnb include end-->
	<div class="main-wrap no-profile">
		<div class="profile inner">
			<h1>돌바조 방문펫시터를 신청해주셔서 감사합니다.</h1>
			<p>예약 신청을 위해 아래 내용을 작성해주세요.</p>
			<ul>
				<li>
					<dl class="clearfix">
						<dt class="pull-left">이름</dt>
						<dd class="pull-left">db연동-name</dd>
					</dl>
				</li>
				<li>
					<dl class="clearfix">
						<dt class="pull-left">연락처</dt>
						<dd class="pull-left">db연동-phone</dd>
					</dl>
				</li>
				<li class="editable">
					<dl class="clearfix">
						<dt class="pull-left">주소</dt>
						<dd class="pull-left">
							<form>
								<p class="pull-left ">db연동-addr</p>
								<!-- 주소 수정하기 누르면 사라짐-->
								<div class="pull-left hide">
									<!-- 주소 수정하기 누르면 나타남 -->
									<input name="address" type="text" readonly="readonly" placeholder="기본 주소 검색" value="db연동-addr">
									<!-- 주소 클릭하면 주소 검색으로 -->
									<input name="detail" type="text" placeholder="상세 주소를 입력해주세요." value="">
								</div>
								<button class="btn btn-link pull-right" type="button" data-loading-text="저장중...">수정하기</button>
								<input name="postcode" type="hidden" value="">
								<!-- 우편번혼 -->
								<input name="old" type="hidden" value="">
								<!-- 옜날주소 -->
							</form>
						</dd>
					</dl>
				</li>
			</ul>
		</div>
		<form class="inner">
			<div class="content">
				<!-- <div class="advance-meeting">
						<h3>사전만남을 신청하시겠습니까?</h3>
						<p>
							<strong>* &nbsp;방문 돌봄 구매 횟수에 따라 비용이 발생될 수 있습니다. (5회 미만
								1만원 / 5회 이상 무료)</strong><br> * 돌봄 전 펫시터가 미리 방문하여 강아지 체크리스트 작성 및
							친화과정을 갖는 시간입니다.<br> <span>* 펫시터 확정을 위해 사전만남은 신청 시
								2~3일내로 진행하시는 걸 권장합니다.</span>
						</p>
						<ul>
							<li><input name="radio1" class="radiobox" id="radio1-1"
								type="radio" checked="checked" value="1"> <label
								for="radio1-1">신청합니다. <input name="advance_meeting"
									type="text" placeholder="사전만남 가능 일정과 시간을 알려주세요."></label></li>
							<li><input name="radio1" class="radiobox" id="radio1-2"
								type="radio" value="0"> <label for="radio1-2">사전만남
									없이 바로 예약하겠습니다.</label></li>
						</ul>
					</div> -->
				<div class="pets">
					<h3>돌봄을 원하시는 반려동물을 선택해주세요.</h3>
					<p>
						* 산책 1회당 최대 2마리씩 진행이 되며 여러 마리인 경우<br class="visible-xs-inline"> 마리수에 맞춰 1시간씩 돌봄 시간이 추가될 수 있습니다.<br class="visible-xs-inline"> (시간 추가는
						반려견만 해당됩니다.)<br> <span>* 반려견과 함께 반려묘 돌봄을 원할 경우 <br class="visible-xs-inline"> 추가금 5,000원이 부과됩니다. <br class="visible-xs-inline">
							(단, 반려묘는 배식과 배변처리만 제공됩니다.)<br>
						</span> <span>* 반려견 정보 등록 및 업데이트는 <a href="${pageContext.request.contextPath}/owner/mypage">강아지정보</a>에서 가능합니다.
						</span>
					</p>
					<div class="row">
						<div style="margin-left: 20px; border: none; line-height: 22.4px; font-size: 12px; color: #7d7d7d; text-align: left;">
							<input name="check1" class="checkbox" id="check1-0" type="checkbox" value="1" data-size="1401"> <label for="check1-0">해피 (15kg
								미만)</label> <select name="" style="width: 180px; height: 39px; position: relative; padding-left: 30px;">
								<option value="">[추가반려동물 없음]</option>
								<option value="">db연동-추가반려동물1</option>
								<option value="">db연동-추가반려동물2</option>
							</select>
						</div>
					</div>
				</div>
				<div class="dates ">
					<h3 style="margin-top: 45px;">예약날짜를 알려주세요.</h3>
					<div class="row">
						<div class="col-sm-6">
							<input name="date_selecting" type="text" placeholder="예약을 원하시는 날짜를 선택해주세요.">
						</div>
						<div class="col-sm-2 col-xs-4">
							<button class="btn btn-link btn-xs btn-block" type="button">추가</button>
						</div>
					</div>
					<ul>
						<li class="clearfix"><div class="pull-left">0000년 00월 00일 0요일</div>
							<button class="close" type="button">×</button></li>
						<li class="clearfix"><div class="pull-left">0000년 00월 00일 0요일</div>
							<button class="close" type="button">×</button></li>
					</ul>
				</div>
				<form class="filters inner">
					<div class="">
						<h3>검색 필터 설정하기</h3>
						<li class="col-tags" style="">
							<dl>
								<p>* 원하는 태그를 모두 선택해주세요!</p>
								<dd>
									<div class="btn-group col-3" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1201" autocomplete="off">아파트
										</label>
									</div>
									<div class="btn-group col-2" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="has_house_yard" autocomplete="off">마당
										</label>
									</div>
									<div class="btn-group active col-5" data-toggle="buttons">
										<label class="btn btn-xs btn-block active"> <input name="tag" type="checkbox" value="1313" autocomplete="off">노령견케어
										</label>
									</div>
									<div class="btn-group col-5" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1358" autocomplete="off">환자견케어
										</label>
									</div>
									<div class="btn-group col-5" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1355,1356" autocomplete="off">자격증보유
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1352" autocomplete="off">실외배변
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1357" autocomplete="off">픽업가능
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1353" autocomplete="off">수제간식
										</label>
									</div>
									<div class="btn-group col-7" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="no_dog" autocomplete="off">반려견 없는 곳
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1359" autocomplete="off">응급처치
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1351" autocomplete="off">투약가능
										</label>
									</div>
									<div class="btn-group col-3" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag" type="checkbox" value="1323" autocomplete="off">대형견
										</label>
									</div>
								</dd>
							</dl>
						</li>
					</div>
					<div class="">
						<h3>원하는금액을 제시해 주세요</h3>
						<input type="text" class="form-control" placeholder="기본27000">
					</div>
					<div class="etc">
						<h3>돌봄 시 요청 사항이 있습니까?</h3>
						<p>* 1시간 돌봄 포함 내용 (배식, 배변처리, 산책) 외 요청사항이 있으시다면 적어주세요.</p>
						<textarea name="note" placeholder="ex)  고양이 돌봄도 함께 해주세요. 산책없이 놀이서비스로 대체 해주세요....">ex)  고양이 돌봄도 함께 해주세요. 산책없이 놀이서비스로 대체 해주세요....</textarea>
						<br> <br>
					</div>
					<div class="notice">
						<br>
						<p>* 예약 내역은 MyPage에서 확인 가능합니다</p>
					</div>
			</div>
			<input type="button" class="btn btn-lg btn-mint" value="방문 에약 신청하기">
		</form>
		<div class="final text-center hide">
			<h1>
				방문펫시터 신청이 완료 되었습니다.<br> <span class="hidden-xs">보내주신 내용을 토대로</span> 상담사가 확인 후 30분내로 연락드립니다.
			</h1>
			<p>
				(19시 이후의 신청 건은 다음 영업일 오전 10시 이후에 연락드립니다.<br>단, 주말의 경우 1-2일 이내의 임박한 예약에 한해서는 담당자가 확인 후 빠르게 연락드릴 예정입니다.)
			</p>
			<a class="btn btn-default btn-lg btn-mint" href="/promotion/call-service">메인으로 가기</a>
		</div>
	</div>
</body>
</html>