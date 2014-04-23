<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>Fishing Site</title>
<jsp:include page="top.jsp" />
<script type="text/javascript">
	$(document).ready( function(){
		$('#login').attr('class', 'active');
		$('#alert').hide();
	});
	
	
	$(function(){
		$('#confirm').click(function(){
			$('#alert').slideDown().show();
		});
		
		$('.close').click(function () {
			$('#alert').hide();
		});
	});
	
	
</script>
</head>
<body>

<div style="height: 15px">
</div>

<div class="col-sm-6 col-md-offset-3">
	<div class="panel panel-default">
		<div class="panel-heading">아이디 / 비밀번호 찾기</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">가입 이메일</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" id="inputEmail3" placeholder="E-Mail">
					</div>
				</div>
				<div class="form-group form-actions">
					 <button type="submit" class="btn btn-primary register_button" id="confirm">확인 </button>
					 <button type="submit" class="btn btn-default register_button">취소 </button>
				</div>
			</form>
		</div>
		
		<div class="panel-footer" >
				<div id="alert" class="alert-message warning">
					<a class="close" href="#">×</a>
					<p><strong>Holy guacamole!</strong> Best check yo self, you’re not	looking too good.</p>
				</div>
			</div>
	</div>
</div>
</body>
</html>