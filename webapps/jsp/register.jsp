<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>Fishing Site</title>
<jsp:include page="top.jsp" />
<script type="text/javascript">
	$(document).ready( function(){
		$('#login').attr('class', 'active');
	});
</script>
</head>
<body>

<div style="height: 15px">
</div>

<div class="col-sm-6 col-md-offset-3">
	<div class="panel panel-default">
		<div class="panel-heading">회 원 가 입</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">아이디</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" id="inputEmail3" placeholder="ID">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">비밀번호</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">비밀번호 확인</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">메일</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" id="inputEmail3" placeholder="E-Mail">
					</div>
				</div>
	<!-- 				<div class="form-group"> -->
<!-- 					<div class="col-sm-offset-2 col-sm-10"> -->
<!-- 						<div class="checkbox"> -->
<!-- 							<label> <input type="checkbox"> ID 기억하기 -->
<!-- 							</label> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
			<div class="form-group form-actions">
					 <button type="submit" class="btn btn-primary register_button">확인 </button>
					 <button type="submit" class="btn btn-default register_button">취소 </button>
				</div>
			</form>
		</div>
		<div class="panel-footer" >
<!-- 				<label class="control-label">처음 접속하시는 분</label> -->
<!-- 				<label class="control-label">개인정보를 잊어버린 분</label> -->
		</div>
	</div>
</div>
</body>
</html>