<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<!--부트스트랩(공통코드)-->
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
<!-- 폰트(공통코드) -->
<link href="${pageContext.request.contextPath}/resources/lib/fonts/font-awesome.css" type="text/css" rel="stylesheet">
<!-- 헤더 스타일(특정코드) -->
<link href="${pageContext.request.contextPath}/resources/lib/css/header/header-style.css" type="text/css" rel="stylesheet">


</head>
<body>


<nav class="navbar navbar-default navbar-dolba">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
            	<img src="${pageContext.request.contextPath}/resources/lib/img/logo.png" width="40px" height="40px">
            	<span>&nbsp;PET-DATE</span>
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="fa fa-home"></span>&nbsp;Home</a></li>
            <li><a href="#"><span class="fa fa-question-circle"></span>&nbsp;Help</a></li>
			<sec:authorize access="isAuthenticated()">
			<sec:authentication var="user" property="principal"/>
			<li><a href="#">${user.userName}님 안녕하세요.</a></li>
			</sec:authorize>
			
		
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-list"></span>&nbsp;메뉴</a>
                <div class="dropdown-custom dropdown-menu">
                    <div class="container" style="margin-top:20px;">
                    	<div class="row" style="margin-left:130px;">
                    		<div class="col-md-2">
	                    		<a href="#" class="dropdown-custom-a-tag">
	                    			<img src="${pageContext.request.contextPath}/resources/lib/img/callSitter.png" width="85px" height="75px"><br>
	                    			<span class="text-center">펫시터 부르기</span>
	                    		</a>
	                    	</div>
	                    	<div class="col-md-2"  style="margin-left:40px;">
	                    		<a href="#"  class="dropdown-custom-a-tag">
	                    			<img src="${pageContext.request.contextPath}/resources/lib/img/entrustSitter.png" width="95px" height="75px"><br>
	                    			<span class="text-center" style="padding-left:20px">펫 맡기기</span>
	                    		</a>
	                    	</div>
	                    	<div class="col-md-2" style="margin-left:50px;">
	                    		<a href="#"  class="dropdown-custom-a-tag">
	                    			<img src="${pageContext.request.contextPath}/resources/lib/img/petsit.png" width="65px" height="75px"><br>
	                    			<span class="text-center">돌보기 신청</span>
	                    		</a>
	                    	</div>
	                    	<div class="col-md-2" style="margin-left:20px;">
	                    		<a href="#"  class="dropdown-custom-a-tag" >
	                    			<img src="${pageContext.request.contextPath}/resources/lib/img/noticeBoard.png" width="85px" height="75px"><br>
	                    			<span class="text-center" style="padding-left:13px">공지사항</span>
	                    		</a>
	                    	</div>
	                    	<div class="col-md-2" class="dropdown-custom-a-tag" style="margin-left:30px;">
	                    		<a href="#"  class="dropdown-custom-a-tag">
	                    			<img src="${pageContext.request.contextPath}/resources/lib/img/question.png" width="95px" height="75px"><br>
	                    			<span class="text-center">질문과 답변</span>
	                    		</a>
	                    	</div>
	                    </div>	
                    </div>
                </div>
            </li>
        </ul>
    </div>
</nav>



<!-- 제이쿼리(공통코드) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.js"></script>
<!-- 부트스트랩 js (공통코드) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.js"></script>



</body>
</html>