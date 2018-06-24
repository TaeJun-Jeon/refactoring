<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/board/search.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/board/select.css">
<!------ Include the above in your HEAD tag ---------->
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
$(function(){
	$(document).on("click","#delete",function(){
		var id = $(this).parent().parent().find('input[name=qaId]').val();
		var pwd= $(this).parent().parent().find('input[name=qaPwd]').val();
		var password = prompt("비밀번호를 입력하세요");
		
		if(password==pwd){
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/qa/deleteQa",
				data:"${_csrf.parameterName}=${_csrf.token}&qaId="+id,
				dataType:"text",
				success:function(result){
					  alert("삭제되었습니다");
					  location.reload();
				  },
				  error: function(err){
					  console.log(err)
				  }
			})
		}
		else{
			alert("비밀번호가 일치하지 않습니다")
		}
	})
	
	$("#pagingPrev").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/qa/allSelect?pageNum=${pagingUtil.curPage}")
				$("#pagingForm").submit();
			})
			
			$("#paingNext").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/qa/allSelect?pageNum=${pagingUtil.curPage+2}")
				$("#pagingForm").submit();
			})
			
			$(".pageNum").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/qa/allSelect?&pageNum="+$(this).text());
				$("#pagingForm").submit();
			})
})
</script>
</head>
<body>
	<h1>Q & A</h1>
	<p>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4>Q & A</h4>
				<div align="right">
					<input type="button" class="btn btn-default btn-xs" value="create new"
						onclick="location.href='${pageContext.request.contextPath}/qa/writeQaForm?${_csrf.parameterName}=${_csrf.token}'"
					>
				</div>
				<div class="table-responsive">
					<table class="table table-bordred table-striped">
						<thead>
							<td>NO.</td>
							<td>SUBJECT</td>
							<td>NAME</td>
							<td>DATE</td>
							<td>VIEW</td>
							<td align="center">
								<i class="fa fa-paw"></i>
							</td>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="dto" varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td>
										<a href="${pageContext.request.contextPath}/qa/readQa?${_csrf.parameterName}=${_csrf.token}&qaId=${dto.qaId}">${dto.qaTitle}</a>
									</td>
									<td>${dto.ownerId}</td>
									<td>${dto.qaWriteday}</td>
									<td>${dto.qaReadnum}</td>
									<td align="center">
										<button class="btn btn-primary btn-xs" data-title="Edit" id="update" onclick="location.href='${pageContext.request.contextPath}/qa/updateQaForm?qaId=${dto.qaId}'">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										<button class="btn btn-danger btn-xs" id="delete" data-title="Delete" >
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</td>
									<td><input type="hidden" name="qaId" id="qaId" value="${dto.qaId}"></td>
							    	<td><input type="hidden" name="qaPwd" id="qaPwd" value="${dto.qaPwd}"></td>
							    
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr>
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
					<form id="searchForm" name="searchForm" action="${pageContext.request.contextPath}/qa/searchQa?${_csrf.parameterName}=${_csrf.token}"
						method="post"
					>
						<p>
							<select class="form-control" name="keyField" style="width: 77px; height: 30px; font-size: 10px;">
								<option value="qa_title">제목</option>
								<option value="qa_content">내용</option>
								<option value="OWNER_ID">아이디</option>
							</select>
						<div id="custom-search-input" style="width: 340px; margin-top: 10px; margin-bottom: 50px;\">
							<div class="input-group col-md-12" style="width: 300px;\">
								<input type="text" name="keyWord" style="width: 300px; height: 20px;" class="form-control input-lg" placeholder="입력해주세요" /> <span
									class="input-group-btn"
								>
									<button class="btn btn-info btn-lg" type="button" id="searchBtn">
										<i class="fa fa-paw"></i>
									</button>
								</span>
							</div>
						</div>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			//검색하기
			$("#searchBtn").click(function() {
				var keyWord = $("input[name=keyWord]").val()
				if (keyWord == "") {
					alert("검색단어를 입력해주세요");
					$("input[name=keyWord]").focus();
					return;
				}
				$("#searchForm").submit();
			});
		});
	</script>
<body>