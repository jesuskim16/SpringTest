<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
<!DOCTYPE HTML>
<html lang="ko"> 
    <head> 
    <meta charset="utf-8"> 
    <meta id="extViewportMeta" name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="../css/bootstrap.css" />
    <link rel="stylesheet" href="../css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="../css/default.css" />
    <script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/respond.js"></script>
</head> 
<body>

<div class="container">
	<nav role="navigation" class="navbar navbar-default">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header ">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">TEST</a>
	    </div>
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav ">
					<li id="home">
						<a href="#">
							<span class="glyphicon glyphicon-home "> 메인</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="glyphicon glyphicon-globe "> 지도</span>
						</a>
					</li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	          	<span class="glyphicon glyphicon-pencil "> 게시판</span>
	          		<b class="caret"></b>
	          </a>
	          <ul class="dropdown-menu">
	            <li><a href="notice">공지사항</a></li>
	            <li><a href="#">자유게시판</a></li>
	            <li><a href="#">지도게시판</a></li>
	            <li class="divider"></li>
	            <li><a href="#">Separated link</a></li>
	            <li class="divider"></li>
	            <li><a href="#">One more separated link</a></li>
	          </ul>
	        </li>
	      </ul>
<!-- 				<form role="search" class="navbar-form navbar-right search-form "> -->
<!-- 					<div class="form-group"> -->
<!-- 						<input type="text" placeholder="Search" class="form-control form-control-70"> -->
						
<!-- 						<div class="input-group-btn"> -->
<!-- 						<button type="submit" class="btn btn-info "> -->
<!-- 							<span class="glyphicon glyphicon-search"></span> -->
<!-- 						</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</form> -->
				<div class="col-sm-3 pull-right">
				<form role="search" class="navbar-form navbar-right" method="get" id="search-form" name="search-form">
		        <div class="input-group">
<!-- 			        <div class="form-group"> -->
			            <input type="text" class="form-control" placeholder="Search" id="query" name="query" value="">
				         <div class="input-group-btn">
			            <button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-search"></span></button>
			            </div>
<!-- 			        </div> -->
			    </div>
	        	</form>
	        	</div>
	        	
	        	
				<ul class="nav navbar-nav  navbar-right">
					<li id="login"><a href="login"> <span
							class="glyphicon glyphicon-user "> 로그인</span>
					</a></li>
				</ul>
		  </div>
	</nav>
</div>
</body>
</html>