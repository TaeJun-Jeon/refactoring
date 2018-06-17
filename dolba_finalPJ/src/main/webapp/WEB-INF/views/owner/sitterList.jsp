<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/optionSelect.css?v=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/sitterPreview.css?v=2">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba4b9793fc0330bc556842d113ad5aaa"></script>
<script type="text/javascript">
	/* $(function () {
		$(document).on("click","#pageElement",function(){
			alert($(this).html());
			$.ajax({
				url: "${pageContext.request.contextPath}/owner/request/sitterListAjax", //서버 요청 주소
				type:"POST", //메소드 방식 GET , POST
				dataType:"json", //요청 결과 데이터 타입(text, html,xml,json)
				data:"curPage="+$(this).html(), //서버에게 보낼 parameter 정보
				success:function(data){						
					$.each(data,function(index,item){
						var content="<li class='row sitter-li preview-container'>";
						content += "<div class='col-xs-7 preview-left'>";
						content += "<div class='row' style='margin-top: 25px'>";
						content += "<h5><b><a href='#' class='sitter-desc'>"+item.sitterIntroduce+"</a></b></h5>"
						content += "<span class=''>"+item.sitterName+"</span>";
						content += "</div>"
						content += "<hr>";
						content += "<div class='row'>";
						$.each(item.sitterOptionDTO,function(opIndex,opItem){
							content += "<span class='label label-success option-label'>"+opItem.optionName+"</span>";
						});
						content += "</div>";
						content += "</div>";
						content += "<div class='col-xs-2 preview-grade'>";
						content += "<div class='row'>";
						content += "<h4>"+item.sitterGrade+"</h4>"
						content += "<h6><a href='#'>고객후기 n개</a></h6>"
						content +=
						content +=
						content +=
						content +=
						content +=
						content +=
						content +=
						content +=
						content +=
					})
					
					alert(data);
				},//callback	
				error:function(err){
					alert(err +"=>오류발생!!!");
				}
			});//ajax 
		})
		$("#pagingPrev").click(function(){
			alert(110);
			/* $.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/idcheckAjax",				
				data:"${_csrf.parameterName}=${_csrf.token}&id="+id,	
				success:function(data){						
					if(data=="fail"){
					$("#idCheckView").html("  "+id+" ID Can't Use!! ").css("background","red");
						checkResultId="";
					}else{						
						$("#idCheckView").html("  "+id+" ID Can Use!! ").css("background","yellow");		
						checkResultId=id;
					}					
				}//callback			
			});//ajax 
		});//keyup
	})
 */
</script>
</head>
<body>
	
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
					<ul class="pagination sitter-pagination">
						<li class="page-item"><a class="page-link" id="pagingPrev" href="${pageContext.request.contextPath}/owner/request/sitterList?pageNum=${pagingUtil.curPage}">Previous</a></li>
						<c:forEach begin="${pagingUtil.startPage}" end="${pagingUtil.endPage}" varStatus="status" >
							<c:choose>
								<c:when test="${pagingUtil.startPage+status.count-1 eq pagingUtil.curPage+1}">
									<li class="page-item active"><a class="page-link" id="pageElement" href="${pageContext.request.contextPath}/owner/request/sitterList?pageNum=${pagingUtil.startPage+status.count-1}">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:when test="${pagingUtil.startPage+status.count-1 gt pagingUtil.totalPage}">
									<li class="page-item disabled"><a class="page-link" id="pageElement" href="#">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:otherwise>
		 							<li class="page-item"><a class="page-link" id="pageElement" href="${pageContext.request.contextPath}/owner/request/sitterList?pageNum=${pagingUtil.startPage+status.count-1}">${pagingUtil.startPage+status.count-1}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<li class="page-item"><a class="page-link" id="paingNext" href="${pageContext.request.contextPath}/owner/request/sitterList?pageNum=${pagingUtil.curPage+2}">Next</a></li>
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
			var currentPosition = parseInt($(".div-map").css("top")); //지도의 현재 position
			var pagingPosition = $("#paging-div").offset();  //paging 태그 div top position
			var positionMin = pagingPosition.top -730;
			$(window).scroll(function() {
				/* var positionMap = $(".div-map").offset();
				var positionMapBottom = positionMap.top + $("#map").css("height");
				 */
				var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
				var positionRe = position + currentPosition - 150; 
				/* console.log("footercustom="+pagingPosition.top);
				
				if(positionMin<0){
					$(".div-map").stop().animate({
						"top" : 0
					}, 500);
				}else if(positionMapBottom>pagingPosition.top){
					$(".div-map").stop().animate({
						"top" : positionMin
					}, 500);
				}else{
					$(".div-map").stop().animate({
						"top" : pagingPosition.top
					}, 500);
				} */
				
				var positionMapBottom = $("#map").css("height");
				console.log(positionMapBottom);
				if(position > 530){
					$(".div-map").stop().animate({
						"top" : 530
					}, 500);	
				}else if (positionRe > 0 ) { //지도위치가 0보다 클경우
					$(".div-map").stop().animate({
						"top" : positionRe
					}, 500);
				} else { //지도위치가 0보다 작을경우 0으로 고정
					$(".div-map").stop().animate({
						"top" : 0
					}, 500);
				}
			});
		});
	</script>
</body>
</html>