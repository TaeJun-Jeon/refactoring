<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- <script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap.min.js"></script>
 --%>
<%-- <link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> --%>
<!------ Include the above in your HEAD tag ---------->
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css">

<script>
	$(document).ready(function() {
		$("#mytable #checkall").click(function() {
			if ($("#mytable #checkall").is(':checked')) {
				$("#mytable input[type=checkbox]").each(function() {
					$(this).prop("checked", true);
				});

			} else {
				$("#mytable input[type=checkbox]").each(function() {
					$(this).prop("checked", false);
				});
			}
		});

		$("[data-toggle=tooltip]").tooltip();
		
		$("#pagingPrev").bind("click",function(){
			$("#pagingForm").attr("action","${pageContext.request.contextPath}/notice/allSelect?pageNum=${pagingUtil.curPage}")
			$("#pagingForm").submit();
		})
		
		$("#paingNext").bind("click",function(){
			$("#pagingForm").attr("action","${pageContext.request.contextPath}/notice/allSelect?pageNum=${pagingUtil.curPage+2}")
			$("#pagingForm").submit();
		})
		
		$(".pageNum").bind("click",function(){
			$("#pagingForm").attr("action","${pageContext.request.contextPath}/notice/allSelect?&pageNum="+$(this).text());
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
			<div class="col-md-12" style="margin-top: 50px;">
				<h4>Notice</h4>
				<div align="right">
					<input type="button" class="btn btn-default btn-xs"
						value="create new"
						onclick="location.href='${pageContext.request.contextPath}/notice/writeForm'">
				</div>
				<div class="table-responsive">
					<table class="table table-bordred table-striped">
						<thead>
							<td align="center">NO.</td>
							<td align="center">SUBJECT</td>
						
							<td align="center">DATE</td>
							<td align="center">VIEW</td>
							<td align="center"><i class="fa fa-paw"></i></td>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty requestScope.list}">
									<tr>
										<td colspan="8">
											<p align="center">
												<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
											</p>
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${requestScope.list}" var="NoticeDTO" varStatus="status">
										    <tr onmouseover="this.style.background='#eaeaea'" onmouseout="this.style.background='white'">
										        <td bgcolor="">
										            <p align="center">${status.count}<span style="font-size:9pt;">
										            </span></p>
										        </td>
										        <td bgcolor="">
													<p align="center"><span style="font-size:9pt;">
													<a href="${pageContext.request.contextPath}/notice/readNotice?noticeId=${NoticeDTO.noticeId}">
													  ${NoticeDTO.noticeTitle}
													</a>
													</span></p>
										        </td>
										      
										      
										        <td bgcolor="">
										            <p align="center"><span style="font-size:9pt;">
										            ${NoticeDTO.noticeWriteday}</span></p>
										        </td>
										        <td bgcolor="">
										            <p align="center"><span style="font-size:9pt;">
										            ${NoticeDTO.noticeReadnum}</span></p>
										        </td>
										        <td align="center">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														onclick="location.href='${pageContext.request.contextPath}/notice/updateForm?noticeId=${NoticeDTO.noticeId}'"
														 data-target="#edit">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
													<button class="btn btn-danger btn-xs" data-title="Delete"
														onclick="location.href='${pageContext.request.contextPath}/notice/delete?noticeId=${NoticeDTO.noticeId}'"
														 data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</td>
										    </tr>
								    </c:forEach>
									</c:otherwise>
							</c:choose>

						</tbody>
					</table>
					<div class="clearfix"></div><!-- 페이징 -->
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
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
				<h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<input class="form-control " type="text" placeholder="Mohsin">
				</div>
				<div class="form-group">
					<input class="form-control " type="text" placeholder="Irshad">
				</div>
				<div class="form-group">
					<textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
				</div>
			</div>
			<div class="modal-footer ">
				<button type="button" class="btn btn-warning btn-lg" style="width: 100%;">
					<span class="glyphicon glyphicon-ok-sign"></span> Update
				</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
				<h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
			</div>
			
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<body>
