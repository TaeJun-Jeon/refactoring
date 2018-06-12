<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>부르기</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/lib/css/bootstrap.css">
<link
	href="${pageContext.request.contextPath}/resources/lib/css/common.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/reset.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/lib/css/call.css">
<!-- 내가 설정한 css -->
</head>
<body>
	<div class="main-wrap no-profile">
		<div class="profile inner ">
			<h1 style="line-height: 26px; font-size: 18px; font-weight: 600;">
				도그메이트 방문 출장을 찾아주셔서 감사합니다.</h1>
			<p>보호자가 신청한 펫시팅 정보를 확인해주세요.</p>
			<ul>
				<li>
					<dl class="clearfix ">
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
								<p class="pull-left">db연동-addr</p>
								<div class="pull-left hide">
									<input name="address" type="text" readonly="readonly"
										placeholder="기본 주소 검색" value="db연동-addr"> <input
										name="detail" type="text" placeholder="상세 주소를 입력해주세요."
										value="">
								</div>

								<input name="postcode" type="hidden" value="04335"> <input
									name="old" type="hidden" value="db연동-addr">
							</form>
						</dd>
					</dl>
				</li>
			</ul>
		</div>
		<!-- profile inner -->

		<form class="inner" action="" method="get">
			<div class="content">
				<div class="">
					<h3>돌봄을 원하시는 반려동물을 선택해주세요.</h3>
					<p>
						<span>* 반려견 정보 등록 및 업데이트는 <a href="${pageContext.request.contextPath}/owner/mypage">강아지정보</a>에서
							가능합니다.
						</span>
					</p>
					<div class="row">
						<div class="col-sm-12">
						 	<p>
						 		<span>해피 (15kg 미만)
								</span>
							</p>
							
							<div class="">
							<p>
								<input type="text" name="" placeholder="추가반려동물">
							</p>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<h3>예약날짜를 확인해주세요.</h3>
					<div class="row">
						<div class="col-sm-6">
							<input name="start_time" type="text" placeholder="">
						</div>
						<input name="end_time" type="text" placeholder="">
					</div>
				</div>
				<form class="filters inner">
					<div class="">
						<h3>검색 필터 확인하기</h3>

						<li class="col-tags">
							<dl>
								<dt>보호자가 원하는 옵션을 확인해주세요.</dt>
								<dd>
									<div class="btn-group col-3" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1201" autocomplete="off">아파트
										</label>
									</div>
									<div class="btn-group col-2" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="has_house_yard" autocomplete="off">마당
										</label>
									</div>
									<div class="btn-group col-5" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1313" autocomplete="off">노령견케어
										</label>
									</div>
									<div class="btn-group col-5" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1358" autocomplete="off">환자견케어
										</label>
									</div>
									<div class="btn-group col-5" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1355,1356" autocomplete="off">자격증보유
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1352" autocomplete="off">실외배변
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1357" autocomplete="off">픽업가능
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1353" autocomplete="off">수제간식
										</label>
									</div>
									<div class="btn-group col-7" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="no_dog" autocomplete="off">반려견
											없는 곳
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1359" autocomplete="off">응급처치
										</label>
									</div>
									<div class="btn-group col-4" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1351" autocomplete="off">투약가능
										</label>
									</div>
									<div class="btn-group col-3" data-toggle="buttons">
										<label class="btn btn-xs btn-block"> <input name="tag"
											type="checkbox" value="1323" autocomplete="off">대형견
										</label>
									</div>
								</dd>
							</dl>
						</li>
					</div>
				
				<div class="">
					<h3>총액을 확인해주세요.</h3>
					<input type="text"
						placeholder="28000">

				</div>
				<div class="etc">
					<h3>보호자가 원하는 돌봄 시 요청 사항을 확인해주세요.</h3>
					
					<input type="text"
						placeholder="잘해주세요">
				
				</div>
				<div class="notice">
					<br>
					<p>
						* 도그메이트 방문펫시터는 안전한 산책을 위해 견주님이 준비해주신 하네스와 별도로 도그메이트의 산책줄을 이중으로
						강아지에게 착용시킨 뒤 산책을 진행하고 있습니다. <br> <br>따라서 산책을 요청하시는 강아지의
						하네스가 준비되지 않은 경우 산책 진행 이 불가함을 안내드립니다. <br>(*초대형견의 경우 목줄과 하네스를
						미리 준비해주시길 바랍니다.)
					</p>
				</div>
				<input type="submit" class="btn btn-lg btn-mint" value="방문 출장 신청하기"> 


			</div>
		</form>
	</div>




	<!-- main-wrap no-profile -->
</body>
</html>