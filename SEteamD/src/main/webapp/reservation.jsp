 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

	
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="pw"/>
<% 
	String id = (String)session.getAttribute("id"); 
	String pw = (String)session.getAttribute("pw");
%>
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
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.6.0.slim.js"
	integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
	crossorigin="anonymous"></script> -->
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
.navbar {
    position: fixed;
}
   /*폰트 넣을 class 추가*/         
li,.container1,.main1{
                font-family:'Montserrat';
            }
            .menu:after{display:block; content:''; clear:both;}
            .menu > li{position:relative; float:left; margin-right:5px;}
            .menu > li > a{display:block; padding:0 15px;  height:40px; line-height:40px; color:#fff;}
            .menu > li:hover .sub-menu {opacity:1; visibility:visible;}
            .sub-menu{visibility:visible; opacity:0; position:absolute; left:0; right:0; margin-left:15px;}

</style>
<script>
/* 	function buttonClick() {
		document.location.href = "table1.jsp";
	} */
</script>
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
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Services</a></li>
					<li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
<!-- 					<li class="nav-item"><a class="nav-link" href="modify.jsp?data=" + name + "-/-/-" + phoneNumber + "-/-/-" + date +  "-/-/-" + cover + "-/-/-" + time + "-/-/-" + table_number%">Confirm/Modify</a> -->
	           		<li class="nav-item"><a class="nav-link" href=<%= "modify.jsp?data=" + name + "-/-/-" + phoneNumber + "-/-/-" + date +  "-/-/-" + cover + "-/-/-" + time + "-/-/-" + table_number %>">Confirm/Modify</a>
							<ul class="sub-menu nav-item1">
								<li><a href=<%= "confirm.jsp?data=" + name + "-/-/-" + phoneNumber + "-/-/-" + date +  "-/-/-" + cover + "-/-/-" + time + "-/-/-" + table_number%>>Confirm</a></li>
								<li><a href="reservationListModify.jsp">Modify</a></li>
								<li><a href="reservationList.jsp">Cancel</a></li>
							</ul></li>
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
<!-- 				<input type="text" placeholder="성명" id="name" class="reser"
					size="37"><br> -->
					<input type="text" placeholder="성명" id="name" class="reser"
					size="37" value="" name = "name" readonly/><br>
				<h6>전화번호</h6>
				<input type="tel" placeholder="전화번호" id="phoneN" class="reser"
					size="37" value="" name = "phoneN" readonly/><br>
				<h6>예약 날짜</h6>
				<input class="reser" id="date" type="date" placeholder="Date *"
					data-sb-validations="required,email" />
				<div class="container1">
					<h6>예약 인원</h6>

					<select id="cover" name="covers"
						onchange="selectBoxChange(this.value);">
						<option value="none">선택</option>
						<option value="2">2명</option>
						<option value="3">3명</option>
						<option value="4">4명</option>
						<option value="5">5명</option>
						<option value="6">6명</option>
					</select>
				</div>
			</div>
		</div>

		<div class="main1">
			<h2 class="logo">&nbsp;</h2>
			<div class="container">
				<h6>시간선택</h6>

				<div class="card">
					<input type="radio" name="re_time" value="13:00:00"> <label
						for="card1"><span></span>13:00</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="13:30:00"> <label
						for="card2"> <span></span>13:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="14:00:00"> <label
						for="card3"><span></span>14:00</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="14:30:00"> <label
						for="card4"> <span></span>14:30
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="15:00:00"> <label
						for="card5"> <span></span>15:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="15:30:00"> <label
						for="card6"><span></span>15:30</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="16:00:00"> <label
						for="card7"><span></span>16:00</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="16:30:00"> <label
						for="card8"><span></span>16:30</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="17:00:00"> <label
						for="card9"> <span></span>17:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="17:30:00"> <label
						for="card10"> <span></span>17:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="18:00:00"> <label
						for="card11"> <span></span>18:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="18:30:00"> <label
						for="card12"> <span></span>18:30
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="19:00:00"> <label
						for="card13"> <span></span>19:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="19:30:00"> <label
						for="card14"> <span></span>19:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="20:00:00"> <label
						for="card15"> <span></span>20:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="20:30:00"> <label
						for="card16"> <span></span>20:30
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="21:00:00"> <label
						for="card17"> <span></span>21:00
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="21:30:00"> <label
						for="card18"> <span></span>21:30
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_time" value="22:00:00"> <label
						for="card19"> <span></span>22:00
					</label>
				</div>

				<button class="btn-reser" id="submitButton" type="button"
					onclick="addReservation()">다음</button>
			</div>
	</section>
</body>
<script>

	$(document).ready(function (){
		
		getData();
		
	})
	
	function getData(){
		let user_id = "<%=id%>";
		let data = user_id;
		let user_name;
		let user_phoneN;
		let data2 = [];
		
		$.ajax({
			url : "ajax.do",
			type : "post",
			data : {
				req : "getReservation",
				data : data
			},
			success : function(result) {
				data2 = result.split('-/-/-');
				user_name = data2[0];
				user_phoneN = data2[1];
				$('input[name=name]').attr('value',user_name);
				$('input[name=phoneN]').attr('value',user_phoneN);
			}
		})
		
	}
	
 	var selectBoxChange = function(value) {
		$("#covers").val(value);
	}

	function addReservation() {
		let name = $('#name').val();
		let phoneN = $('#phoneN').val();
		let date = $('#date').val();
		let cover = $('#cover').val();
		let time = $('input[name="re_time"]:checked').val();
		//let data = user_id + '-/-/-' + name + '-/-/-' + phoneN + '-/-/-' + date + '-/-/-' + cover
		//		+ '-/-/-' + time;
		let data = name + '-/-/-' + phoneN + '-/-/-' + date + '-/-/-' + cover
				+ '-/-/-' + time;
		
		passData(data);
/* 		alert(data); */
	} 
	
	function passData(data){
		location.href = "table1.jsp?data="+data;
	}
</script>
</html>