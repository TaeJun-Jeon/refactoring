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
										<button class="btn btn-primary btn-xs" data-title="Edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										<button class="btn btn-danger btn-xs" data-title="Delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr>
					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>
					<form id="searchForm" name="searchForm" action="${pageContext.request.contextPath}/qa/searchQa?${_csrf.parameterName}=${_csrf.token}"
						method="post"
					>
						<p>
							<select class="form-control" name="keyField" style="width: 77px; height: 30px; font-size: 10px;">
								<option value="qa_title">제목</option>
								<option value="qa_content">내용</option>
								<option value="OWNER_ID">아이디</option>
							</select>
						<div id="custom-search-input" style="width: 340px;\">
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