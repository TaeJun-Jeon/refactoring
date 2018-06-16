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









    $(document).ready(function (){

        $("#fileInput").on('change', function(){  // 값이 변경되면
            if(window.FileReader){  // modern browser
                var filename = $(this)[0].files[0].name;
            } else {  // old IE
                var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
            }
            // 추출한 파일명 삽입
            $("#userfile").val(filename);
        });

        /* -------------------------유효성체크---------------------------- */
        $('#selectEmail').change(function(){
            $("#selectEmail option:selected").each(function () {

                if($(this).val()== '1'){ //직접입력일 경우
                    $("#str_email02").val('');                        //값 초기화
                    $("#str_email02").attr("disabled",false); //활성화
                }else{ //직접입력이 아닐경우
                    $("#str_email02").val($(this).text());      //선택값 입력
                    $("#str_email02").attr("disabled",true); //비활성화
                }
            });
        });


        $('button[type=submit]').click(function(){

            if($("#userId").val()==""){
                alert("아이디를 입력해주세요")
                $("#userId").focus();
                return false;
            }
            if($("#password").val()==""){
                alert("비밀번호를 입력해주세요")
                $("#password").focus();
                return false;
            }

            if($("#ownerName").val()==""){
                alert("이름을 입력해주세요")
                $("#ownerName").focus();
                return false;
            }
            

            if($("#ownerAddr").val()==""){
                alert("주소를 입력해주세요")
                $("#ownerAddr").focus();
                return false;
            }
            
            if($("#ownerDetailAddr").val()==""){
                alert("상세주소를 입력해주세요")
                $("#ownerDetailAddr").focus();
                return false;
            }
            
            if($("#phone").val()==""){
                alert("휴대전화번호를 입력해주세요")
                $("#phone").focus();
                return false;
            }

            if($("#str_email01").val()==""){
                alert("이메일을 입력해주세요")
                $("#email1").focus();
                return false;
            }
            if($("#str_email02").val()==""){
                alert("이메일을 입력해주세요")
                $("#email1").focus();
                return false;
            }
            
            /* if($("#addr").val()==""){
               alert("주소를 입력해주세요")
               $("#addr").focus();
               return false;
            } */
         

        })
    })