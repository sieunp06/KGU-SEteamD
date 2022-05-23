 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String data = request.getParameter("data");
	System.out.println(data+"여기는 modify.jsp임");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>SE-DTEAM</title>
        <!-- Favicon-->
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style>
            input[type=number]::-webkit-inner-spin-button,
            input[type=number]::-webkit-outer-spin-button {

                opacity: 1;

            }<!--예약 페이지 스크롤 남기기-->
            .text-start {
              text-align: left !important;
              margin:10px auto;
              } <!--띄우기-->
        td style{text-align: center;}
       
       
        #container {
            text-align: center;
        }
        .btn {
            display: inline-block;
            margin: auto;
            margin-left: 20px;
            margin-right: 20px;

        }
        
         
        </style>
    
        
        
        
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.png" alt="..." /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="index2.html">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="reservation.html">Reservation</a></li>
                        <li class="nav-item"><a class="nav-link" href="reservation.html">Confirm/Modify</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.html">Log-out</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
    <!-- Contact-->
    <section class="page-section" id="contact">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Reservation comfirm/modify</h2>
                <h3 class="section-subheading text-muted">/</h3>
            </div>
            <!-- * * * * * * * * * * * * * * *-->
            <!-- * * SB Forms Contact Form * *-->
            <!-- * * * * * * * * * * * * * * *-->
            <!-- This form is pre-integrated with SB Forms.-->
            <!-- To make this form functional, sign up at-->
            <!-- https://startbootstrap.com/solution/contact-forms-->
            <!-- to get an API token!-->
            

                <!-- Submit Button-->
                <div id="container">
                <div class="btn"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="button" onclick="goConfirm()">Confirm</button></div>
                <div class="btn"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="button" onclick="goCancle()">Cancel</button></div>
                <div class="btn"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="button" onclick="goMomodify()">Modify</button></div>
                </div>
    
    </body>
    <script>
	function goCancle(){
		let data = "<%=data%>";
		location.href = "cancle.jsp?data="+data;
	}
	
	function goMomodify(){
		let data = "<%=data%>";
		location.href = "mo_modify.jsp?data="+data;
	}
	
	function goConfirm(){
		let data = "<%=data%>";
		location.href = "confirm.jsp?data="+data;
	}
    </script>
</html>