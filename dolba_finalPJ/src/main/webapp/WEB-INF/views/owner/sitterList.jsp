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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/optionSelect.css?v=3">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/sitterPreview.css?v=2">
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
	<div class="container-fluid option-filter-container">
		<div class="row filter-row">
			<form class="option-filters">
				<ul>
					<li class="col-tags col-md-8">
						<dl>
							<dt class="text-center">원하는 태그를 모두 선택해주세요!</dt>
							<dd>
								<div class="row ">
									<c:forEach items="${optionList}" var="option">
										<div class="btn-group col-xs-3" data-toggle="buttons">
											<label class="btn btn-xs btn-block"> <input type="checkbox" name="tag" autocomplete="off" value="${option.optionId}">
												${option.optionName}
											</label>
										</div>
									</c:forEach>
								</div>
							</dd>
						</dl>
					</li>
					<li class="col-level col-md-2 pull-left ">
						<dl>
							<dt class="text-center">펫시터 등급</dt>
							<dd class="clearfix text-center">
								<select class="form-control" id="grade-select">
									<option value="0">-- 선택 --</option>
									<option value="1">1점 이상</option>
									<option value="2">2점 이상</option>
									<option value="3">3점 이상</option>
									<option value="4">4점 이상</option>
									<option value="5">5점 이상</option>
								</select>
							</dd>
						</dl>
					</li>
					<li class="col-btn col-md-2 pull-left">
						<dl>
							<dd>
								<button class="btn">찾기</button>
							</dd>
						</dl>
					</li>
				</ul>
			</form>
		</div>
	</div>
	<!-- sitter preview list -->
	<div class="container-fluid sitter-list-container">
		<div class="row content">
			<div class="col-xs-7">
				<ul class="preview">
					<c:forEach items="${sitterList}" var="sitterInfo">
						<li class="row sitter-li preview-container">
							<div class="col-xs-7 preview-left">
								<div class="row" style="margin-top: 25px">
									<h5><b><a href="#" class="sitter-desc">${sitterInfo.sitterIntroduce}</a></b></h5>
									<span class="">${sitterInfo.sitterName }</span>
								</div>
								<hr>
								<div class="row">
									<c:forEach items="${sitterInfo.sitterOptionDTO}" var="sitterOption" varStatus="index">
										<span class="label label-success option-label">${sitterOption.optionsDTO.optionName}</span>
									</c:forEach>
								</div>
							</div>
							<div class="col-xs-2 preview-grade">
								<div class="row">
									<h4>${sitterInfo.sitterGrade}</h4>
									<h6><a href="#">고객후기 n개</a></h6>
									<c:forEach begin="1" end="${sitterInfo.sitterGrade}">
										<i class="glyphicon glyphicon-star gi-star"></i>
									</c:forEach>
									<c:forEach begin="${sitterInfo.sitterGrade}" end="4">
										<i class="glyphicon glyphicon-star-empty gi-star"></i>
									</c:forEach>
								</div>
							</div>
							<div class="col-xs-3 preview-right" style="margin-top: 50px">
								<a href="#" class="thumbnail sitter-pic">
									<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
								</a>
							</div>
						</li>
					</c:forEach>
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
				</ul>
			</div>
			<div class="col-xs-4 map-wrapper">
				<div id="map" class="div-map"></div>
			</div>
		</div>
		<div class="row paging">
			<div class="row">
				<div class="col-md-6 text-center">
					<nav>
					<ul class="pagination sitter-pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
					</nav>
				</div>
			</div>
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