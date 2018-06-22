
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
	center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	level : 3
// 지도의 확대 레벨
};

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption);

// 지도에 확대 축소 컨트롤을 생성한다
var zoomControl = new daum.maps.ZoomControl();

// 지도의 우측에 확대 축소 컨트롤을 추가한다
map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

/** Scroll 따라다니는 지도 **/

$(function() {
	var pageHeight = $(document).height()
	var headerHeight = $(".option-filter-container").height();
	var contentHeight = $("#content").height();
	var footerHeight = $("#footer").height();
	var mapHeight = $("#map").height();
	var minHeight = headerHeight;
	//var maxHeight = pageHeight-footerHeight-mapHeight;
	var maxHeight = contentHeight-mapHeight-275;
	$(window).scroll(function() {
		var scrollPosition = $(document).scrollTop();
		//var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
		var mapPosition = scrollPosition-150;
		var maxMap = maxHeight-300;
		if (scrollPosition > minHeight && scrollPosition<maxHeight) {
			$(".div-map").stop().animate({
				"top" : mapPosition
			}, 500);
		} else if (scrollPosition > maxHeight) { // 지도위치가 0보다 클경우
			$(".div-map").stop().animate({
				"top" : maxHeight
			}, 500);
		}else{
			$(".div-map").stop().animate({
				"top" : 0
			}, 500);
		}
	});
});//function 끝
