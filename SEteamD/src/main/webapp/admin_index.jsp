<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="id" />
<jsp:setProperty name="user" property="admin" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>SE-DTEAM</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<style>
.btn-jsp {
	border: none;
	background: white;
}

.btn-jsp {
	font-family: 'Montserrat';
}
/*바뀐부분 css추가*/
li, .page-section {
	font-family: 'Montserrat';
}

.menu:after {
	display: block;
	content: '';
	clear: both;
}

.menu>li {
	position: relative;
	float: left;
	margin-right: 5px;
}

.menu>li>a {
	display: block;
	padding: 0 15px;
	height: 40px;
	line-height: 40px;
	color: #fff;
}

.menu>li:hover .sub-menu {
	opacity: 1;
	visibility: visible;
}

.sub-menu {
	visibility: visible;
	opacity: 0;
	position: absolute;
	left: 0;
	right: 0;
	margin-left: 15px;
}
/*여기까지*/
</style>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top"><img
				src="assets/img/navbar-logo.png" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="menu navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="admin_reservation.jsp">Reservation</a></li>
					<li class="nav-item"><a class="nav-link" href="admin_manage.jsp">Confirm</a></li>
					<li class="nav-item"><a class="nav-link" href="admin_modify.jsp">Modify</a></li>
					<li class="nav-item"><a class="nav-link" href="admin_delete.jsp">Cancel</a></li>
			
						
					<li class="nav-item"><a class="nav-link" href="logoutAction.jsp">Log-out</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead">
		<div class="container">
			<div class="masthead-subheading">Welcome To Our Restaurant!</div>
			<div class="masthead-heading text-uppercase">It's Nice To Meet
				You</div>
		</div>
	</header>



	<!-- Services-->
	<section class="page-section" id="services">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">About</h2>
				<h3 class="section-subheading text-muted">SEED Restaurant</h3>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-heart fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">영업시간</h4>
					<p class="text-muted">
						Open : 12:00 <br> Closed : 23:00 <br> (last reservation:
						22:00)<br> break-time : 16:00 ~ 17:00
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-laptop fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">Information</h4>
					<p class="text-muted">현 레스토랑 통계지표</p>
					<button class="btn-jsp" type="button"
						onclick="location.href='filedownload.jsp' ">Click!</button>
					</a>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-map fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">오시는 길</h4>
					<p class="text-muted">ㅉ
						경기도 수원시 영통구 광교산로 154-42<br>이의동 산94-6 16227
					</p>
				</div>
			</div>
		</div>
	</section>

</body>
</html>