<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>
</head>
<script type="text/javascript">
$(document).ready(function (){

    $("#fileInputOwner").on('change', function(){  // 값이 변경되면
        if(window.FileReader){  // modern browser
            var filename = $(this)[0].files[0].name;
            console.log($(this)[0].files[0])
        } else {  // old IE
            var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
        }
        // 추출한 파일명 삽입
        $("#petFnameFileOnly").val(filename);
    });
});
    </script>
<body>
	<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Company Name</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/owner/updatePetInfo?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Pet Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="petName" id="petName"  value="${petDTO.petName}"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Pet Species</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="petSpecies" id="petSpecies"  value="${petDTO.petSpecies}"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Pet Illness</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="petIllness" id="petIllness"  value="${petDTO.petIllness}"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Pet Weight</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="petWeight" id="petWeight"  value="${petDTO.petWeight}"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Pet Gender</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="petGender" id="petGender"  value="${petDTO.petGender}" readonly/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Pet Image</label>
							<div class="cols-sm-10">
								<div class="input-group">
                                    <div class="bootstrap-filestyle joinform-size input-group">
                                        <input type="file"  id="fileInputOwner" name="file" filestyle=""data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="joinform-size form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
                                    
                                        <input type="text" id="petFnameFileOnly" class="joinform-size form-control" name="petFnameFileOnly" value="" readonly placeholder="${petDTO.petFname}">
                                        <span class="group-span-filestyle input-group-btn" tabindex="0">
				                            <label for="fileInputOwner" class="btn btn-default ">
				                                <span class="fa fa-upload"></span>
				                            </label>
				                       </span>
                                    </div>
								</div>
							</div>
						</div>
						<input type="hidden" name="petId" value="${petDTO.petId}">	
						<div class="form-group ">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">수정하기</button>
						</div>
						
					</form>
				</div>
			</div>
		</div>

	<!-- 	<script type="text/javascript" src="assets/js/bootstrap.js"></script> -->
	</body>
</body>
</html>