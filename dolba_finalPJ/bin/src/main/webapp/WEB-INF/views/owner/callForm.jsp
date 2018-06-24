<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/call/callForm.css"> 
    <!-- // jQuery UI CSS파일  -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
</head>
<body>


<div class="profile container">
    <h1>펫데이트 방문펫시터를 신청해주셔서 감사합니다.</h1>
    <p>예약 신청을 위해 아래 내용을 작성해주세요.</p>

    <ul>
        <li>
            <dl class="clearfix-call">
                <dt class="pull-left">이름</dt>
                <dd class="pull-left">db연동-name</dd>
            </dl>
        </li>
        <li>
            <dl class="clearfix-call">
                <dt class="pull-left">연락처</dt>
                <dd class="pull-left">db연동-phone</dd>
            </dl>
        </li>
        <li class="editable">
            <dl class="clearfix-call">
                <dt class="pull-left">주소</dt>
                <dd class="pull-left">
                    <p class="pull-left ">db연동-addr</p>
                    <a href="/mypage" class="pull-right">수정하기</a>
                </dd>
            </dl>
        </li>
    </ul>

</div>


<div class="container">
    <div class="row">

        <div class="col-md-12">

            <div class="callform panel panel-primary">

                <div class="callform-heading panel-heading">
                    <h1 class="panel-title">아래 내용을 작성해 주세요</h1>
                </div>

                <div class="panel-body form-margin">
                    <form role="form" method="post" action="dlsjfk">

                        <div class="form-group form-group-line">
                            <div class="pets">
                                <label>돌봄을 원하시는 반려동물을 선택해주세요.</label>
                                <p>
                                    * 산책 1회당 최대 2마리씩 진행이 되며 여러 마리인 경우<br class="visible-xs-inline">
                                    마리수에 맞춰 1시간씩 돌봄 시간이 추가될 수 있습니다.<br class="visible-xs-inline">
                                    (시간 추가는 반려견만 해당됩니다.)<br> <span>* 반려견과 함께 반려묘 돌봄을
                                 원할 경우 <br class="visible-xs-inline"> 추가금 5,000원이 부과됩니다.
                                 <br class="visible-xs-inline"> (단, 반려묘는 배식과 배변처리만
                                 제공됩니다.)<br>
                              </span> <span>* 반려견 정보 등록 및 업데이트는 <a href="/sitter/petprofile">강아지정보</a>에서
                                 가능합니다.
                              </span>
                                </p>
                                <div class="row" style="margin: 0px">
                                    <div class="insert-petinfo checkbox col-sm-4">
                                        <label> <input type="checkbox" name="petId" id="petName">
                                            db연동-반려견이름 (db연동-15kg 미만)
                                        </label>
                                    </div>
                                    <div>
                                        <select class="insert-petinfo col-sm-4 form-control"
                                                style="width: 250px;">
                                            <option value="0" selected>--추가 반려동물--</option>
                                            <option value="1">추가반려동물 없음</option>
                                            <option value="2">db연동-추가반려동물1</option>
                                            <option value="3">db연동-추가반려동물2</option>
                                            <option value="4">db연동-추가반려동물3</option>
                                            <option value="5">db연동-추가반려동물4</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group option-filters form-group-line "
                             style="height: 151px;">
                            <label>검색 필터 설정하기</label>
                            <li class="col-tags" >
                                <dl>
                                    <dt>* 원하는 태그를 모두 선택해주세요!</dt>
                                    <dd>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block"> <input
                                                    name="tag" type="checkbox" value="1" autocomplete="off">산책
                                            </label>
                                        </div>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block"> <input
                                                    name="tag" type="checkbox" value="2" autocomplete="off">목욕
                                            </label>
                                        </div>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block "> <input
                                                    name="tag" type="checkbox" value="3" autocomplete="off">노령견케어
                                            </label>
                                        </div>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block"> <input
                                                    name="tag" type="checkbox" value="4" autocomplete="off">자격증보유
                                            </label>
                                        </div>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block"> <input
                                                    name="tag" type="checkbox" value="5" autocomplete="off">응급처치
                                            </label>
                                        </div>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block"> <input
                                                    name="tag" type="checkbox" value="6" autocomplete="off">대형견
                                            </label>
                                        </div>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block"> <input
                                                    name="tag" type="checkbox" value="7" autocomplete="off">반려견없는곳
                                            </label>
                                        </div>
                                        <div class="btn-group col-md-3" data-toggle="buttons">
                                            <label class="btn btn-xs btn-block"> <input
                                                    name="tag" type="checkbox" value="8" autocomplete="off">집중케어
                                            </label>
                                        </div>

                                    </dd>
                                </dl>
                            </li>
                        </div>
                        <div class="form-group dates form-group-line">
                            <label>예약날짜를 알려주세요</label>
                            <div class="row">
                                <div class="col-sm-4">
                                    <input name="callReservateStart" type="text" id="datepickerStart"
                                           placeholder="시작날짜">
                                </div>
                                <div class="col-sm-4">
                                    <input name="callReservateEnd" type="text" id="datepickerEnd"
                                           placeholder="마침날짜">
                                </div>
                            </div>
                        </div>
                        <div class="form-group form-group-line"
                             style="padding-bottom: 20px">
                            <label>원하는 금액을 제시해 주세요</label> <input type="text"
                                                                  name="callTotalPrice" id="callPrice"
                                                                  class="callform-size form-control" placeholder="기본27000">
                        </div>

                        <div class="form-group form-group-line"
                             style="padding-bottom: 20px;">
                            <label>돌봄 시 요청 사항이 있습니까?</label><br>
                            <p>* 1시간 돌봄 포함 내용 (배식, 배변처리, 산책) 외 요청사항이 있으시다면 적어주세요.</p>
                            <textarea rows="5" class="form-control" id="callComment" name=callComment"
                                      placeholder="ex)  고양이 돌봄도 함께 해주세요. 산책없이 놀이서비스로 대체 해주세요...."></textarea>
                        </div>

                        <div class="notice">
                            <br>
                            <p>* 예약 내역은 MyPage에서 확인 가능합니다</p>
                        </div>


                        <center>
                            <button type="submit" class="btn btn-primary"
                                    style="background-color: #18777F;">회원가입</button>
                        </center>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>


<!-- js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/css/js/bootstrap/bootstrap.js"></script>
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/css/js/call/callForm.js" type="text/javascript"></script>

</body>
</html>