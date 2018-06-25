<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<!--부트스트랩(공통코드)-->
	<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
	<!-- 폰트(공통코드) -->
	<link href="${pageContext.request.contextPath}/resources/lib/fonts/font-awesome.css" type="text/css" rel="stylesheet">


    <style>

        .form-control{
            margin-right : 60px;
        }
    </style>
</head>
<body>

	<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">상세보기</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> </div>

                        <div class=" col-md-9 col-lg-9 ">
                            <table class="table table-user-information">
                                <tbody>
                                <tr>
                                    <td>견주 ID : </td>
                                    <td>${callDTO.ownerId }</td>
                                </tr>
                                <tr>
                                    <td>총 가격 : </td>
                                    <td>${callDTO.callTotalPrice}</td>
                                </tr>
                                <tr>
                                    <td>코멘트 : </td>
                                    <td><textarea class="form-control" type="textarea" id="message" placeholder="${callDTO.callComment }" maxlength="140" rows="7" readonly></textarea></td>
                                </tr>
                                <tr>
                                    <td>예약 시작일 : </td>
                                    <td>${callDTO.callReservateStart}</td>
                                </tr>
                                <tr>
                                    <td>예약 종료일 : </td>
                                    <td>${callDTO.callReservateEnd}</td>
                                </tr>
                                <tr>
                                    <td>작성일 : </td>
                                    <td>${callDTO.callWriteday}</td>
                                </tr>
                                <tr>
                                    <td>마리수 : </td>
                                    <td>${callDTO.callPetcount}</td>
                                </tr>
                                <tr>
                                    <td>견주 승인 여부 : </td>
                                    <td>${callDTO.ownerApproval}</td>
                                </tr>
                                <tr>
                                    <td>결재상태 : </td>
                                    <td>${callDTO.callPaymentState}</td>
                                </tr>

                                </tbody>
                            </table>

                            <sec:authorize access="hasAuthority('OWNER')">
                            <a class="btn btn-danger" disabled>펫시터의 승인 후 결제가 가능합니다.</a>
                            <a href="#" class="btn btn-primary" disabled>일지보기</a>
                            </sec:authorize>
                            <sec:authorize access="hasAuthority('SITTER')">
                            <a class="btn btn-danger" disabled>승인 대기중</a>
                            <a href="#" class="btn btn-primary" disabled>일지작성</a>
                            </sec:authorize>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i> 1:1채팅</a>
                    <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- 제이쿼리(공통코드) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.js"></script>
<!-- 부트스트랩 js (공통코드) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.js"></script>

</body>
</html>