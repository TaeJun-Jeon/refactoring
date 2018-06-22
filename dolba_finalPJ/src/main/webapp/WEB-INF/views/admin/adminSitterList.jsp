<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" type="text/css"></script>
<script src="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" type="text/css"></script>

<script>
	$(document).ready(function() {

		$("[data-toggle=tooltip]").tooltip();
	
		$(document).on("click","#ok", function(){
			
			var result = confirm("펫시터 가입을 승인하시겠습니까?");
			if(result){
				var id = $(this).parent().parent().parent().find("td:nth-child(2)").text();
				console.log(id);
				$.ajax({
					type: "post",
					url: "${pageContext.request.contextPath}/admin/updateSitterPermit",
					data:"${_csrf.parameterName}=${_csrf.token}&sitterId="+ id +"&state=y",//서버에게 보낼 parameter 정보
					dataType: "text",
					success: function(result){
						alert("펫시터 가입이 수락되었습니다");
						location.reload();
					},
					error : function(err){
						console.log(err)
					}
				})
			}
		})
		
		$(document).on("click","#reject",function(){
			var result = confirm("펫시터 가입을 거절하시겠습니까?");
			if(result){
				var id = $(this).parent().parent().parent().find("td:nth-child(2)").text();
				console.log(id);
				$.ajax({
					type:"post",
					url: "${pageContext.request.contextPath}/admin/updateSitterPermit",
					data:"${_csrf.parameterName}=${_csrf.token}&sitterId="+ id +"&state=x",//서버에게 보낼 parameter 정보
					dataType: "text",
					success: function(result){
						alert("펫시터 가입이 거절되었습니다");
						location.reload();
					},
					error : function(err){
						console.log(err)
					}
				})
			}
		})
		
		$("#pagingPrev").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/admin/adminSitterList?pageNum=${pagingUtil.curPage}")
				$("#pagingForm").submit();
			})
			
			$("#paingNext").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/admin/adminSitterList?pageNum=${pagingUtil.curPage+2}")
				$("#pagingForm").submit();
			})
			
			$(".pageNum").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/admin/adminSitterList?&pageNum="+$(this).text());
				$("#pagingForm").submit();
			})

	});
</script>

</head>
<body>
<h1>Notice LIST</h1>
<p>
<div class="container">
	<div class="row">
		<div class="col-md-12" style="margin-top: 100px; margin-bottom:100px;">
			<h4>펫시터 회원 관리</h4>
			
			<div class="table-responsive">
				<table class="table table-bordred table-striped">
					<thead>
						<td>NO.</td>
						<td>아이디</td>
						<td>이름</td>
						<td>휴대전화</td>
						<td>성별</td>
						<td>이력서</td>
						<td>승인</td>
						<td>거절</td>
					</thead>
					<tbody>
						<c:forEach items="${sitterList}" var="sitterList" varStatus="status">
						<tr>
						<td>${status.count}</td>
						<td>${sitterList.sitterId}</td>
						<td>${sitterList.sitterName}</td>
						<td>${sitterList.sitterPhone}</td>
						<td>${sitterList.sitterGender}</td>
						<td><a href="${pageContext.request.contextPath}/admin/downLoad?fName=${sitterList.certificationFname}">${sitterList.certificationFname}</a></td>
						<td><p data-placement='top' data-toggle='tooltip' title='수락'><button class='btn btn-primary btn-xs' data-title='Edit' value='수락' id='ok' ><span class='glyphicon glyphicon-pencil'></span></button></p></td>
						<td><p data-placement='top' data-toggle='tooltip' title='거절'><button class='btn btn-danger btn-xs' data-title='Delete' value='거절' id='reject' ><span class='glyphicon glyphicon-trash'></span></button></p></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="clearfix"></div>
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
		</div>
	</div>
</div>


<body>
