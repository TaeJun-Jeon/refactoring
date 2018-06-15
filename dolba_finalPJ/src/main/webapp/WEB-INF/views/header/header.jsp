<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/resources/lib/img/logo.png" width="40px" height="40px"></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="fa fa-home"></span>&nbsp;Home</a></li>
            <li><a href="#"><span class="fa fa-question-circle"></span>&nbsp;Help</a></li>

            <li><a href="#">-님 안녕하세요.</a></li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-list"></span>&nbsp;메뉴</a>
                <div class="dropdown-custom dropdown-menu">
                    <div class="container-fluid">

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