<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일지 작성</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/joinForm/joinForm.css" type="text/css">

</head>
<body>
<div class="container">
    <div class="row">

        <div class="col-md-12 entire-margin">

            <div class="joinform panel panel-primary" style="margin-top:120px;">

                <div class="panel-body form-margin">
                    <div class="tab-content">
                        <div class="tab-pane active" id="userForm">
                        	<form name="writeForm" method="post" action="${pageContext.request.contextPath}/sitter/insertDiary?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" onSubmit='return checkValid()'>
                               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                               <%-- <sec:authentication var="user" property="principal"/>
                               <input type="hidden" name="sitterId" value="${user.userId}"> --%>
                               
                               <h4>Diary Form</h4>
                               <hr>
                                <div class="form-group">
                                    <label>아이디(ID)</label>
                                    <input type="text" class="joinform-size form-control" readonly>
                                </div>

                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" class="joinform-size form-control" readonly>
                                </div>

                                <div class="form-group">
                                    <label>제목</label>
                                    <input type="text" class="joinform-size-address-second form-control" style="margin-top:15px;" name="diaryTitle" id="diaryTitle">
                                </div>
                                
                                <div class="form-group">
                                    <label>내용</label><br>
                                    <textarea  rows="7" class="form-control" name="diaryContent" id="diaryContent"></textarea>
                                </div>

                                <!--사진이미지 첨부-->
                                <div class="form-group">
                                    <label>사진이미지</label>
                                    <input type="file" id="fileInputDiary" multiple="multiple" name="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="joinform-size form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
                                    <div class="bootstrap-filestyle joinform-size input-group" style="width:200px;">
                                       <!--  <input type="text" class="joinform-size form-control"  readonly> -->
                                        <span class="group-span-filestyle input-group-btn" tabindex="0">
				                            <label for="fileInputDiary" class="btn btn-default ">
				                                <span class="fa fa-upload"></span>
				                            </label>
				                       </span>
                                    </div>
                                </div>
                               	<div class="form-group">
                                    <label>비밀번호</label>
                                    <input type="password" class="joinform-size form-control" name="diaryPwd" id="diaryPwd">
                                </div>

                                <center>
                                    <button type="submit" class="btn btn-primary" style="background-color: #18777F;">등록</button>
                                </center>
                            </form>
                    	</div>
                    </div>
                </div>
        	</div>
    	</div>
	</div>
</div>

<script>
	function checkValid(){
		var f = window.document.writeForm;
		
		if(f.diaryTitle.value==""){
			alert("제목을 입력해주세요");
			f.diaryTitle.focus();
			return false;
		}
		if(f.diaryContent.value==""){
			alert("내용을 입력해주세요");
			f.diaryContent.focus();
			return false;
		}
		if(f.diaryPwd.value==""){
			alert("비밀번호을 입력해주세요");
			f.diaryPwd.focus();
			return false;
		}
		return true;
	}
</script>
</body>
</html>