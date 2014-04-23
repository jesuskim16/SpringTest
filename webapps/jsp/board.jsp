<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>Fishing Site</title>
<jsp:include page="top.jsp" />
<script type="text/javascript">
	$(document).ready( function(){
// 		$('#login').attr('class', 'active');
// 		$('#alert').hide();
	});
</script>
</head>
<body>

<div style="height: 15px">
</div>

<div class="col-sm-4 col-md-offset-2">
	<div class="panel panel-default">
		<table class="table">
		  <tr>
		  	<td>번호</td>
		  	<td>제목</td>
		  	<td>작성자</td>
		  	<td>날짜</td>
		  	<td>조회수</td>
		  </tr>
		</table>
	</div>
</div>
</body>
</html>