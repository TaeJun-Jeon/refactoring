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

    $("#petImg").on('change', function(){  // 값이 변경되면
        if(window.FileReader){  // modern browser
            var filename = $(this)[0].files[0].name;
        } else {  // old IE
            var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
        }
        // 추출한 파일명 삽입
        $("#petFname").val(filename);
    });



    /* -------------------------유효성체크---------------------------- */

    $('#petEnrollForm').click(function(){

        if($("#petName").val()==""){
            alert("이름을 입력해주세요")
            $("#petName").focus();
            return false;
        }

        if($("#petSpecies").val()==""){
            alert("품종을 입력해주세요")
            $("#petSpecies").focus();
            return false;
        }

        if($("#petAge").val()==""){
            alert("나이를 입력해주세요")
            $("#petAge").focus();
            return false;
        }

        if($("#petSize").val()=="0"){
            alert("견종크기를 선택해주세요")
            $("#petSize").focus();
            return false;
        }
        if($("#petWeight").val()==""){
            alert("몸무게를 입력해주세요")
            $("#petWeight").focus();
            return false;
        }

    });


    $('.required').change(function() {
        var self = $(this);
        if (self.is(':checked')) {
            var target = self.closest('.contents-detail').find('textarea');
            if(target.length) {
                if (self.val() == 'Y') {
                    target.prop('disabled', false);
                } else {
                    target.prop('disabled', true).val('');
                }
            }
        }
    });

});


