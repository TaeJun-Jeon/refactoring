<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.js"></script>

<title>Insert title here</title>
</head>
 <style type="text/css">  
       #instaPics {  
            max-width: 320px;  
            overflow: hidden;  
       }  
       .insta-box {  
            position: relative;  
            width: 120px;  
            height: 120px;  
            float: left;  
            margin: 4px;  
            border: 1px solid #ddd;  
       }  
       .image-layer {  
            overflow: hidden;  
            width: 100%;  
            height: 100%;  
       }  
       .image-layer img {  
            max-width: 100%;  
       }  
       .caption-layer {  
            display: none;  
            position: absolute;  
            top: 0;  
            background: rgba(255,255,255,0.8);  
            height: 100%;  
            width: 100%;  
            padding: 10px;  
            box-sizing: border-box;  
            font-size: 10px;  
            color: #333;  
       }  
       .insta-likes {  
            float: right;  
       }  
       </style>  
<body>
<div id="instaPics"></div>
</body>

<script type="text/javascript">  
   jQuery(function($) {  
        var tocken = "3117756223.738af40.49aef7679f9743da9417355fcbaba4f0"; /* Access Tocken 입력 */  
        var count = "6";  
        $.ajax({  
            type: "GET",  
            dataType: "jsonp",  
            cache: false,  
            url: "https://api.instagram.com/v1/users/self/media/recent/?access_token=" + tocken + "&count=" + count,  
            success: function(response) {  
             if ( response.data.length > 0 ) {  
                  for(var i = 0; i < response.data.length; i++) {
                	  
                       var insta = '<div class="insta-box">';  
                       insta += "<a target='_blank' href='" + response.data[i].link + "'>";  
                       insta += "<div class'image-layer'>";  
                       //insta += "<img src='" + response.data[i].images.thumbnail.url + "'>";  
                       insta += '<img src="' + response.data[i].images.thumbnail.url + '">';  
                       insta += "</div>";  
                       //console.log(response.data[i].caption.text);  
                       if ( response.data[i].caption !== null ) {  
                            insta += "<div class='caption-layer'>";  
                            if ( response.data[i].caption.text.length > 0 ) {  
                                 insta += "<p class='insta-caption'>" + response.data[i].caption.text + "</p>"  
                            }  
                            insta += "<span class='insta-likes'>" + response.data[i].likes.count + " Likes</span>";  
                            insta += "</div>";  
                       }  
                       insta += "</a>";  
                       insta += "</div>";  
                       $("#instaPics").append(insta);  
                  }  
             }  
             $(".insta-box").hover(function(){  
                  $(this).find(".caption-layer").css({"backbround" : "rgba(255,255,255,0.7)", "display":"block"});  
             }, function(){  
                  $(this).find(".caption-layer").css({"display":"none"});  
             });  
            }  
           });  
   });  
   </script>  
</html>