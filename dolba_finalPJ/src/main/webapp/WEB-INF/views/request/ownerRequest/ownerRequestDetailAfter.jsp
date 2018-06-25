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
    
    <!-- 결제 api -->
	
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js" ></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    
    <style>

        .form-control{
            margin-right : 130px;
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
                        <div class="col-md-3 col-lg-3 " align="center"> <img src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> </div>

                        <div class=" col-md-9 col-lg-9 ">
                            <table class="table table-user-information">
                                <tbody>
                                <tr>
                                    <td>견주 ID : </td>
                                    <td>${ownerRequestDTO.ownerId}</td>
                                </tr>
                                <tr>
                                    <td>총 가격 : </td>
                                    <td>${ownerRequestDTO.ownerRequestPrice}</td>
                                </tr>
                                <tr>
                                    <td>예약 시작일 : </td>
                                    <td>${ownerRequestDTO.ownerRequestStart}</td>
                                </tr>
                                <tr>
                                    <td>예약 종료일 : </td>
                                    <td>${ownerRequestDTO.ownerRequestEnd}</td>
                                </tr>
                                <tr>
                                    <td>마리수 : </td>
                                    <td>${ownerRequestDTO.ownerRequestPetCount}</td>
                                </tr>
                                <tr>
                                    <td>펫시터 승인 여부 : </td>
                                    <td>${ownerRequestDTO.sitterApproval}</td>
                                </tr>
                                <tr>
                                	<td>결제상태 : </td>
                                	<td>${ownerRequestDTO.requestPaymentState}</td>
                                </tr>	

                                </tbody>
                            </table>

                          <!--   <a href="#" class="btn btn-primary">결제하기</a>
                            <a href="#" class="btn btn-primary">일지작성</a> -->
                            
                            <c:choose>
								<c:when test="${ownerRequestDTO.requestPaymentState eq 'y'}">
                              		<input type="button" class="btn btn-warning" value="결제완료" disabled>
                              		
                              		<sec:authorize access="hasAuthority('SITTER')">
                            			<a href="${pageContext.request.contextPath}/sitter/diaryForm" class="btn btn-primary">일지작성</a>
                            		</sec:authorize> 
                            		
                            		<sec:authorize access="hasAuthority('OWNER')">
                            			<a href="${pageContext.request.contextPath}/owner/requestDiaryList" class="btn btn-primary">일지보기</a>
                          			</sec:authorize> 
                              		
                            	</c:when>
                            	
                            <c:otherwise>
                            		<sec:authorize access="hasAuthority('OWNER')">
	                            		<input type="button" class="btn btn-primary" value="결제하기" onclick="javascript:payment()">
                          			</sec:authorize> 
                          			<sec:authorize access="hasAuthority('SITTER')">
	                            		<input type="button" class="btn btn-primary" value="결제대기중" disabled>
                          			</sec:authorize> 
                            		
                            </c:otherwise>
                           </c:choose>
									
                          			
                           
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i>결제</a>
                    <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                </div>

            </div>
        </div>
    </div>
</div>


<script text="text/javascript">

function payment(){
	
	
	IMP.init("imp19364709");
	
	IMP.request_pay({
		pg : 'uplus',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:결제테스트',
	    amount : 100,
	   /*  buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456' */
	    //m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        alert(msg);
	        
	        location.href = "${pageContext.request.contextPath}/owner/updateRequestPaymentState?ownerRequestId=${ownerRequestDTO.ownerRequestId}&state=y";
	        
	        
	        
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        alert(msg);
	    }
	     
	});  
	     
}
</script>

<!-- 제이쿼리(공통코드) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.js"></script>
<!-- 부트스트랩 js (공통코드) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.js"></script>

</body>
</html>