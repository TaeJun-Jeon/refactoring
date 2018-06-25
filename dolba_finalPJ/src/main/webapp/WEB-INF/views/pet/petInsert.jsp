<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <!--booststrap-->
    <link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <script href="${pageContext.request.contextPath}/resources/lib/css/fonts/font-awesome.css" type="text/css"></script>
    <link href="${pageContext.request.contextPath}/resources/lib/css/header/header-style.css" type="text/css" rel="stylesheet">
    <!-- --------------------------------헤더에서 사용---------------------------------------->

    <link href="${pageContext.request.contextPath}/resources/lib/css/pet/pet-style.css">

</head>
<body>
<script>

$(document).ready(function (){

    $("#petImg").on('change', function(){  // 값이 변경되면
        if(window.FileReader){  // modern browser
            var filename = $(this)[0].files[0].name;
            console.log($(this)[0].files[0])
        } else {  // old IE
            var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
        }
        // 추출한 파일명 삽입
        $("#petFname").val(filename);
    });
});
</script>


<div class="container">
    <div class="row">

        <div class="col-md-12 entire-margin">

            <div class="joinform panel panel-primary" style="margin-top: 120px;">

                <div class="joinform-heading panel-heading">
                    <h1 class="panel-title">pet등록하기</h1>
                </div>

                <div class="panel-body form-margin">

                    <form id="form" method="post" action="${pageContext.request.contextPath}/owner/petInsert?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data"">

                        <div class="form-group">
                            <label>강아지 사진등록</label>
                            <input name= "file" id="petImg" filestyle="" type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text=""
                                   data-icon-name="fa fa-upload" class="joinform-size form-control" tabindex="-1" style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
                            <div class="bootstrap-filestyle joinform-size input-group">
                                <input type="text" id="petFname" class="joinform-size form-control" name="petFname" readonly>
                                <span class="group-span-filestyle input-group-btn" tabindex="0">
										<label for="petImg" class="btn btn-default "> <span
                                                class="glyphicon fa fa-upload"></span>
									</label>
									</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>이름</label>
                                    <input type="text" name="petName"
                                           id="petName" class=" form-control"
                                           placeholder="이름">
                                </div>
                                <div class="col-sm-4">
                                    <label>나이</label> <input type="text" name="petAge" id="petAge" class="form-control" placeholder="나이">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>품종</label>
                                    <input type="text" name="petSpecies" id="petSpecies" class=" form-control"  placeholder="품종">
                                </div>
                                <div class="col-sm-4">
                                    <label>견종크기</label>
                                    <select class="form-control" name="petSize" id="petSize" style="display:inline">
                                        <option value="0" selected>--견종크기--</option>
                                        <option value="대">대</option>
                                        <option value="중">중</option>
                                        <option value="소">소</option>
                                    </select>
                                </div>
                                <div class="col-sm-4">
                                    <label>몸무게</label>
                                    <input type="text" name="petWeight"
                                           id="petWeight" class=" form-control"
                                           placeholder="몸무게(숫자로 입력)">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>성별</label><br> <label class="radio-inline">
                            <input type="radio" name="petGender" id="man" value="man" checked="checked"> 남자
                        </label> <label class="radio-inline">
                            <input type="radio" name="petGender" id="woman" value="woman"> 여자
                        </label>
                        </div>

                        <div class="form-group contents-detail">
                            <label>Q. 앓고 있는 지병이나 이전에 다쳤던 적이 있나요?</label><br>
                            <label class="radio-inline">
                                <input class="required" type="radio" name="petIllness" id="petIllness-no" value="N" checked="checked">  No
                            </label>
                            <label class="radio-inline">
                                <input class="required" type="radio" name="petIllness" id="petIllness-yes" value="Y">  Yes
                            </label>
                            <br><br>
                            <label>* 이외에 특이사항을 작성해 주세요.</label><br>
                            <textarea  rows="5" class="form-control" name="petIllness" id="petIllness"></textarea>
                        </div>
                        
                        <sec:authentication  var="user" property="principal" />
                        <input type="hidden" name="ownerId" value="${user.userId}">


                        <center>
                            <button type="submit" class="btn btn-primary" id="petEnrollForm"
                                    style="background-color: #18777F;">저장</button>
                        </center>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- //js  working-->
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap/bootstrap.js" type="text/javascript"/>
<script src="${pageContext.request.contextPath}/resources/lib/js/pet/pet-form.js" type="text/javascript"/>
</body>
</html>