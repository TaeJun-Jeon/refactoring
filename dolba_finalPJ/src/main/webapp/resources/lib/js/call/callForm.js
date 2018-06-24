$(function(){
	var startDateString;
	var endDateString;
	var startDateInt;
	var endDateInt;
	var startDateObj = new Date();
	var endDateObj = new Date();
	var currDay = 24 * 60 * 60 * 1000;
    $("#datepickerStart").datepicker({
    	dateFormat : 'yy-mm-dd',
    	showAnim: "slideDown",
    	yearRange:"2018:",
    	beforeShowDay: noBefore,
    	onSelect: function(){
    		startDateString = $("#datepickerStart").val();
    		startDateInt = startDateString.split("-")[0]+startDateString.split("-")[1]+startDateString.split("-")[2];
    		startDateObj = $( this ).datepicker( "getDate" );
    		$( "#datepickerEnd" ).datepicker( "option", "minDate", startDateObj );
    		if(endDateString != null){
    			if(startDateObj >= endDateObj){
    				alert("종료일을 다시 설정 해주세요");
    				endDateObj = $( this ).datepicker( "getDate" );
    			}
    		}
    	},
    	orientation: "top"
    });
    $("#datepickerEnd").datepicker({
    	dateFormat : 'yy-mm-dd',
    	showAnim: "slideDown",
		yearRange:"2018:",
		beforeShowDay: noBefore,
		onSelect: function(){
			if(startDateString == null){
				alert("시작일을 골라주세요");
				$("#datepickerStart").focus();
				$("#datepickerEnd").val("");
			}
			endDateString = $("#datepickerEnd").val();
			endDateInt = endDateString.split("-")[0]+endDateString.split("-")[1]+endDateString.split("-")[2];
			endDateObj = $( this ).datepicker( "getDate" );
		},
    	orientation: "top"
    });
    
    $(document).on("click","#callSubmit",function(){
		if($("#datepickerStart").val()== ""){
			alert("날짜를 확인하여 주세요");
			$("#datepickerStart").focus();
		}
		else if($("#datepickerEnd").val()== ""){
			alert("날짜를 확인하여 주세요");
			$("#datepickerEnd").focus();
		}
		else if($("#callPrice").val() == ""){
			alert("금액을 확인하여 주세요");
			$("#callPrice").focus();
		}else{
			var optionTags = [];
			$("#optionId:checked").each(function() {
				//optionTags[$(this).val()] = $(this).next().text();
				optionTags.push($(this).val());
			});
			var petCount = 1;
			petCount += parseInt($("#petAdd option:selected").val());
			
			var basePrice = 0;
			basePrice = parseInt($("#callPrice").val());
			
			var per;
			per = (endDateObj-startDateObj)/currDay;
			
			var price;
			price = basePrice*per*petCount + optionTags.length*2000;
			
			$("#callPetcount").val(petCount);
			$("#callTotalPrice").val(price);
			$("#optionSelect").val(optionTags);
			$("#callFormSubmit").submit();
		}
	})
    
    
})

// 특정날짜들 배열
var disabledDays = ["2018-6-23","2018-6-24","2018-6-26"];

$(function(){
	currentDate = $( "#datepickerStart" ).datepicker( "getDate" );
})

// 주말(토, 일요일) 선택 막기
function noWeekendsOrHolidays(date) {
    var noWeekend = jQuery.datepicker.noWeekends(date);
    return noWeekend[0] ? [true] : noWeekend;
}
 
// 일요일만 선택 막기
function noSundays(date) {
  return [date.getDay() != 0, ''];
}
 
// 이전 날짜들은 선택막기
function noBefore(date){
    //if (date < new Date())
    if (date < new Date())
        return [false];
    return [true];
}
 
// 특정일 선택막기
function disableAllTheseDays(date) {
    var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
    for (i = 0; i < disabledDays.length; i++) {
        if($.inArray(y + '-' +(m+1) + '-' + d,disabledDays) != -1) {
            return [false];
        }
    }
    return [true];
}