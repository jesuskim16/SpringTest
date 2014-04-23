<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">

       function previewImage(targetObj, previewId) {

        var preview = document.getElementById(previewId); //div id   
        var ua = window.navigator.userAgent;

        if (ua.indexOf("MSIE") > -1) {//ie일때

            targetObj.select();

            try {
                var src = document.selection.createRange().text; // get file full path 
                var ie_preview_error = document
                        .getElementById("ie_preview_error_" + previewId);

                if (ie_preview_error) {
                    preview.removeChild(ie_preview_error); //error가 있으면 delete
                }

                var img = document.getElementById(previewId); //이미지가 뿌려질 곳 

                img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
                        + src + "', sizingMethod='scale')"; //이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
            } catch (e) {
                if (!document.getElementById("ie_preview_error_" + previewId)) {
                    var info = document.createElement("<p>");
                    info.id = "ie_preview_error_" + previewId;
                    info.innerHTML = "a";
                    preview.insertBefore(info, null);
                }
            }
        } else { //ie가 아닐때
            var files = targetObj.files;    
        
            for ( var i = 0; i < files.length; i++) {

                var file = files[i];
                var imageType = /image.jpeg/; //이미지 파일일경우만뿌려준다.
                if (!file.type.match(imageType)){
                	alert('jpg 파일만 가능합니다.');
                	document.getElementById("photoFile").value = "";
                	validateJpg(preview, previewId);
                    return false;
                }

                validateJpg(preview, previewId);

                var img = document.createElement("img"); //크롬은 div에 이미지가 뿌려지지 않는다. 그래서 자식Element를 만든다.
                img.id = "prev_" + previewId;
                img.classList.add("obj");
                img.file = file;
                img.style.width = '137px'; //기본설정된 div의 안에 뿌려지는 효과를 주기 위해서 div크기와 같은 크기를 지정해준다.
                img.style.height = '177px';
                
                preview.appendChild(img);
                         
                if (window.FileReader) { // FireFox, Chrome, Opera 확인.
                    var reader = new FileReader();
                    reader.onloadend = (function(aImg) {
                        return function(e) {
                            aImg.src = e.target.result;
                               
                        };
                    })(img);
                    reader.readAsDataURL(file);
                     
                } else { // safari is not supported FileReader
                    //alert('not supported FileReader');
                    if (!document.getElementById("sfr_preview_error_" + previewId)) {
                        var info = document.createElement("p");
                        info.id = "sfr_preview_error_" + previewId;
                        info.innerHTML = "not supported FileReader";
                        preview.insertBefore(info, null);
                    }
                }
            }
        }
    }
       
    function validateJpg(preview, previewId) {
        var prevImg = document.getElementById("prev_" + previewId); //이전에 미리보기가 있다면 삭제
        if (prevImg) {
            preview.removeChild(prevImg);
        }
    }; 
       
    function photoUpload() {
        $('#photo').submit();

    };   
       
</script>

<title>Insert title here</title>
</head>
<body>

	<form action="upload" method="post" enctype="multipart/form-data" id="photo">
	<input type="file" name="file" id="photoFile" onchange="previewImage(this,'previewId')">
	<input type="button" value="업로드" onclick="photoUpload()">
	</form>
	
	<div id='previewId' style='width: 137px; height: 177px; color: black; font-size: 9pt; border: 2px solid black; position: absolute; left: 300px; top: 200px;'>
	</div>
	
</body>
</html>