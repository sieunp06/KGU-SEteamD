<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="reservation.Reservation" %>
<%@ page import="reservation.ReservationDAO" %>

<%@ page import="user.User" %>
<%@ page import="user.UserDAO" %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="reservation" class="reservation.Reservation" scope="page"/>
<jsp:setProperty name="reservation" property="user_id"/>
<!DOCTYPE html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>SE-DTEAM</title>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
    <style type="text/css">
      body{
        background-color: #212529;
      }
      .main {
                width: 1200px;
                height: 800px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                border: 1px solid lightgrey;
                border-radius: 5px;
                margin-left: 450px;
                background-color: white;
            }
        h2{
            color:mistyrose;
        }
        h4{
          color: white;
        }
      table{
            margin:auto;
            color:aliceblue;
        }
   
        table th, table td {
	border-left: 1px black solid;
	border-right: 1px black solid;
}
    table th:first-child,table td:first-child {
	border-left: 0;
}
table th:last-child,table td:last-child {
	border-right: 0;
}
.tt {margin-top: 100px; margin-left: 50px;}
.tg  {border-collapse:collapse;border-spacing:0; margin-top: 20px;}

.tg td{border-color:whitesmoke;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
        overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:whitesmoke;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
        font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-uqo3{background-color:#212529;;text-align:center;vertical-align:top; }
 .tg .tg-0lax{text-align:left;vertical-align:top}

 button {
     margin:auto;

 }
 #contain{
   margin-top: 90px;
 }
 #contain1{
   margin-left: 100px;
 }
 #contain2 {
     width: 1000px;
     height: 250px;
     background-color: white;
     text-align: center;
     margin-left: 100px;
     
 }
 .btn {
     margin-top: 40px;
 }
    
        </style>
        <script>
            function buttonClick() {
                document.location.href="index2.jsp";
            
        
            }
        </script>
        </head>
        <body>
            <body id="page-top">
                <!-- Navigation-->
                <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
                    <div class="container">
                        <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.svg" alt="..." /></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                            Menu
                            <i class="fas fa-bars ms-1"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                                <li class="nav-item"><a class="nav-link" href="index2.jsp">Services</a></li>
                                <li class="nav-item"><a class="nav-link" href="#services">About</a></li>
<!--                                 <li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li> -->
                                <li class="nav-item"><a class="nav-link" href="index.jsp">Log-out</a></li>

                                
                            </ul>
                        </div>
                    </div>
                </nav>
        
           	<h4 class="tt">예약 관리</h4>
           	<%
           	Class.forName("com.mysql.cj.jdbc.Driver");
           	String dbURL = "jdbc:mysql://localhost:3306/booksys";
           	String dbID = "root";
		   	String dbPW = "1234";
		   	
		   	Connection conn = DriverManager.getConnection(dbURL, dbID, dbPW);
		   	String sql = "select * from reservation";
		   	PreparedStatement pstmt = conn.prepareStatement(sql);
		   	ResultSet rs = pstmt.executeQuery(sql);	

		   	ReservationDAO ReservationDAO = new ReservationDAO();
		   	UserDAO UserDAO = new UserDAO();
		   	
		   	int i = 0;
           	%>
                <table class="tg" width="1200" height="50">
                 
                <thead>
                  <tr>
                    <td class="tg-uqo3" colspan="1">번호</td>
                    <td class="tg-uqo3" colspan="2">이름</td>
                    <td class="tg-uqo3" colspan="2">전화번호</td>
                    <td class="tg-uqo3" colspan="2">날짜</td>
                    <td class="tg-uqo3" colspan="2">인원</td>
                    <td class="tg-uqo3" colspan="2">테이블</td>
                  </tr>
                </thead>
        
                <tbody>
                
                <%
                
                while (rs.next()) {
                
                %>
                                
                  <tr height="30">
                    <td class="tg-lax" colspan="1"><%= i + 1 %></td>
  
                    <td class="tg-0lax" colspan="2"><%= ReservationDAO.userName(rs.getString("user_id")) %></td>
                    <td class="tg-0lax" colspan="2"><%= ReservationDAO.userPhoneNumber(rs.getString("user_id")) %></td>
>

                    <td class="tg-0lax" colspan="2"><%= rs.getString("date") %></td>
                    <td class="tg-0lax" colspan="2"><%= rs.getString("covers") %></td>
                    <td class="tg-0lax" colspan="2"><%= rs.getString("table_number") %></td>
                  </tr>
                  
                <%
                i++;
                }
                %>
<!--                   <tr height="30"> -->
<!--                     <td class="tg-lax" colspan="1">2</td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                   </tr> -->
<!--                   <tr height="30"> -->
<!--                     <td class="tg-lax" colspan="1">3</td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                   </tr> -->
<!--                   <tr height="30"> -->
<!--                     <td class="tg-lax" colspan="1">4</td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                   </tr> -->
<!--                   <tr height="30"> -->
<!--                     <td class="tg-lax" colspan="1">5</td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                     <td class="tg-0lax" colspan="2"></td> -->
<!--                   </tr> -->
                </tbody>
                </table>
                <div class="container">
                    <div class="row">
                      <div class="col-12">
                        <div>
                        </div>
                        <!-- Submit Button-->
                        <div class="btn"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit" onClick="buttonClick()" >확인</button></div>
                          
                        </div>
                      </div>
                    </div>
                  </div>
            
        </body>
        </html>