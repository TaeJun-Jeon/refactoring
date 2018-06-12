<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/dropdownStates.css?v=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/optionSelect.css?v=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/sitterPreview.css?v=1">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba4b9793fc0330bc556842d113ad5aaa"></script>
</head>
<body>
	<!-- States Search NavBar -->
	<nav class="states-navbar navbar navbar-default">
	<div class="container-fluid">
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-center">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						전체<span>숫자</span>
					</a>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						서울<span>숫자</span>
					</a>
					<div class="dropdown-menu multi-column states-dropDown-list">
						<div class="container-fluid">
							<div class="row-fluid">
								<div class="dropdown-menu">
									<ul class="clearfix">
										<li class="pull-left"><input type="checkbox" name="states[]" id="state8" class="checkbox" value="8"><label for="state8">강남구
												(펫시터 숫자)</label></li>
										<li class="pull-left"><input type="checkbox" name="states[]" id="state16" class="checkbox" value="16"><label for="state16">강동구
												(펫시터 숫자)</label></li>
									</ul>
									<button type="button" data-loading="검색 중..." class="btn btn-mint">확인</button>
									<button type="button" class="btn btn-link">선택 초기화</button>
									<button type="button" aria-label="Close" class="close visible-xs-block">
										<span aria-hidden="true">×</span>
									</button>
								</div>
							</div>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						경기<span>숫자</span>
					</a>
					<div class="dropdown-menu multi-column states-dropDown-list">
						<div class="container-fluid">
							<div class="row-fluid">
								<div class="dropdown-menu">
									<ul class="clearfix">
										<li class="pull-left"><input type="checkbox" name="states[]" id="state8" class="checkbox" value="8"><label for="state8">수원
												(펫시터 숫자)</label></li>
										<li class="pull-left"><input type="checkbox" name="states[]" id="state16" class="checkbox" value="16"><label for="state16">과천
												(펫시터 숫자)</label></li>
									</ul>
									<button type="button" data-loading="검색 중..." class="btn btn-mint">확인</button>
									<button type="button" class="btn btn-link">선택 초기화</button>
									<button type="button" aria-label="Close" class="close visible-xs-block">
										<span aria-hidden="true">×</span>
									</button>
								</div>
							</div>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						인천<span>숫자</span>
					</a>
					<div class="dropdown-menu multi-column states-dropDown-list">
						<div class="container-fluid">
							<div class="row-fluid">
								<div class="dropdown-menu">
									<ul class="clearfix">
										<li class="pull-left"><input type="checkbox" name="states[]" id="state8" class="checkbox" value="8"><label for="state8">부평
												(펫시터 숫자)</label></li>
										<li class="pull-left"><input type="checkbox" name="states[]" id="state16" class="checkbox" value="16"><label for="state16">은평
												(펫시터 숫자)</label></li>
									</ul>
									<button type="button" data-loading="검색 중..." class="btn btn-mint">확인</button>
									<button type="button" class="btn btn-link">선택 초기화</button>
									<button type="button" aria-label="Close" class="close visible-xs-block">
										<span aria-hidden="true">×</span>
									</button>
								</div>
							</div>
						</div>
					</div></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!-- states search nav bar fin -->
	<!-- sitter 검색 조건 -->
	<form class="container option-filters">
		<ul class="clearfix">
			<li class="col-tags col-md-8">
				<dl>
					<dt>원하는 태그를 모두 선택해주세요!</dt>
					<dd>
						<div class="btn-group col-md-2" data-toggle="buttons">
							<label class="btn btn-xs btn-block"> <input type="checkbox" name="tag" autocomplete="off" value="1">아파트
							</label>
						</div>
						<div class="btn-group col-md-2" data-toggle="buttons">
							<label class="btn btn-xs btn-block"> <input type="checkbox" name="tag" autocomplete="off" value="2">마당
							</label>
						</div>
						<div class="btn-group col-md-2" data-toggle="buttons">
							<label class="btn btn-xs btn-block"> <input type="checkbox" name="tag" autocomplete="off" value="3">노령견케어
							</label>
						</div>
						<div class="btn-group col-md-2" data-toggle="buttons">
							<label class="btn btn-xs btn-block"> <input type="checkbox" name="tag" autocomplete="off" value="4">환자견케어
							</label>
						</div>
					</dd>
				</dl>
			</li>
			<li class="col-level col-md-2 pull-left">
				<dl>
					<dt>펫시터 등급</dt>
					<dd>
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
								모든등급 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
							<input type="hidden" id="selectedGrade" value="">
						</div>
					</dd>
				</dl>
			</li>
			<li class="col-btn col-md-2 pull-right">
				<dl>
					<dd>
						<button class="btn">찾기</button>
					</dd>
				</dl>
			</li>
		</ul>
	</form>
	<!-- sitter preview list -->
	<div class="container-fluid sitter-list-container">
		<div class="row content">
			<div class="col-xs-7">
				<ul class="preview">
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star gi-star"></i>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star gi-star"></i>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i
									class="glyphicon glyphicon-star-empty gi-star"
								></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i
									class="glyphicon glyphicon-star-empty gi-star"
								></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i
									class="glyphicon glyphicon-star-empty gi-star"
								></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i
									class="glyphicon glyphicon-star-empty gi-star"
								></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i
									class="glyphicon glyphicon-star-empty gi-star"
								></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
					<li class="row sitter-li preview-container">
						<div class="col-xs-7 preview-left">
							<div class="row" style="margin-top: 50px">
								<a href="#" class="sitter-desc">펫시터 설명</a>
								<br> <span class="">백승현</span>
							</div>
							<div class="row">
								<span class="label label-success">아파트</span> <span class="label  label-success">노령견케어</span> <span class="label  label-success">실외배변</span>
							</div>
						</div>
						<div class="col-xs-2 preview-grade">
							<div class="row">
								<h4>평점</h4>
								<h6>고객후기 n개</h6>
								<i class="glyphicon glyphicon-star gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i
									class="glyphicon glyphicon-star-empty gi-star"
								></i> <i class="glyphicon glyphicon-star-empty gi-star"></i> <i class="glyphicon glyphicon-star-empty gi-star"></i>
							</div>
						</div>
						<div class="col-xs-3 preview-right" style="margin-top: 50px">
							<a href="#" class="thumbnail sitter-pic">
								<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
							</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="col-xs-4 map-wrapper">
				<div id="map" class="div-map"></div>
			</div>
		</div>
		<div class="row paging">
			<span class="col-xs-12 pull-center" style="margin: 50; text-align: center;"> paging 하는 곳 </span>
		</div>
	</div>
	<!-- 지도 로드 -->
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new daum.maps.LatLng(33.450701, 126.570667),
			level : 3
		};

		var map = new daum.maps.Map(container, options);
	</script>
	<!-- Scroll 따라다니는 지도 -->
	<script>
		$(function() {
			var currentPosition = parseInt($(".div-map").css("top"));
			var optionDivPosition = parseInt($(".col-btn").css("bottom"))
			$(window).scroll(function() {
				var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
				var positionMin = position + currentPosition - 150;
				if (positionMin > 0) {
					$(".div-map").stop().animate({
						"top" : positionMin
					}, 500);
				} else {
					$(".div-map").stop().animate({
						"top" : 0
					}, 500);
				}
			});
		});
	</script>
</body>
</html>