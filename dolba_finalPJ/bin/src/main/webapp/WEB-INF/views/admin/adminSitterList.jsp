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
			
			var result = confirm("승인하시겠습니까?");
			if(result){
				var id = $(this).parent().parent().parent().find("td:nth-child(2)").text();
				console.log(id);
				$.ajax({
					type: "post",
					url: "${pageContext.request.contextPath}/admin/updateSitterPermit",
					data:"${_csrf.parameterName}=${_csrf.token}&sitterId="+ id +"&state=y",//서버에게 보낼 parameter 정보
					dataType: "text",
					success: function(result){
						alert("예약 수락되었습니다");
						location.reload();
					},
					error : function(err){
						console.log(err)
					}
				})
			}
		})
		
		$(document).on("click","#reject",function(){
			var result = confirm("거절하시겠습니까?");
			if(result){
				var id = $(this).parent().parent().parent().find("td:nth-child(2)").text();
				console.log(id);
				$.ajax({
					type:"post",
					url: "${pageContext.request.contextPath}/admin/updateSitterPermit",
					data:"${_csrf.parameterName}=${_csrf.token}&sitterId="+ id +"&state=x",//서버에게 보낼 parameter 정보
					dataType: "text",
					success: function(result){
						alert("승인 거절되었습니다");
						location.reload();
					},
					error : function(err){
						console.log(err)
					}
				})
			}
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
				<ul class="pagination pull-right">
					<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
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
