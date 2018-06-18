<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- css 적용 -->
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/photo.css?v1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/reservate.css?v2">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/request/petsitterOption.css">
<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		//총합
		var price = $("#price").val();
		var total=price;
		
		$("#totalPrice").html(total);
		
		var totalPrice=0;
		
		
		//달력
		var rangeDate = 31; // set limit day
		var setSdate, setEdate;
		var strDayStart = 0;
		var strDayEnd = 0;
		var currDay = 24 * 60 * 60 * 1000;
		var priceSumDate=0;
		
		//체크박스
		var priceSumCheck=0;
		
		//반려견가격
		var priceSumAcount=0;
		
		$("#datepickerStart").datepicker({
			dateFormat : 'yy-mm-dd',
			minDate : 0,
			onSelect : function(dateText) {
				//alert("Selected date: " + dateText);
				strDayStart = dateText.split('-');
				strDayStart[1] = strDayStart[1] - 1;
				/* alert(new Date(strDayStart[0], strDayStart[1],
						strDayStart[2])); */
				$("#datepickerEnd").datepicker("option", "minDate", dateText);
			}
		});
		$("#datepickerEnd").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					onSelect : function(dateText) {
						//alert("Selected date: " + dateText);

						strDayEnd = dateText.split('-');
						strDayEnd[1] = strDayEnd[1] - 1;
						/* alert(new Date(strDayEnd[0], strDayEnd[1],
								strDayEnd[2])); */
						var t1date = new Date(strDayStart[0], strDayStart[1],
								strDayStart[2]);
						var t2date = new Date(strDayEnd[0], strDayEnd[1],
								strDayEnd[2]);
						var diff = t2date - t1date;
						$('#reservateDay').html(diff / currDay + "박")
						priceSumDate=(diff/currDay)*price;
						
						$("#reservateDayPrice").html(priceSumDate +"원" )
						
						//총합
						total=price; //초기화
						totalPrice=(parseInt)(total)+priceSumDate+priceSumCheck+priceSumAcount;
						$("#totalPrice").html(totalPrice);
					}
				});
		
		//체크된 옵션 개수 구하기
		
		$("#checkOption").html(priceSumCheck +"원");
		$("input[type=checkbox]").change(function(){
	        if($("input[type=checkbox]").is(":checked")){
	        	var checkOption=$("input:checkbox[name=tag]:checked").length;
				//alert(checkOption)
				priceSumCheck=checkOption*2000;
				$("#checkOption").html(priceSumCheck +"원")
	        }else if($("input:checkbox[name=tag]:checked").length<1){
	        	priceSumCheck=0;
	        	$("#checkOption").html(priceSumCheck +"원");
	        }
	      //총합
			total=price;//초기화
			totalPrice=(parseInt)(total)+priceSumCheck+priceSumDate+priceSumAcount;
			//alert(totalPrice)
			$("#totalPrice").html(totalPrice);
	        
	    });
		
		//반려견당 가격 구하기
		$("#petAcountPrice").html(0+"원")
		$("#petAcount").click(function(){
			/* alert($("#petAcountPrice").val()) */
			var price = $("#price").val()
			priceSumAcount = $('#petAcount').val() * price;
			$("#petAcountPrice").html(priceSumAcount+"원")
			
			//총합
			total=price;//초기화
			totalPrice=(parseInt)(total)+priceSumCheck+priceSumDate+priceSumAcount;
			$("#totalPrice").html(totalPrice); 
			
		});
	})
	function sendReservation(){
		if($("#datepickerStart").val() == "시작날짜 00:00"){
	        alert("시작일을 선택해주세요.");
	        $("#datepickerStart").focus();
	        return false;
	    }else if($("#datepickerEnd").val() == "마침날짜 00:00" || $("#datepickerEnd").val() ==''){
	        alert("종료일을 선택해주세요.");
	        $("#datepickerEnd").focus();
	        return false;
	    }
		
		var checkArr=[];
		$("input[type=checkbox]:checked").each(function() {
			  //alert($(this).val())
			  checkArr.push($(this).val())
		})
		//alert($("#totalPrice").html())
		//alert((parseInt)($('#petAcount').val())+1)
		$("#checkArr").val(checkArr);
		$("#ownerRequestPrice").val($("#totalPrice").html());
		$("#ownerRequestPetCount").val((parseInt)($('#petAcount').val())+1);
		var re = confirm("할거야?");
		if(re){
			document.form.submit();
		}
	}
</script>
</head>
<body>
	<form name="form" method="POST" action="${pageContext.request.contextPath}/owner/request/insertOwnerRequest">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<input type="hidden" value="${sitterDTO.sitterId}" name="sitterId">
		<input type="hidden" id="ownerRequestPrice" name="ownerRequestPrice">
		<input type="hidden" id="ownerRequestPetCount" name="ownerRequestPetCount">
		<input type="hidden" id="checkArr" name="checkArr">
		
		<div class="container">
			<section id="gallery">
				<div class="container">
					<div class="row" style="padding-top: 100px;">
						<div class="col-xs-6 img-space">
							<div class="gallery">
								<a href="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[1].sitterImgUrl}" target="_blank"> <img class="img-responsive"
									src="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[1].sitterImgUrl}" style="width: 725px; height: 320px; margin-left: 100px;"
								/> <span class="overlay2">+</span>
								</a>
							</div>
						</div>
						<div class="col-lg-12 col-xs-12"></div>
						<div class="col-md-2 img-space">
							<div class="gallery" style="width: 170px;">
								<a href="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[2].sitterImgUrl}" target="_blank""> <img
									class="img-responsive" src="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[2].sitterImgUrl}"
									style="width: 170px; height: 105px; margin-left: 100px;"
								/> <span class="overlay">+</span>
								</a>
							</div>
						</div>
						<div class="col-xs-6 col-sm-2 img-space">
							<div class="gallery" style="width: 170px;">
								<a href="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[3].sitterImgUrl}" target="_blank"> <img
									class="img-responsive" src="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[3].sitterImgUrl}"
									style="width: 170px; height: 105px; margin-left: 100px;"
								/> <span class="overlay">+</span>
								</a>
							</div>
						</div>
						<div class="col-xs-9 col-sm-3 img-space">
							<div class="gallery" style="width: 170px;">
								<a href="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[4].sitterImgUrl}" target="_blank"> <img
									class="img-responsive" src="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[4].sitterImgUrl}"
									style="width: 170px; height: 105px; margin-left: 100px;"
								/> <span class="overlay">+</span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="main-top-detail">
					<div class="contents-form" >
						<div class="contents-form-service text-center">예약을 원하는 날짜와 시간을 선택해주세요.</div>
						<div class="contents-form-date">
							<input type="text" class="contents-form-date-datepicker" id="datepickerStart" name="ownerRequestStart" value="시작날짜 00:00" readonly/>&gt; <input
								type="text" class="contents-form-date-datepicker" id="datepickerEnd" name="ownerRequestEnd" value="마침날짜 00:00" readonly
							/>
						</div>
						<div class="contents-form-price">
							<input type="text" style="border: white; color: #18777F; width: 70px; text-align: center;" value="${sitterDTO.sitterBasisPrice}" id="price"
								readonly="readonly"
							>원 <span> <select name="type_size" class="form-control aa">
									<option value="0">&nbsp; 15kg 미만 &nbsp;</option>
									<option value="15">&nbsp; 15kg 이상 &nbsp;</option>
							</select>
							</span>
							<div style="font-size: 13px">
								반려견 추가 당 <span style="color: #18777F;">x2</span>
							</div>
							<div class="container option-filters-sitter">
								<ul class="clearfix">
									<li class="col-tags col-md-8" style="width: 210px; padding-bottom: 5px; padding-top: 5px; height: 235px;">
										<dl>
											<dt style="font-size: 15px; margin-top: 10px">옵션 선택</dt>
											<dd>
												<c:forEach items="${sitterOption}" var="sitterOptionList">
													<div class="btn-group col-md-2" data-toggle="buttons" style="width: 100px; padding-bottom: 5px; padding-left: 20px">
														<label class="btn btn-xs btn-block" style="width: 70px; border-bottom-width: 5px;"> <input type="checkbox" name="tag"
															autocomplete="off" value="${sitterOptionList}"
														>${sitterOptionList}
														</label>
													</div>
												</c:forEach>
											</dd>
										</dl>
									</li>
								</ul>
							</div>
							<div class="contents-form-price-detail">
								<dl style="border-top: 1px solid #F0F0F0; margin-bottom: 0px; height: 28px;">
									<dt>
										<span id="reservateDay"></span>
									</dt>
									<dd>
										<span id="reservateDayPrice"></span>
									</dd>
								</dl>
								<dl style="border-top: 1px solid #F0F0F0; margin-bottom: 0px; height: 28px;">
									<dt>
										<span>초과금액</span>
									</dt>
									<dd>
										<span id="checkOption"></span>
									</dd>
								</dl>
								<dl style="border-top: 1px solid #F0F0F0; margin-bottom: 1px; height: 28px;">
									<dt>
										반려견추가 <input style="height: 20px; margin-left: 5px;" type="number" value="0" min="0" max="5" maxlength="1" id="petAcount" name=""/>
									</dt>
									<dd>
										<span id="petAcountPrice"></span>
									</dd>
								</dl>
								<dl style="border-top: 1px solid #F0F0F0; margin-bottom: 0px; height: 28px;">
									<dt style="font-weight: bold" >총 금액</dt>
									<dd>
										<span id="totalPrice" style="font-weight: bold">원</span>
									</dd>
								</dl>
							</div>
							<input type="button" class="btn" style="background-color: #18777F; color: white;" value="예약요청하기" onclick="sendReservation()"> <a href="QA링크"
								class="btn btn-default"
							>예약문의하기</a>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="profile-image-box">
			<div class="contents-thum-sitter">
				<div class="thum-wrap-sitter thum-wrap01-sitter ">
					<img style="width: 100%;" src="${pageContext.request.contextPath}/resources/lib/save/${sitterImgList[0].sitterImgUrl}" class="img-responsive">
				</div>
			</div>
			<div class="col-lg-6">
				<dl>
					<dt style="margin-left: 70px; width: 200px; color: #7d7d7d;">${sitterDTO.sitterName}</dt>
					<dd style="margin-left: 70px; width: 400px; color: #7d7d7d;">
						<small>${sitterDTO.sitterAddr}</small>
					</dd>
				</dl>
			</div>
			<div>
				<dl>
					<dt style="margin-left: 300px; width: 200px; color: #7d7d7d; font-weight: lighter;">
						<i class="fa fa-star"></i> ${sitterDTO.sitterGrade} rating
					</dt>
					<dd style="margin-left: 300px;">
						<span class="span-price text-center">1박 ${sitterDTO.sitterBasisPrice}만원</span>
					</dd>
				</dl>
			</div>
		</div>
		<div class="profile-image-box">
			<span style="color: #7d7d7d;"><i class="fa fa-paw"></i> 펫시터 돌보기 소개</span>
			<p>
			<div style="border: 1px solid #cccccc; width: 560px; height: 113px; padding: 10px 10px; margin-top: 10px;">${sitterDTO.sitterIntroduce}</div>
		</div>
		<div class="profile-image-box">
			<span style="color: #7d7d7d;"><i class="fa fa-paw"></i> 후기 </span>
			<c:forEach items="${sitterReviewList}" var="srDTO">
				<div class="review-box">
					<span style="color: #7d7d7d;"> ${srDTO.ownerId} 님                     
					<p><span><small> 평점 : <c:forEach begin="1" end="${srDTO.sitterReviewGrade}">
									<i class="fa fa-star" style="color: #18777F"></i>
								</c:forEach> <c:forEach begin="${srDTO.sitterReviewGrade}" end="4">
									<i class="fa fa-star-o" style="color: #18777F"></i>
								</c:forEach>
							</small>
							</span>
						<p>
						<p>내용 : ${srDTO.sitterReviewContent}
						<p>
							<small>작성일 : ${srDTO.sitterReviewWriteday}</small>
					</span>
				</div>
			</c:forEach>
		</div>
		<p>
	</form>
</body>