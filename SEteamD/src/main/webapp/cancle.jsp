 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="pw"/>
<% String id = (String)session.getAttribute("id"); %> --%>
<%
	String data = request.getParameter("data");
	System.out.println(data+"여기는 cancle.jsp임");
	
	String []arr = data.split("-/-/-");
	String name = arr[0];
	String phoneN = arr[1];
	String date = arr[2];
	String cover = arr[3];
	String time = arr[4];
	String table_number = arr[5];
	
%>

<!DOCTYPE html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>SE-DTEAM</title>
  <!-- Favicon-->
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <link rel="icon" type="image/x-icon" href="assets/favicon.png" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap" rel="stylesheet">
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
    <style type="text/css">
      @import url('https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap');
        .main {
            width: 450px;
                height: 538px;
                display: flex;
                flex-direction: column;
                border: 1px solid lightgrey;
                border-radius: 5px;
                margin-left: 420px;
                background-color: white;
        }
        .container1{
            margin-left: 25px;
       
            text-align: left;
            color: white;
            width: 400px;
            height: 30px;
            display: flex;
            border: 1px solid darkgray;
            border-radius: 1px;
            margin-top: 15px;
            background-color: darkgray;

        }
        h5 {
            margin-left: 25px;
            margin-top: 10px;
          
        }
        p{color: dimgray;
            margin-bottom: -10px ;
      
            margin-left: 25px;
            margin-top: 5px;  }
        .hr-dashed {
            border : 0px;
            border-top: 4px dashed rgb(68, 64, 64);
            margin-left: 25px;
            width: 400px;
            background-color: white;
            }
         .table1{
             margin-left: 25px;
             width: 400px;
             height: 100px;
             border: none;
             font-size: small;
             
         }
         td{
             color:dimgrey;
         }
         .table2{
             margin-left: 25px;
             width: 400px;
             height: 50px;
             border: none;
             font-size: small;
         }
         .hr-dashed1 {
            border : 0px;
            border-top: 4px dashed rgb(84, 82, 82);
            margin-left: 25px;
            width: 400px;
            background-color: white;
            }
            .table3{
             margin-left: 25px;
             width: 400px;
             height: 70px;
             border: none;
             font-size: small;
         }
         .line {
             border: 0;
            border-top: 3px solid rgb(43, 41, 41);
            margin-left: 25px;
            width: 400px;
         
            }
         .btn-reser{
           margin-top: -7px;
           margin-left: 180px;
          
            
         }
         .btn-reserb{
            color:white;
            background-color: rgb(247, 135, 215);
            border-color:rgb(244, 102, 204);
            border-radius: 3px;
            width: 80px;
            height: 40px;
        
            }
/*글씨체 추가*/
            li,.page-section{
                font-family:'Montserrat';
            }
            .menu:after{display:block; content:''; clear:both;}
            .menu > li{position:relative; float:left; margin-right:5px;}
            .menu > li > a{display:block; padding:0 15px;  height:40px; line-height:40px; color:#fff;}
            .menu > li:hover .sub-menu {opacity:1; visibility:visible;}
            .sub-menu{visibility:visible; opacity:0; position:absolute; left:0; right:0; margin-left:15px;}
</style>
<script>
    
            function buttonClick() {
                var ret = confirm("예약을 취소 하시겠습니까?");
                if(ret==true) {
                    alert('예약 취소되었습니다.')
                    document.location.href="modify.html";
                }
                else {
                    
                }
    
            }
</script>
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
                    <li class="nav-item"><a class="nav-link" href="index.cancle">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
                    <li class="nav-item"><a class="nav-link" href="modify.jsp">Confirm/Modify</a></li>
                    <li class="nav-item"><a class="nav-link" href="logoutAction.jsp">Log-out</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="page-section" id="contact">
        <div class="main">
            <div class="container1">
                <div>
                    <script>
                        var today = new Date();
                        var year = today.getFullYear();
                        var month = ('0' + (today.getMonth() + 1)).slice(-2);
                        var day = ('0' + today.getDate()).slice(-2);
                        var hours = ('0' + today.getHours()).slice(-2); 
                        var minutes = ('0' + today.getMinutes()).slice(-2);
                        
                        document.write(year+'년'+' '+month+'월'+' '+day+'일'+' '+hours+' '+':'+' '+minutes);
                    </script>
                    </div>
            </div>
            <div class="container2">
                <h5>예약이 <br> 완료 되었습니다.</h5>
                <p>예약 상황</p>
                <hr class="hr-dashed">
            </div>
            <div class="container3">
                <table class="table1" border="1">
                    <tr>
                    <td>예약자 성함</td>
                    <td style="color:black; text-align: right;">&nbsp;</td>
                    <td style="color:black; text-align: right;" id="name"></td>
                    </tr>
                    <tr>
                        <td>예약자 전화번호</td>
                        <td style="color:black; text-align: right;">&nbsp;</td>
                        <td style="color:black; text-align: right;" id="phoneN"></td>
                    </tr>
                    <tr>
                        <td>예약 테이블</td>
                        <td style="color:black; text-align: right;">&nbsp;</td>
                        <td style="color:black; text-align: right;" id="table_number"></td>
                    </tr>
                    <tr>
                        <td>예약 인원</td>
                        <td style="color:black; text-align: right;">&nbsp;</td>
                        <td style="color:black; text-align: right;" id="cover"></td>
                    </tr>
                </table>
                <hr class="hr-dashed">
                <table class="table2">
                    <tr>
                        <td>예약 시간</td>
                        <td style="color:black; text-align: right;">&nbsp;</td>
                        <td style="color:black; text-align: right;" id="time"></td>
                    </tr>
                    <tr>
                        <td>예약 날짜</td>
                        <td style="color:black; text-align: right;">&nbsp;</td>
                        <td style="color:black; text-align: right;" id="date"></td>
                    </tr>
                    </table> 
            </div>
            <hr class="hr-dashed1">
            <table class="table3">
                <tr>
                    <td>매장 이름 </td>
                    <td style="color:black; text-align: right;">SEED Restaurant</td>
                </tr>
                <tr>
                    <td>매장 이용시간 </td>
                    <td style="color:black; text-align: right;">12 : 00 ~ 23 : 00</td>
                </tr>
                <tr>
                    <td>매장 위치 </td>
                    <td style="color:black; text-align: right;">경기도 수원시 영통구 광교산로 154-42</td>
                </tr>
                </table>
                <hr class="line">
                <div class="btn-reser">
                <button type="submit" class="btn-reserb" onclick="delectReservation()">취소</button>
             
            </div>
        </div>
    
</body>
<script>

	$(document).ready(function (){
		
		getData();
		
	})

	function getData(){
		
		let name = '<%=name%>';
		let phoneN = '<%=phoneN%>';
		let date = '<%=date%>';
		let cover = '<%=cover%>명';
		let time = '<%=time%>';
		let table_number = '<%=table_number%>번';
	
		let nametd = $('#name');
		let nametext = name;
		nametd.append(nametext);
		
		let phoneNtd = $('#phoneN');
		let phoneNtext = phoneN;
		phoneNtd.append(phoneNtext);
		
		let datetd = $('#date');
		let datetext = date;
		datetd.append(datetext);
		
		let covertd = $('#cover');
		let covertext = cover;
		covertd.append(covertext);
		
		let timetd = $('#time');
		let timetext = time;
		timetd.append(timetext);
		
		let table_numbertd = $('#table_number');
		let table_numbertext = table_number;
		table_numbertd.append(table_number);
		
	}

	function delectReservation(){
	
		let data = "<%=data%>";
		
		$.ajax({
			url : "ajax.do",
			type : "post",
			data : {
				req : "delectReservation",
				data : data
			},
			success : function(result) {
				alert("예약이 취소되었습니다.");
				location.href="index.jsp";

			}
		})
		
	}

<%-- 	$(document).ready(function (){
		
		getData();
		
	})
	
	function getData() {
		
		let user_id = "<%=id%>";
		
		$.ajax({
			url : "ajax.do",
			type : "post",
		data : {
			req : "getReservation",
			data : user_id
		},
		success : function(result) {
			alert(result);
		}
		
	}
	 --%>

</script>
</html>