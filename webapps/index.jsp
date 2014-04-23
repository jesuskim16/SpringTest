<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>Fishing Site</title>
<jsp:include page="jsp/top.jsp" />
<script type="text/javascript">
function gfPhotoOpen(){
	var isMSIE = (navigator.userAgent.indexOf("MSIE") > -1) ? true : false;

	var popupW;
	var popupH;
	var url;

	if (isMSIE) {
		alert('Internet Explorer');
		popupW = 800;
		popupH = 680;
		url = "popupIE";
	} else {
		alert('Chrome');
		popupW = 800;
		popupH = 680;
		url = "popup";
	}

	var scrW = screen.availWidth;
	var scrH = screen.availHeight;

	var px = (scrW - popupW) / 2;
	var py = (scrH - popupH) / 2;

	var photo = window.open(url, "photoSave", "left=" + px + ", top=" + 0 + ", width=" + popupW + ",height=" + popupH + 
							", toolbar = no, menubar = no, status = no, scrollbars = yes, resizable = no");
	photo.focus();
}

</script>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
	        <h1>Navbar example</h1>
	        <p>This example is a quick exercise to illustrate how the default, static navbar and fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p>
	        <p>
	          <a class="btn btn-lg btn-primary" href="javascript:;" onclick="gfPhotoOpen(); return false;" title="새창 열림" role="button">View navbar docs &raquo;</a>
	        </p>
      	</div>
	</div>
</body>
</html>