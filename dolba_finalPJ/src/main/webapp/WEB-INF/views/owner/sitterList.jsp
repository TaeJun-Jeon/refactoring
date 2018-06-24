<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/optionSelect.css?v=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/sitterPreview.css?v=2">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba4b9793fc0330bc556842d113ad5aaa&libraries=services,clusterer,drawing"></script>
</head>
<body>
	<!-- sitter 검색 조건 -->
	<div class="container-fluid option-filter-container">
		<div class="row filter-row">
			<form class="option-filters" action="" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<input type="hidden" name="optionSelect" id="optionSelect">
			<input type="hidden" name="gradeSelect" id="gradeSelect" >
				<ul>
					<li class="col-tags col-md-8">
						<dl>
							<dt class="text-center">원하는 태그를 모두 선택해주세요!</dt>
							<dd>
								<div class="row ">
									<c:forEach items="${optionList}" var="option">
										<div class="btn-group col-xs-3" data-toggle="buttons">
											<label class="btn btn-xs btn-block"> <input type="checkbox" name="${option.optionId}" id="optionId" autocomplete="off" value="${option.optionId}">
												<span id="optionName">${option.optionName}</span>
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
									<option id="grade0" value="0">-- 선택 --</option>
									<option id="grade1" value="1">1점 이상</option>
									<option id="grade2" value="2">2점 이상</option>
									<option id="grade3" value="3">3점 이상</option>
									<option id="grade4" value="4">4점 이상</option>
									<option id="grade5" value="5">5점 이상</option>
								</select>
							</dd>
						</dl>
					</li>
					<li class="col-btn col-md-2 pull-left">
						<dl>
							<dd>
								<input type="button" class="btn" id="option-btn" value="찾기">
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
									<div class="col-xs-12">
										<h5>
											<b><a href="${pageContext.request.contextPath}/owner/request/sitterDetailRead?sitterId=${sitterInfo.sitterId}" class="sitter-desc">${sitterInfo.sitterIntroduce}</a></b>
										</h5>
										<span class="">${sitterInfo.sitterName }</span>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-xs-12">
										<c:forEach items="${sitterInfo.sitterOptionDTO}" var="sitterOption" varStatus="index">
											<span class="label label-success option-label">${sitterOption.optionsDTO.optionName}</span>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="col-xs-2 preview-grade">
								<div class="row">
									<div class="col-xs-12">
										<h4>${sitterInfo.sitterGrade}</h4>
										<h6>
											<a href="#">고객후기 n개</a>
										</h6>
										<c:forEach begin="1" end="${sitterInfo.sitterGrade}">
											<i class="glyphicon glyphicon-star gi-star"></i>
										</c:forEach>
										<c:forEach begin="${sitterInfo.sitterGrade}" end="4">
											<i class="glyphicon glyphicon-star-empty gi-star"></i>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="col-xs-3 preview-right" style="margin-top: 50px">
								<div class="row">
									<div class="col-xs-12">
										<a href="#" class="thumbnail sitter-pic">
											<img src="http://placehold.it/45x30" alt="#" class="img-thumbnail">
										</a>
									</div>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="col-xs-4 map-wrapper">
				<div id="map" class="div-map"></div>
			</div>
		</div>
		<div class="row paging" id="paging-div">
			<div class="row">
				<div class="col-md-6 text-center">
					<nav>
					<form action="" method="post" id="pagingForm">
					<ul class="pagination sitter-pagination">
						<li class="page-item"><a class="page-link" id="pagingPrev" href="#">Previous</a></li>
						<c:forEach begin="${pagingUtil.startPage}" end="${pagingUtil.endPage}" varStatus="status">
							<c:choose>
								<c:when test="${pagingUtil.startPage+status.count-1 eq pagingUtil.curPage+1}">
									<li class="page-item active"><a class="page-link pageNumNow" id="pageElement">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:when test="${pagingUtil.startPage+status.count-1 gt pagingUtil.totalPage}">
									<li class="page-item disabled"><a class="page-link pageNumDisabled" id="pageElement">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link pageNum" id="pageElement" href="#">${pagingUtil.startPage+status.count-1}</a></li>
										<input type="hidden" name="pagehidden" id="pagehidden" value="${pagingUtil.startPage+status.count-1}">
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<li class="page-item"><a class="page-link" id="paingNext" href="#">Next</a></li>
					</ul>
					<input type="hidden" name="optionSelect" id="optionSelect2">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					</form>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function(){
			var optionSelected =[];
			<c:forEach items="${optionSelectList}" var="item" varStatus="status">
				$("#optionId[name='${item.optionId}']").attr("checked", true);
				$("#optionId[name='${item.optionId}']").parent().addClass("active",true);
				optionSelected.push("${item.optionId}");
			</c:forEach>
			if("${gradeSelect}" != ""){
				$("#grade-select option[value='${gradeSelect}']").prop("selected", true);
			}
			$("#optionSelect2").val(optionSelected);
			
			$(document).on("click","#option-btn",function(){
				var gradeSelected = $("#grade-select option:selected").val();
				var optionTags = [];
				$("#optionId:checked").each(function() {
					//optionTags[$(this).val()] = $(this).next().text();
					optionTags.push($(this).val());
				});
				$("#optionSelect").val(optionTags);
				$("#gradeSelect").val(gradeSelected);
				//$(".option-filters").attr("action","${pageContext.request.contextPath}/owner/request/sitterSearch");
				$(".option-filters").attr("action","${pageContext.request.contextPath}/owner/request/sitterList");
				$(".option-filters").submit();
			})
			
			$("#pagingPrev").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/owner/request/sitterList?pageNum=${pagingUtil.curPage}&gradeSelect=${gradeSelect}")
				$("#pagingForm").submit();
			})
			
			$("#paingNext").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/owner/request/sitterList?pageNum=${pagingUtil.curPage+2}&gradeSelect=${gradeSelect}")
				$("#pagingForm").submit();
			})
			
			$(".pageNum").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/owner/request/sitterList?&gradeSelect=${gradeSelect}&pageNum="+$(this).text());
				$("#pagingForm").submit();
			})
		})
	</script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/map/map.js"></script>
	
	<!-- 지도 검색 script -->
	<script type="text/javascript">
		//var addrList = new Array();
		var addressArray = [];
		var sitterNameArr = [];
		var sitterIdArr = [];
		<c:forEach items="${sitterList}" var="sitter" varStatus="status">
			//alert('${sitter.sitterAddr}');
			//alert('${sitter.sitterAddr}');
			addressArray.push('${sitter.sitterAddr}');
			sitterIdArr.push('${sitter.sitterId}');
			sitterNameArr.push('${sitter.sitterName}');
		</c:forEach>
		//변환된 좌표 목록 저장할 변수
		var coordsArray = {};
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		/*****************************************************************/
		var counter = 0;
		var markers = [];
		addressArray.forEach(function (addr) {
			  geocoder.addressSearch(addr, function(result, status) {
				// 정상적으로 검색이 완료됐으면 
					if (status === daum.maps.services.Status.OK) {
						var coords = new daum.maps.LatLng(result[0].y,
								result[0].x);
						
						coordsArray[counter] = coords;
						
						// 결과값으로 받은 위치를 마커로 표시합니다
						var marker = new daum.maps.Marker({
							map : map,
							position : coordsArray[counter]
						});
						
						markers.push(marker);
						var infowindow = new daum.maps.InfoWindow({
						    content : '<div id="info'+counter+'" style="padding:5px;">'+sitterNameArr[counter]+'</div>', // 인포윈도우에 표시할 내용
						   	removable : true
						});
						// 마커에 클릭 이벤트를 등록한다 (우클릭 : rightclick)
						daum.maps.event.addListener(markers[counter], 'click', function() {
							//location.href="${pageContext.request.contextPath}/"+url;
							//location.href="${pageContext.request.contextPath}/owner/request/sitterDetailRead?sitterId="+sitterIdArr[counter];
							//alert(sitterIdArr[]);
						});
						// 마커에 마우스오버 이벤트를 등록
						daum.maps.event.addListener(markers[counter], 'mouseover', function() {
							// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시
							infowindow.open(map, this);
						});

						// 마커에 마우스아웃 이벤트를 등록
						daum.maps.event.addListener(markers[counter], 'mouseout', function() {
							// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거
							infowindow.close();
						});
						counter++;
						if(counter == addressArray.length){
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coordsArray[0]);
							map.setLevel(7);
						}
					} //if문 종료
			  }); //addressSearch종료
		});//each 종료
		/*****************************************************************/
		
	</script>
</body>
</html>