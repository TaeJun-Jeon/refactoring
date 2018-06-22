<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/board/select.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/board/search.css">
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/petProfile.css">
<%-- <link href="${pageContext.request.contextPath}/resources/lib/css/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/petProfile.css" rel="stylesheet" type="text/css"> --%>
<script>

   $(document).ready(function() {
      $("#mytable #checkall").click(function() {
         if ($("#mytable #checkall").is(':checked')) {
            $("#mytable input[type=checkbox]").each(function() {
               $(this).prop("checked", true);
            });

         } else {
            $("#mytable input[type=checkbox]").each(function() {
               $(this).prop("checked", false);
            });
         }
      });

      $("[data-toggle=tooltip]").tooltip();
   
	   /* $("#delete").click(function() {
		   alert(1)
			var inputString = prompt('비밀번호를 입력해 주세요.', ''); 
			alert(inputString);
			
	   }); */
	   
	   $(document).on("click","#delete",function(){
		   
		   var id = $(this).parent().parent().find('input[name=reviewId]').val()
	  	   var pwd = $(this).parent().parent().find('input[name=reviewPwd]').val()
		   var password = prompt("비밀번호를 입력하세요");
		   
		   if(password == pwd){
			   $.ajax({
					  type:"post",
					  url:"${pageContext.request.contextPath}/review/deleteReview",
					  data:"${_csrf.parameterName}=${_csrf.token}&reviewId="+id,
					  dataType:"text",
					  success:function(result){
						  alert("삭제되었습니다");
						  location.reload();
					  },
					  error: function(err){
						  console.log(err)
					  }
				  })
		   }else{
			   alert("비밀번호가 일치하지 않습니다")
		   }
		  
	   })
			$("#pagingPrev").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/review/allSelect?pageNum=${pagingUtil.curPage}")
				$("#pagingForm").submit();
			})
			
			$("#paingNext").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/review/allSelect?pageNum=${pagingUtil.curPage+2}")
				$("#pagingForm").submit();
			})
			
			$(".pageNum").bind("click",function(){
				$("#pagingForm").attr("action","${pageContext.request.contextPath}/review/allSelect?pageNum="+$(this).text());
				$("#pagingForm").submit();
			})
	   
   });
   


</script>
</head>
<body>
   <h1>REVIEW</h1>
   <p>
   <div class="container">
      <div class="row">
         <div class="col-md-12" style="margin-top: 50px;">
            <h4>REVIEW</h4>
            <div align="right">
               <input type="button" class="btn btn-default btn-xs" value="create new" onclick="location.href='${pageContext.request.contextPath}/review/writeForm'">
            </div>
            <div class="table-responsive">
               <table class="table table-bordred table-striped">
                  <thead>
                     
                     <td align="center">NO.</td>
                     <td align="center">제목</td>
                     <td align="center">작성자</td>
                     <td align="center">작성일</td>
                     <td align="center">조회수</td>
                     <td align="center">
                        <i class="fa fa-paw"></i>
                     </td>
                  </thead>
                  <tbody>
                  	<c:choose>
                		<c:when test="${empty requestScope.list}">
							<tr>
								<td colspan="8">
									<p align="center">
										<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
									</p>
								</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${requestScope.list}" var="ReviewDTO" varStatus="status">
								 <tr onmouseover="this.style.background='#eaeaea'" onmouseout="this.style.background='white'">
							        <td bgcolor="">
							            <p align="center">${status.count}<span style="font-size:9pt;">
							            </span></p>
							        </td>
							        <td bgcolor="">
										<p align="center"><span style="font-size:9pt;">
										<a href="${pageContext.request.contextPath}/review/readReview?reviewId=${ReviewDTO.reviewId}">
										  ${ReviewDTO.reviewTitle}
										</a>
										</span></p>
							        </td>
							        <td bgcolor="">
							            <p align="center"><span style="font-size:9pt;">
							            ${ReviewDTO.ownerId}</span></p>
							        </td>
							        <td bgcolor="">
							            <p align="center"><span style="font-size:9pt;">
							            ${ReviewDTO.reviewWriteday}</span></p>
							        </td>
							        <td bgcolor="">
							            <p align="center"><span style="font-size:9pt;">
							            ${ReviewDTO.reviewReadnum}</span></p>
							        </td>
							        
							        <td align="center">
							    
										<button class="btn btn-primary btn-xs" data-title="Edit" id="update" onclick="location.href='${pageContext.request.contextPath}/review/updateForm?reviewId=${ReviewDTO.reviewId}'">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										<button class="btn btn-danger btn-xs" id="delete" data-title="Delete" >
											<span class="glyphicon glyphicon-trash"></span>
										</button>
											<%-- <button class="btn btn-danger btn-xs" id="delete"
												data-title="Delete"
												onclick="location.href='${pageContext.request.contextPath}/review/delete?reviewId=${ReviewDTO.reviewId}'">
												<span class="glyphicon glyphicon-trash"></span>
											</button>  --%>
									</td>
									
									<td><input type="hidden" name="reviewId" id="reviewId" value="${ReviewDTO.reviewId}"></td>
							    	<td><input type="hidden" name="reviewPwd" id="reviewPwd" value="${ReviewDTO.reviewPwd}"></td>
							    
							    </tr>
							</c:forEach>
						</c:otherwise>
                  	</c:choose>
                  </tbody>
               </table>
               <div class="clearfix"></div>
               <div class="col-md-6 text-center">
					<nav>
					<form action="" method="post" id="pagingForm">
					<ul class="pagination sitter-pagination">
						<li class="page-item"><a class="page-link" id="pagingPrev" href="#">Previous</a></li>
						<c:forEach begin="${pagingUtil.startPage}" end="${pagingUtil.endPage}" varStatus="status">
							<c:choose>
								<c:when test="${pagingUtil.startPage+status.count-1 eq pagingUtil.curPage+1}">
									<li class="page-item active"><a class="page-link pageNumNow" id="pageElement">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:when test="${pagingUtil.startPage+status.count-1 gt pagingUtil.totalPage}">
									<li class="page-item disabled"><a class="page-link pageNumDisabled" id="pageElement">${pagingUtil.startPage+status.count-1}</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link pageNum" id="pageElement" href="#">${pagingUtil.startPage+status.count-1}</a></li>
										<input type="hidden" name="pagehidden" id="pagehidden" value="${pagingUtil.startPage+status.count-1}">
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<li class="page-item"><a class="page-link" id="paingNext" href="#">Next</a></li>
					</ul>
					<input type="hidden" name="optionSelect" id="optionSelect2">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					</form>
					</nav>
				</div>
			</div>
		</div>
               <p>
                  <select class="form-control" style="width: 77px; height: 30px; font-size: 10px;">
                     <option value="">제목</option>
                     <option value="">내용</option>
                     <option value="">글쓴이</option>
                     <option value="">아이디</option>
                  </select>
               <div id="custom-search-input" style="width: 200px;\">
                  <div class="input-group col-md-12" style="width: 100px; margin-bottom:30px; ">
                     <input type="text" style="width: 254px; height: 32px; boarder-top-width: 1px; margin-top:10px; font-size: 10px;" class="form-control input-lg" placeholder="입력해주세요" /> <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button"style="height:32px; margin-top:10px; margin-left:-10; width:49px; padding-top:0px; padding-bottom:0px;">
                           <i class="fa fa-paw"></i>
                        </button>
                     </span>
                  </div>
               </div>
               </p>
            </div>
         </div>
      </div>
   </div>


<body>