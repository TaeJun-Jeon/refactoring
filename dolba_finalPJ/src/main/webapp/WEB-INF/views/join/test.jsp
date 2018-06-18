<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

                    <!-- 토글 탭 -->
                    <div class="container">
                        <ul class="nav custom-nav-toggle nav-tabs " id="myTab" style="margin-left : 380px;">
                            <li><a class="panel-title" href="#userForm" data-toggle="tab">일반회원으로 회원가입</a></li>
                            <li class="active"><a class="panel-title" href="#petsitForm" data-toggle="tab">펫시터로 회원가입</a></li>
                        </ul>
                    </div>

                </div>

                <div class="panel-body form-margin">
                    <div class="tab-content">
                        <div class="tab-pane active" id="userForm">
                        
                           <form method="post" action="${pageContext.request.contextPath}/admin/joinOwner?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
                               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <div class="form-group">
                                    <label>아이디(ID)</label>
                                    <input type="text" name="ownerId" id="ownerId" class="joinform-size form-control" placeholder="아이디(ID)">
                                </div>
                                <div class="form-group">
                                    <label>패스워드</label>
                                    <input type="password" name="ownerPassword" id="ownerPassword" class="joinform-size form-control" placeholder="패스워드">
                                </div>

                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" name="ownerName" id="ownerName" class="joinform-size form-control" placeholder="이름">
                                </div>

                                <div class="form-group">
                                    <label style="display:block">주소</label>
                                    <input type="text" class="joinform-size-address-zipcode form-control" placeholder="우편번호" style="display:inline-block; display:inline;" id="ownerAddrCode" disabled>
                                    <input type="text" class="joinform-size-address-first form-control" name="ownerAddr" id="ownerAddr" placeholder="주소" style="margin-top:15px; display:inline;" readonly>
                                    <input type="button" id="ownerSearch" class="btn btn-default" value="우편번호검색" onclick="execPostCodeOwner();">
                                    <input type="text" class="joinform-size-address-second form-control" name="ownerDetailAddr" id="ownerDetailAddr" placeholder="상세주소" style="margin-top:15px;">
                                </div>

                                <div class="form-group">
                                    <label>핸드폰 번호</label>
                                    <input id="ownerPhone" name="ownerPhone" type="text" class="joinform-size form-control" placeholder="핸드폰 번호 입력('-'없이 입력)">
                                </div>

                                <div class="form-group">
                                    <label style="display:block">이메일</label>
                                    <input type="text" class="joinform-email form-control" name="ownerEmail1" id="ownerEmail1" placeholder="이메일 주소" style="display:inline-block">
                                    <label>&nbsp; @ &nbsp;</label>
                                    <input type="text" name="ownerEmail_empty" id="ownerEmail_empty" style="width:150px; display:inline;" disabled value="naver.com" class="form-control join">
                                    <select class="form-control joinform-email" name="ownerEmail2" id="ownerEmail2" style="display:inline">
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
                                    <input type="file"  id="fileInputOwner" name="ownerFname" filestyle=""data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="joinform-size form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
                                    <div class="bootstrap-filestyle joinform-size input-group">
                                        <input type="text" id="ownerFnameFileOnly" class="joinform-size form-control" name="ownerFnameFileOnly" value="" readonly>
                                        <span class="group-span-filestyle input-group-btn" tabindex="0">
                                        <label for="fileInputOwner" class="btn btn-default ">
                                            <span class="fa fa-upload"></span>
                                        </label>
                                   </span>
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <label>성별</label><br>
                                    <label class="radio-inline">
                                        <input type="radio" name="ownerGender" id="ownerMan" value="남" checked="checked">  남자
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="ownerGender" id="ownerWoman" value="여">  여자
                                    </label>
                                </div>


                                <center>
                                    <button type="submit" id="ownerForm" class="btn btn-primary" style="background-color: #18777F;">회원가입</button>
                                </center>
                            </form>

                        </div>


                        <div class="tab-pane" id="petsitForm">
                            
                            <!-- 펫시터 회원가입 -->
                            <form role="form" method="post" action="${pageContext.request.contextPath}/admin/joinSitter">
                               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >
                                <div class="form-group">
                                    <label>아이디(ID)</label>
                                    <input type="text" name="sitterId" id="sitterId" class="joinform-size form-control" placeholder="아이디(ID)">
                                </div>
                                <div class="form-group">
                                    <label>패스워드</label>
                                    <input type="password" name="sitterPassword" id="sitterPassword" class="joinform-size form-control" placeholder="패스워드">
                                </div>

                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" name="sitterName" id="sitterName" class="joinform-size form-control" placeholder="이름">
                                </div>

                                <div class="form-group">
                                    <label style="display:block">주소</label>
                                    <input type="text" class="joinform-size-address-zipcode form-control" placeholder="우편번호" style="display:inline-block; display:inline;" id="sitterAddrCode" disabled>
                                    <input type="text" name="sitterAddr" id="sitterAddr" class="joinform-size-address-first form-control" placeholder="주소" style="margin-top:15px; display:inline;" disabled>
                                    <input type="button" class="btn btn-default" value="우편번호검색" id="sitterSearch" onclick="execPostCodeSitter();">
                                    <input type="text" class="joinform-size-address-second form-control" name="sitterDetailAddr" id="sitterDetailAddr" placeholder="상세주소" style="margin-top:15px;">
                                </div>

                                <div class="form-group">
                                    <label>핸드폰 번호</label>
                                    <input type="text" id="sitterPhone" name="sitterPhone" class="joinform-size form-control" placeholder="핸드폰 번호 입력('-'없이 입력)">
                                </div>

                                <div class="form-group">
                                    <label style="display:block">이메일</label>
                                    <input type="text" class="joinform-email form-control" name="sitterEmail1" id="sitterEmail1" placeholder="이메일 주소" style="display:inline-block">
                                    <label>&nbsp; @ &nbsp;</label>
                                    <input type="text" name="sitterEmail_empty" id="sitterEmail_empty" style="width:150px; display:inline;" disabled value="naver.com" class="form-control join">
                                    <select class="form-control joinform-email" name="sitterEmail2" id="sitterEmail2" style="display:inline">
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

                               <!-- 사진이미지 첨부-->
                                <div class="form-group">
                                    <label>사진이미지</label>
                                    <input id="fileInputSitter" filestyle="" type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="joinform-size form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
                                    <div class="bootstrap-filestyle joinform-size input-group">
                                        <input type="text" id="userfileSitter" class="joinform-size form-control" name="sitterFname" disabled="">
                                        <span class="group-span-filestyle input-group-btn" tabindex="0">
                                           <label for="fileInputSitter" class="btn btn-default ">
                                             <span class="fa fa-upload"></span>
                                        </label>
                                        </span>
                                    </div>
                                </div>
                                <br>

                                <div class="form-group">
                                    <label>성별</label><br>
                                    <label class="radio-inline">
                                        <input type="radio" name="sitterGender" id="sitterMan" value="sitterMan" checked="checked">  남자
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="sitterGender" id="sitterWoman" value="sitterWoman">  여자
                                    </label>
                                </div>

                                <br>
                                <div class="form-group">
                                    <label>자기소개</label><br>
                                    <textarea  rows="5" class="form-control" name="sitterIntroduce"></textarea>
                                </div>

                                <div class="form-group has-error">
                                    <label class="control-label" for="inputError">평점</label>
                                    <input type="text" placeholder="평점은 추후에 반영됩니다." class="joinform-size form-control" id="inputError" name="sitterGrade" disabled>
                                </div>

                                <!--자격증 첨부-->
                                <div class="form-group">
                                    <label>자격증</label>
                                    <input id="certInput" filestyle="" type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="joinform-size form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
                                    <div class="bootstrap-filestyle joinform-size input-group">
                                        <input type="text" id="certFile" class="joinform-size form-control" name="sitterCertification" disabled="">
                                           <span class="group-span-filestyle input-group-btn" tabindex="0">
                                        <label for="certInput" class="btn btn-default ">
                                         <span class="glyphicon fa fa-upload"></span>
                                           </label>
                                        </span>
                                    </div>
                                </div>
                                <br>

                                <div class="select-size form-group">
                                    <label>기르고 있는 펫(PET)</label><br>
                                    <select class="form-control" name="sitterPetAmount">
                                        <option value="0" selected>&#45;&#45;마리수&#45;&#45;</option>
                                        <option value="1">1마리</option>
                                        <option value="2">2마리</option>
                                        <option value="3">3마리</option>
                                        <option value="4">4마리</option>
                                        <option value="5">5마리</option>
                                        <option value="5마리이상">5마리 이상</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>기본가격</label>
                                    <input id="price" name="sitterBasisPrice" type="text" class="joinform-size form-control" placeholder="펫시팅 기본가격">
                                </div>

                                <br>

                                <div class="form-group">
                                    <label>합격여부</label><br>
                                    <label class="radio-inline">
                                        <input type="radio" name="sitterPermit" id="hap" value="합격" disabled>  합격
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="sitterPermit" id="nohap" value="불합격" disabled checked>  불합격
                                    </label>
                                    <label style="color:red; display: block; margin-top:10px;"> * 합격여부는 심사 후 판별됩니다.</label>
                                </div>
                                <br>

                                <center>
                                    <button type="submit" id="sitterForm" class="btn btn-primary" style="background-color: #18777F;">회원가입</button>
                                </center>
                            </form>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath}/resources/lib/js/joinForm/joinForm.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/js/address/addressapi.js"></script>
</body>
</html>\