<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>


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
<link rel="icon" type="image/x-icon" href="assets/favicon.png" />
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
</head>
<body id="page-top">

	<%
	String id = null;
	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	}

	
	%>
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
					<li class="nav-item"><a class="nav-link" href="index.jsp">Services</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">About</a></li>
					<%
					if (id == null) {
					%>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Log-in</a></li>
					<li class="nav-item"><a class="nav-link" href="signup.jsp">Sign-up</a></li>
					<%
					} else {
					%>
					<li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
<!-- 					<li class="nav-item"><a class="nav-link" href="confirm.jsp">Confirm/Modify</a> -->
					<%
				           	Class.forName("com.mysql.cj.jdbc.Driver");
				           	String dbURL = "jdbc:mysql://localhost:3306/booksys";
				           	String dbID = "root";
						   	String dbPW = "software!";
						   	
						   	Connection conn = DriverManager.getConnection(dbURL, dbID, dbPW);
							String sql_user = "select name, phoneNumber from user where id = ?";
							String sql_reserv = "select date, covers, time, table_number from reservation where user_id = ?";

						   	PreparedStatement pstmt_user = conn.prepareStatement(sql_user);
						   	PreparedStatement pstmt_reserv = conn.prepareStatement(sql_reserv);
						   	
						   	pstmt_user.setString(1, id);
						   	ResultSet rs_user = pstmt_user.executeQuery();	

						   	pstmt_reserv.setString(1, id);
						   	ResultSet rs_reserv = pstmt_reserv.executeQuery();	
						   	
							String name = "";
							String phoneNumber = "";
							String date = "";
							String cover = "";
							String time = "";
							String table_number = "";
							
							if (rs_user.next()) {
								name = rs_user.getString("name");
								phoneNumber = rs_user.getString("phoneNumber");
							}
							
							if (rs_reserv.next()) {
								date = rs_reserv.getString("date");
								cover = rs_reserv.getString("covers");
								time = rs_reserv.getString("time");
								table_number = rs_reserv.getString("table_number");
							}
						
	           		%>
	           		<li class="nav-item"><a class="nav-link" href="">Confirm/Modify</a>
							<ul class="sub-menu nav-item1">
								<li><a href=<%= "confirm.jsp?data=" + name + "-/-/-" + phoneNumber + "-/-/-" + date +  "-/-/-" + cover + "-/-/-" + time + "-/-/-" + table_number%>>Confirm</a></li>
								<li><a href="user_modify.jsp">Modify</a></li>
								<li><a href="user_cancel.jsp">Cancel</a></li>
							</ul></li>
							
						<li class="nav-item"><a class="nav-link" href="logoutAction.jsp">Log-out</a></li>
						
					<%
					}
					%>
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
				<%
					if (id != null) {
					%>
				<a class="btn btn-primary btn-xl text-uppercase" href="reservation.jsp">Reservation</a>
				<%
					}
					%>
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
						class="fas fa-map fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">오시는 길</h4>
					<p class="text-muted">
						경기도 수원시 영통구 광교산로 154-42<br>이의동 산94-6 16227
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-laptop fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">사업자 정보</h4>
					<p class="text-muted">
						사업주 | 정진주<br>연락처 | 02-1234-5678<br>사업자번호 | 123-45-6789
					</p>
				</div>
			</div>
		</div>
	</section>

</body>
</html>