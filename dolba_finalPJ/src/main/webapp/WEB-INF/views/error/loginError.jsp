<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!--부트스트랩(공통코드)-->
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<!-- 폰트(공통코드) -->
<link href="${pageContext.request.contextPath}/resources/lib/fonts/font-awesome.css" type="text/css" rel="stylesheet">
</head>
<style>
	form a,span{
		color : #1db954;
	}
</style>
<body>

	<jsp:include page="../header/header.jsp" flush="false"/>
	
	<div class="container" style="margin-top: 250px; margin-bottom: 250px;">
		<div class="panel panel-danger">
			<div class="panel-heading">
				<h3 class="panel-title">${requestScope.errorMessage}</h3>
			</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form class="form-horizontal">
								<br>
								<br>
								<form role="form" method="post" action="${pageContext.request.contextPath}/admin/login">
									<fieldset>
										<br>
										<br>
										
										<center>
											<input type="button" class="btn btn-warning" value="Login with KAKAO" style="width: 400px">
										</center>
										<br> <br>
										<div class="form-group">
											<label class="col-md-4 control-label">ID</label>
											<div class="col-md-4">
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-user"> </i>
													</div>
													<input id="inputUsernameEmail" name="id" type="text" placeholder="Username or email" class="form-control input-md">
												</div>
											</div>
										</div>
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label">PASSWORD</label>
											<div class="col-md-4">
												<div class="input-group">
													<div class="input-group-addon">
														<i class="glyphicon glyphicon-lock"></i>
													</div>
													<input id="inputPassword" name="password" type="password" placeholder="password" class="form-control input-md">
												</div>
											</div>
										</div>
										<div class="modal-body">
											<div class="container">
												<div class="row">
													<div class="col-xs-offset-2 col-md-4">
														<a href="#"><p class="login-form-text">비밀번호 혹은 아이디를 잊어버리셨나요?</p></a>
													</div>
													<div class="col-md-6">
														아직 아이디가 없으신가요?<a href="${pageContext.request.contextPath}/admin/joinForm" class="login-form-text">&nbsp;&nbsp;회원가입</a>
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-5 control-label"></label>
											<div class="col-md-6">
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> 
												<input type="submit" class="btn btn-primary" value="로그인" style="background-color:#18777F;"> 
												<input type="reset" class="btn btn-danger" value="취소">
											</div>
										</div>
										<div class="modal-footer">
											<div class="col-xs-offset-2 col-xs-8 text-center">
												<div class="divider"></div>
												<p>
													"Login With KAKAO"를 클릭하고 펫시터 서비스를 이용할 경우 귀하는 자동으로 저희 사이트에 등록되며, 
													<a href="#" class="login-form-text">이용약관</a> 및 
													<a href="#" class="login-form-text">개인정보 보호정책</a>에 동의하는 것으로 간주됩니다.
												</p>
											</div>
										</div>
									</fieldset>
								</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
				
<jsp:include page="../footer/footer.jsp" flush="false"/>
				
			

</body>
</html>