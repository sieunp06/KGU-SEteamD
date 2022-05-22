<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style media="screen">
body {
	background-color: #212529;
}

.main {
	width: 400px;
	height: 500px;
	display: flex;
	float: left;
	margin: 50px;
	margin-left: 150px;
	align-items: center;
	flex-direction: column;
	border: 1px solid lightgrey;
	border-radius: 5px;
	background-color: white;
}

.main1 {
	width: 400px;
	height: 500px;
	display: flex;
	align-items: center;
	flex-direction: column;
	border: 1px solid lightgrey;
	border-radius: 5px;
	margin: 50px;
	margin-left: 700px;
	background-color: white;
}

.logo {
	margin-top: 20px;
	margin-bottom: 40px;
}

.reser {
	display: block;
	margin-bottom: 3px;
	padding: 3px;
	border: 1px solid lightgray;
	border-radius: 3px;
	height: 40px;
}

#date {
	width: 370px;
}

select {
	width: 370px;
	height: 40px;
	border-radius: 2px;
	margin-bottom: 3px;
	padding: 3px;
	border-color: lightgray;
}

.container1 {
	margin-top: 30px;
}

.btn-reser {
	color: white;
	background-color: orange;
	border-color: rgb(227, 149, 5);
	border-radius: 3px;
	width: 80px;
	height: 40px;
	margin-top: 40px;
	margin-left: 284px
}

.card {
	height: 50px;
	width: 90px;
	position: relative;
	float: left;
	margin: 1px;
	margin-bottom: 3px;
}

input[type="radio"] {
	-webkit-appearance: none;
	appearance: none;
	background-color: white;
	height: 100%;
	width: 100%;
	border-radius: 10px;
	position: absolute;
	box-shadow: 7px 7px 15px rgba(2, 28, 53, 0.08);
	cursor: pointer;
	outline: none;
}

input[type="radio"]:before {
	content: "";
	position: absolute;
	height: 22px;
	width: 22px;
	background-color: #f9fafd;
	border: 1px solid #e2e6f3;
	border-radius: 50%;
	top: 8.5px;
	right: 4px;
}

input[type="radio"]:after {
	content: "";
	position: absolute;
	height: 13px;
	width: 13px;
	background-color: transparent;
	border-radius: 50%;
	top: 12.5px;
	right: 8.5px;
}

label {
	position: absolute;
	margin: 20px;
	cursor: pointer;
}

input[type="radio"]:hover {
	transform: scale(1.05);
}

input[type="radio"]:checked {
	border: 3px solid orange;
}

input[type="radio"]:checked:after {
	background-color: orange;
}

*:after {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}
</style>
<script>
	function buttonClick() {
		document.location.href = "table1.html";
	}
</script>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top"><img
				src="assets/img/navbar-logo.svg" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Services</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Reservation</a></li>
					<li class="nav-item"><a class="nav-link"
						href="reservation.html">Confirm/Modify</a></li>
					<li class="nav-item"><a class="nav-link" href="logoutAction.jsp">Log-out</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Contact-->
	<section class="page-section" id="contact">
		<div class="main">
			<h2 class="logo">Reservation</h2>
			<div class="container">
				<h6>이름</h6>
				<input type="text" placeholder="성명" id="name" class="reser"
					size="37"><br>
				<h6>전화번호</h6>
				<input type="tel" placeholder="전화번호" id="phoneN" class="reser"
					size="37"><br>
				<h6>예약 날짜</h6>
				<input class="reser" id="date" type="date" placeholder="Date *"
					data-sb-validations="required,email" />
				<div class="container1">
					<h6>예약 인원</h6>
					<select name="time_choose">
						<option value="none">선택</option>
						<option value="2명">2명</option>
						<option value="3명">3명</option>
						<option value="4명">4명</option>
						<option value="5명">5명</option>
						<option value="6명">6명</option>
					</select>
				</div>


			</div>
		</div>

		<div class="main1">
			<h2 class="logo">&nbsp;</h2>
			<div class="container">
				<h6>시간선택</h6>

				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card1"><span></span>13:00</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card2"> <label
						for="card2"> <span></span>13:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card3"> <label
						for="card3"><span></span>14:00</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card4"> <label
						for="card4"> <span></span>14:30
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card5"> <span></span>15:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card6"><span></span>15:30</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card7"><span></span>16:00</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card8"><span></span>16:30</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card9"> <span></span>17:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card10"> <span></span>17:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card11"> <span></span>18:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card12"> <span></span>18:30
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card13"> <span></span>19:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card14"> <span></span>19:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card15"> <span></span>20:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card16"> <span></span>20:30
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card17"> <span></span>21:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1"> <label
						for="card18"> <span></span>21:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" id="card1" checked> <label
						for="card19"> <span></span>22:00
					</label>
				</div>


				<button class="btn-reser" id="submitButton" type="button"
					onclick="buttonClick()">다음</button>
			</div>
	</section>
</body>
</html>