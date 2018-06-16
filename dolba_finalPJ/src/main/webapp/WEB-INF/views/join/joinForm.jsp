<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Context-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/joinForm/joinForm.css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-12 entire-margin">


            <div class="joinform panel panel-primary" style="margin-top:120px;">
                <div class="joinform-heading panel-heading">
                    <h3 class="panel-title">회원가입</h3>
                </div>
                <div class="panel-body form-margin">

                    <form role="form" method="post" action="${pageContext.request.contextPath}/admin/joinOwner">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >
                        <div class="form-group">
                            <label>아이디(ID)</label>
                            <input type="text" name="ownerId" id="userId" class="joinform-size form-control" placeholder="아이디(ID)">
                        </div>
                        <div class="form-group">
                            <label>패스워드</label>
                            <input type="password" name="ownerPassword" id="password" class="joinform-size form-control" placeholder="패스워드">
                        </div>

                        <div class="form-group">
                            <label>이름</label>
                            <input type="text" name="ownerName" id="ownerName" class="joinform-size form-control" placeholder="이름">
                        </div>

                        <div class="form-group">
                            <label style="display:block">주소</label>
                            <input type="text" class="joinform-size-address-zipcode form-control" placeholder="우편번호" style="display:inline-block; display:inline;" id="addr" disabled>
                            <input type="text" class="joinform-size-address-first form-control" name="ownerAddr" id="ownerAddr" placeholder="주소" style="margin-top:15px; display:inline;" readonly>
                            <input type="button" class="btn btn-default" value="우편번호검색" onclick="execPostCode();">
                            <input type="text" class="joinform-size-address-second form-control" name="ownerDetailAddr" id="ownerDetailAddr" placeholder="상세주소" style="margin-top:15px;">
                        </div>

                        <div class="form-group">
                            <label>핸드폰 번호</label>
                            <input id="phone" name="ownerPhone" type="text" class="joinform-size form-control" placeholder="핸드폰 번호 입력('-'없이 입력)">
                        </div>

                        <div class="form-group">
                            <label style="display:block">이메일</label>
                            <input type="text" class="joinform-email form-control" name="ownerEmail1" id="str_email01" placeholder="이메일 주소" style="display:inline-block">
                            <label>&nbsp; @ &nbsp;</label>
                            <input type="text" name="str_email02" id="str_email02" style="width:150px; display:inline;" disabled value="naver.com" class="form-control join">
                            <select class="form-control joinform-email" name="ownerEmail2" id="selectEmail" style="display:inline">
                                <option value="1">직접입력</option>
                                <option value="naver.com" selected>naver.com</option>
                                <option value="hanmail.net">hanmail.net</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="nate.com">nate.com</option>
                                <option value="yahoo.co.kr">yahoo.co.kr</option>
                                <option value="empas.com">empas.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="freechal.com">freechal.com</option>
                                <option value="lycos.co.kr">lycos.co.kr</option>
                                <option value="korea.com">korea.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="hanmir.com">hanmir.com</option>
                                <option value="paran.com">paran.com</option>
                            </select>
                        </div>

                        <!--사진이미지 첨부-->
                        <div class="form-group">
                            <label>사진이미지</label>
                            <input id="fileInput" filestyle="" type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="joinform-size form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
                            <div class="bootstrap-filestyle joinform-size input-group">
                                <input type="text" id="userfile" class="joinform-size form-control" name="ownerFname" readonly>
                            <span class="group-span-filestyle joinform-size input-group-btn" tabindex="0">
                            <label for="fileInput" class="btn btn-default ">
                                <span class="glyphicon fa fa-upload"></span>
                            </label>
                            </span>
                            </div>
                        </div>
                        <br>

                        <div class="form-group">
                            <label>성별</label><br>
                            <label class="radio-inline">
                                <input type="radio" name="ownerGender" id="man" value="man" checked="checked">  남자
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="ownerGender" id="woman" value="woman">  여자
                            </label>
                        </div>


                        <center>
                            <button type="submit" class="btn btn-primary" style="background-color: #18777F;">회원가입</button>
                        </center>
                    </form>

                </div>
            </div>


        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/resources/lib/js/joinForm/joinForm.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/js/address/addressapi.js"></script>
</body>
</html>