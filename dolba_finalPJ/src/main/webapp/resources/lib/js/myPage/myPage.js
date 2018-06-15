/**
 *  myPage javascript
 */


/* ----------------------------------------  .js파일에서 Jquery코드를 사용할 수 있도록 해주는 코드(시작)  ----------------------------------------------  */

	// Anonymous "self-invoking" function
(function() {
    var startingTime = new Date().getTime();
    // Load the script
    var script = document.createElement("SCRIPT");
    script.src = 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js';
    script.type = 'text/javascript';
    document.getElementsByTagName("head")[0].appendChild(script);

    // Poll for jQuery to come into existance
    var checkReady = function(callback) {
        if (window.jQuery) {
            callback(jQuery);
        }
        else {
            window.setTimeout(function() { checkReady(callback); }, 20);
        }
    };

    // Start polling...
    /*checkReady(function($) {
        $(function() {
            var endingTime = new Date().getTime();
            var tookTime = endingTime - startingTime;
           window.alert("jQuery is loaded, after " + tookTime + " milliseconds!");
        });
    });*/
})();



/* ----------------------------------------  .js파일에서 Jquery코드를 사용할 수 있도록 해주는 코드 (끝)  ----------------------------------------------  */

	$(document).ready(function() {
						$("#mytable #checkall").click(function() {
											if ($("#mytable #checkall").is(':checked')) {
												$("#mytable input[type=checkbox]").each(function() {
																	$(this).prop("checked",true);
												});

											} else {
												$("#mytable input[type=checkbox]").each(function() {
																	$(this).prop("unchecked",false);
												});
											}
										});

						$("[data-toggle=tooltip]").tooltip();

						var ownerCallTab = document.getElementById('ownerCallTab');
						ownerCallTab.onclick = function() {
							$.ajax({
										type : "post",//전송방식
										url : "${pageContext.request.contextPath}/owner/allSelectCall", //서버요청주소
										dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
										success : function(result) {//개수|단어,단어,단어,...
											$("#callBeforeTable tr:gt(0)").remove();
											var str = "";
											var set = 1;
											$.each(result,function(index,item) {
												str += "<tbody>";
												str += "<tr>";
												str += "<td><input type='checkbox' class='checkthis'/></td>";
												str += "<td><a href='#'>"+ set+++ "</a></td>";
												str += "<td>"+ item.callReservateStart+ "</td>";
												str += "<td>"+ item.callReservateEnd+ "</td>";
												str += "<td>"+ item.sitterId+ "</td>";
												str += "<td id='hiddenTd'>"+ item.callId+ "</td>";
												str += "<td><p data-placement='top' data-toggle='tooltip' title='수락'><button class='btn btn-primary btn-xs' data-title='Edit' value='수락' id='ok' ><span class='glyphicon glyphicon-pencil'></span></button></p></td>";
												str += "<td><p data-placement='top' data-toggle='tooltip' title='거절'><button class='btn btn-danger btn-xs' data-title='Delete' value='거절' id='reject' ><span class='glyphicon glyphicon-trash'></span></button></p></td>";

												str += "</tr>";
												str += "</tbody>";
											

								})

											$('#callBeforeTable').append(str);

										},
										error : function(err) {
											console.log("에러 발생 : " + err);
										}
									});

						}
						
						var ownerCallTabAfter= document.getElementById('ownerCallTabAfter');
						ownerCallTabAfter.onclick = function() {
							$.ajax({
										type : "post",//전송방식
										url : "${pageContext.request.contextPath}/owner/allSelectCallApproval", //서버요청주소
										dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
										success : function(result) {//개수|단어,단어,단어,...
											$("#callAfterTable tr:gt(0)").remove();
											var str = "";
											var set = 1;
											$.each(result,function(index,item) {
												str += "<tbody>";
												str += "<tr>";
												str += "<td><input type='checkbox' class='checkthis'/></td>";
												str += "<td><a href='#'>"+ set+++ "</a></td>";
												str += "<td>"+ item.callReservateStart+ "</td>";
												str += "<td>"+ item.callReservateEnd+ "</td>";
												str += "<td>"+ item.sitterId+ "</td>";
												str += "</tr>";
												str += "</tbody>";
												
												/* $('#callCalendar').fullCalendar(
														{
															defaultDate : new Date(),
															editable : false,
															eventLimit : true, // allow "more" link when too many events
															events : [ {
																title : 'All Day Event',
																start : '2018-03-01'
															}, {
																title : '정한별',
																start : '2018-06-09',
																end : '2018-06-13'
															}, {
																title : '정한별',
																start : '2018-06-09',
																end : '2018-06-11'
															} ],
															eventClick : function(event) {
																// opens events in a popup window
																//window.open("/owner/callRead", 'gcalevent', 'width=1000,height=800');
																location.href = "${pageContext.request.contextPath}/owner/callRead";
																return false;
															}
														}); */
														
												 $('#callCalendar').fullCalendar({
												    	defaultDate : new Date(),
												    	editable : false,
												    	eventLimit : true, // allow "more" link when too many events
												   
												    	 events: function (start, end, timezone, callback) {
												        	 $.ajax({
													          url: '${pageContext.request.contextPath}/owner/allSelectCallApproval',
													          type: "GET",
													          async:false,
													          datatype: 'json',
													          success: function(data){
													             // var json = data.calendarList;
													              var events = [];
													              
													              $.each(data, function(index,item) {
													               
													               var startTime = item.callReservateStart.split(" ");
													               var endTime = item.callReservateEnd.split(" ");
													               console.log(startTime);
													               events.push({title: item.sitterId, start: startTime[0], end: endTime[0]});
													           });
													              callback(events);
													          },
													         });
													     },
													     eventAfterRender: function (event, element, view) {
													     },
													     dayClick: function(date, jsEvent, view) {
													      return false;
													     },
													     eventClick: function(calEvent, jsEvent, view) {
													      return false;
												  }
												    });
											

											})

												$('#callAfterTable').append(str);

										},
											error : function(err) {
												console.log("에러 발생 : " + err);
										}
									});

						}

						var ownerRequestTab = document.getElementById('ownerRequestTab');
						ownerRequestTab.onclick = function() {
							$.ajax({
										type : "post",//전송방식
										url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequest", //서버요청주소
										dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
										success : function(result) {//개수|단어,단어,단어,...
											$("#requestBeforeTable tr:gt(0)").remove();
											var str = "";
											var set = 1;
											$.each(result,function(index,item) {
												str += "<tbody>";
												str += "<tr>";
												str += "<td><input type='checkbox' class='checkthis'/></td>";
												str += "<td><a href='#'>"+ set+++ "</a></td>";
												str += "<td>"+ item.ownerRequestStart+ "</td>";
												str += "<td>"+ item.ownerRequestEnd+ "</td>";
												str += "<td>"+ item.sitterId+ "</td>";
												str += "<td>"+ item.sitterApproval+ "</td>";
												str += "</tr>";
												str += "</tbody>";
											})
				
											$('#requestBeforeTable').append(str);

										},
										error : function(err) {
											console.log("에러 발생 : " + err);
										}
									});

						} 
						
						var ownerRequestTabAfter = document.getElementById('ownerRequestTabAfter');
						ownerRequestTabAfter.onclick =function(){
							$.ajax({
								type : "post",//전송방식
								url : "${pageContext.request.contextPath}/owner/allSelectOwnerRequestApproval", //서버요청주소
								dataType : "json", //서버가 front로 보내주는 데이터 타입(text,html,xml,json)
								success : function(result) {//개수|단어,단어,단어,...
									$("#requestAfterTable tr:gt(0)").remove();
									var str = "";
									var set = 1;
									$.each(result,function(index,item) {
										str += "<tbody>";
										str += "<tr>";
										str += "<td><input type='checkbox' class='checkthis'/></td>";
										str += "<td><a href='#'>"+ set+++ "</a></td>";
										str += "<td>"+ item.ownerRequestStart+ "</td>";
										str += "<td>"+ item.ownerRequestEnd+ "</td>";
										str += "<td>"+ item.sitterId+ "</td>";
										str += "</tr>";
										str += "</tbody>";
										
										/* $('#requestCalendar').fullCalendar(
												{
													defaultDate : new Date(),
													editable : false,
													eventLimit : true, // allow "more" link when too many events
													events : [ {
														title : 'All Day Event',
														start : '2018-03-01'
													}, {
														title : '정한별',
														start : '2018-06-05',
														end : '2018-06-09'
													}, {
														title : '정한별',
														start : '2018-06-09',
														end : '2018-06-11'
													} ],
													eventClick : function(event) {
														// opens events in a popup window
														//window.open("/owner/callRead", 'gcalevent', 'width=1000,height=800');
														location.href = "${pageContext.request.contextPath}/owner/callRead";
														return false;
													}
												}); */
												
										 $('#requestCalendar').fullCalendar({
										    	defaultDate : new Date(),
										    	editable : false,
										    	eventLimit : true, // allow "more" link when too many events
										   
										    	 events: function (start, end, timezone, callback) {
										        	 $.ajax({
											          url: '${pageContext.request.contextPath}/owner/allSelectOwnerRequestApproval',
											          type: "GET",
											          async:false,
											          datatype: 'json',
											          success: function(data){
											             // var json = data.calendarList;
											              var events = [];
											              
											              $.each(data, function(index,item) {
											               
											               var startTime = item.ownerRequestStart.split(" ");
											               var endTime = item.ownerRequestEnd.split(" ");
											               console.log(startTime);
											               events.push({title: item.sitterId, start: startTime[0], end: endTime[0]});
											           });
											              callback(events);
											          },
											         });
											     },
											     eventAfterRender: function (event, element, view) {
											     },
											     dayClick: function(date, jsEvent, view) {
											      return false;
											     },
											     eventClick: function(calEvent, jsEvent, view) {
											      return false;
										  }
										    });
									})
		
									$('#requestAfterTable').append(str);

								},
								error : function(err) {
									console.log("에러 발생 : " + err);
								}
							});
						}

						$(document).on("click",	"#ok",function() {
											
							var result = confirm("수락하시겠습니까?");
							if(result){
								var id = $(this).parent().parent().parent().find("td:nth-child(6)").text();
						$.ajax({
									type : "post", //전송방식
									url : "${pageContext.request.contextPath}/owner/updateOwnerApproval", //서버주소
									data : "callId="+ id +"&state=y",//서버에게 보낼 parameter 정보
									dataType : "text", //서버가 front로 보내주는 데이터 타입 (text ,html, xml, json)
									success : function(result) {
										alert("예약 수락되었습니다");
										location.reload();
									},
									error : function(err) {
										console.log(err)
									}
								})
								
							}
										
						})
						
						$(document).on("click",	"#reject",function() {
											
							var result = confirm("수락하시겠습니까?");
							if(result){
								var id = $(this).parent().parent().parent().find("td:nth-child(6)").text();
								$.ajax({
									type : "post", //전송방식
									url : "${pageContext.request.contextPath}/owner/updateOwnerApproval", //서버주소
									data : "callId="+ id +"&state=x",//서버에게 보낼 parameter 정보
									dataType : "text", //서버가 front로 보내주는 데이터 타입 (text ,html, xml, json)
									success : function(result) {
										alert("예약 거절되었습니다");
										location.reload();
									},
									error : function(err) {
										console.log(err)
									}
								})
								
							}
										
						})

					})