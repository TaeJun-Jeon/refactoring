<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstap/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/search.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/select.css">
<!------ Include the above in your HEAD tag ---------->
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/lib/css/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/petProfile.css" rel="stylesheet" type="text/css">
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
	});
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
					<input type="button" class="btn btn-default btn-xs" value="create new" onclick="location.href='${pageContext.request.contextPath}/qa/writeQa'">
				</div>
				<div class="table-responsive">
					<table class="table table-bordred table-striped">
						<thead>
							<td>
								<input type="checkbox" id="checkall" />
							</td>
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
							<tr>
								<td>
									<input type="checkbox" class="checkthis" />
								</td>
								<td>01</td>
								<td>질문있습니다아아아아아아아아아아아아아아아아아아아아아아아아</td>
								<td>김시연</td>
								<td>2018-06-10</td>
								<td>2332</td>
								<td align="center">
									<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit">
										<span class="glyphicon glyphicon-pencil"></span>
									</button>
									<button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="checkthis" />
								</td>
								<td>01</td>
								<td>답변!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</td>
								<td>관리자</td>
								<td>2018-06-10</td>
								<td>2332</td>
								<td align="center">
									<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit">
										<span class="glyphicon glyphicon-pencil"></span>
									</button>
									<button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
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
					<p>
					<select class="form-control" style="width: 77px; height: 30px; font-size: 10px;">
						<option value="">제목</option>
						<option value="">내용</option>
						<option value="">글쓴이</option>
						<option value="">아이디</option>
					</select>
					<div id="custom-search-input" style="width: 340px;\">
						<div class="input-group col-md-12" style="width: 300px;\">
							<input type="text" style="width: 300px; height: 20px;" class="form-control input-lg" placeholder="입력해주세요" /> <span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button">
									<i class="fa fa-paw"></i>
								</button>
							</span>
						</div>
					</div>
					</p>
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
				<div class="modal-body">
					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?
					</div>
				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
<body>