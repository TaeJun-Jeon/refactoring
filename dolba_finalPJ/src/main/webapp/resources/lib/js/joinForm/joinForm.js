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
    checkReady(function($) {
        $(function() {
            var endingTime = new Date().getTime();
            var tookTime = endingTime - startingTime;
            /* window.alert("jQuery is loaded, after " + tookTime + " milliseconds!");*/
        });
    });
})();



/* ----------------------------------------  .js파일에서 Jquery코드를 사용할 수 있도록 해주는 코드 (끝)  ----------------------------------------------  */

/*
    $('#myTab').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })
    $('#myTab:first').tab('show')


*/


    $(document).ready(function (){

        $("#fileInputOwner").on('change', function(){  // 값이 변경되면
            if(window.FileReader){  // modern browser
                var filename = $(this)[0].files[0].name;
                console.log($(this)[0].files[0])
            } else {  // old IE
                var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
            }
            // 추출한 파일명 삽입
            $("#ownerFnameFileOnly").val(filename);
        });
        
        $("#fileInputSitter").on('change', function(){  // 값이 변경되면
            if(window.FileReader){  // modern browser
                var filename = $(this)[0].files[0].name;
            } else {  // old IE
                var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
            }
            // 추출한 파일명 삽입
            $("#userfileSitter").val(filename);
        });

        $("#certInput").on('change', function(){  // 값이 변경되면
            if(window.FileReader){  // modern browser
                var filename = $(this)[0].files[0].name;
            } else {  // old IE
                var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
            }
            // 추출한 파일명 삽입
            $("#certFile").val(filename);
        });



        /* -------------------------유효성체크---------------------------- */
        $('#ownerEmail2').change(function(){
            $("#ownerEmail2 option:selected").each(function () {

                if($(this).val()== '1'){ //직접입력일 경우
                    $("#ownerEmail_empty").val('');                        //값 초기화
                    $("#ownerEmail_empty").attr("disabled",false); //활성화
                }else{ //직접입력이 아닐경우
                    $("#ownerEmail_empty").val($(this).text());      //선택값 입력
                    $("#ownerEmail_empty").attr("disabled",true); //비활성화
                }
            });
        });
        
        $('#sitterEmail2').change(function(){
            $("#sitterEmail2 option:selected").each(function () {

                if($(this).val()== '1'){ //직접입력일 경우
                    $("#sitterEmail_empty").val('');                        //값 초기화
                    $("#sitterEmail_empty").attr("disabled",false); //활성화
                }else{ //직접입력이 아닐경우
                    $("#sitterEmail_empty").val($(this).text());      //선택값 입력
                    $("#sitterEmail_empty").attr("disabled",true); //비활성화
                }
            });
        });


        $('#ownerForm').click(function(){

            if($("#ownerId").val()==""){
                alert("아이디를 입력해주세요")
                $("#ownerId").focus();
                return false;
            }

            if($("#ownerPassword").val()==""){
                alert("비밀번호를 입력해주세요")
                $("#ownerPassword").focus();
                return false;
            }

            if($("#ownerName").val()==""){
                alert("이름을 입력해주세요")
                $("#ownerName").focus();
                return false;
            }

            if($("#ownerEmail1").val()==""){
                alert("이메일을 입력해주세요")
                $("#ownerEmail1").focus();
                return false;
            }
            if($("#ownerEmail2").val()==""){
                alert("이메일을 입력해주세요")
                $("#ownerEmail2").focus();
                return false;
            }
            /* if($("#addr").val()==""){
               alert("주소를 입력해주세요")
               $("#addr").focus();
               return false;
            } */
            if($("#ownerDetailAddr").val()==""){
                alert("상세주소를 입력해주세요")
                $("#ownerDetailAddr").focus();
                return false;
            }

        })
        
        /* sitter 유효성 체크 */
         $('#sitterForm').click(function(){

            if($("#sitterId").val()==""){
                alert("아이디를 입력해주세요")
                $("#sitterId").focus();
                return false;
            }

            if($("#sitterPassword").val()==""){
                alert("비밀번호를 입력해주세요")
                $("#sitterPassword").focus();
                return false;
            }

            if($("#sitterName").val()==""){
                alert("이름을 입력해주세요")
                $("#sitterName").focus();
                return false;
            }

            if($("#sitterEmail1").val()==""){
                alert("이메일을 입력해주세요")
                $("#sitterEmail1").focus();
                return false;
            }
            if($("#sitterEmail2").val()==""){
                alert("이메일을 입력해주세요")
                $("#sitterEmail2").focus();
                return false;
            }
            /* if($("#addr").val()==""){
               alert("주소를 입력해주세요")
               $("#addr").focus();
               return false;
            } */
            if($("#sitterDetailAddr").val()==""){
                alert("상세주소를 입력해주세요")
                $("#sitterDetailAddr").focus();
                return false;
            }

        })
    })