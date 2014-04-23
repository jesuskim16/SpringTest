<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div class="container">
	<div class="table-responsive">
		<div style="height: 15px">
		</div>
			<div class="col-sm-10 col-md-offset-1">
				<div class="panel panel-default">
					<table class="table table-hover table-striped">
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>날짜</td>
							<td>조회수</td>
						</tr>
						<c:forEach items="${notiveVOList}" var="notice">
							<tr>
								<td class="col-md-1">${notice.seq}</td>
								<td class="col-md-5">${notice.title}</td>
								<td class="col-md-1">${notice.name}</td>
								<td class="col-md-2">${notice.date}</td>
								<td class="col-md-1">${notice.readnum}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
		
				<div class="text-center">
					<ul class="pagination">
						<li><a href="#">«</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">»</a></li>
					</ul>
				</div>
		
		    	<div class="col-md-6 col-md-offset-3">
			    	<form class="navbar-form form-actions" role="search" method="get" id="search-form" name="search-form">
				    	<div class="btn-group pull-left"  style="margin-right:10px;">
			            <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">선택 <span class="caret"></span></button>
			            <ul class="dropdown-menu">
			                <li><a href="#">제목</a></li>
			                <li><a href="#">내용</a></li>
			                <li><a href="#">작성자</a></li>
			            </ul>
			        	</div>
				        <div class="input-group">
				            <input type="text" class="form-control" placeholder="Search" id="query" name="query" value="">
					            <div class="input-group-btn">
				            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
				            </div>
				        </div>
			        </form>
		        </div>
		  </div>
	</div>
</div>
</body>
</html>