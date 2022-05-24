<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="manage.Manage" %>
<%@ page import="manage.ManageDAO" %>

<%@ page import="user.User" %>
<%@ page import="user.UserDAO" %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="manage" class="manage.Manage" scope="page"/>
<jsp:setProperty name="manage" property="user_id"/>

<!DOCTYPE html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>SE-DTEAM</title>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="assets/favicon.png" />
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

    
 .container1 {
 
                 width: 350px;
                height: 800px;  
           float: left;

                background-color:#fff}
                
  .container2 {
    background-color:rgba(255, 255, 255, 0.968) ;
    width: 1200px;
    height: 800px;
    margin-top: 150px;
    margin-left: 350px;
            }
            p,li{
                font-family:'Montserrat';
            }
            .menu:after{display:block; content:''; clear:both;}
            .menu > li{position:relative; float:left; margin-right:5px;}
            .menu > li > a{display:block; padding:0 15px;  height:40px; line-height:40px; color:#fff;}
            .menu > li:hover .sub-menu {opacity:1; visibility:visible;}
            .sub-menu{visibility:visible; opacity:0; position:absolute; left:0; right:0; margin-left:15px;}
           
    P{
    font-size: 30px;
    font-weight: bolder;
    color: rgb(171, 170, 170);
    margin: 10px;
    margin-top: 20px;
    margin-left: 50px;
    }
    .margin{
      margin-left: 380px;
      margin-top:-765px;
  
    }
    .margin1{
      margin-left: 380px;
      margin-top:-765px;
  
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
.tt {margin-top:10px; margin-left: 50px; }
.tg  {border-collapse:collapse;border-spacing:0; margin-top: 20px;}

.tg td{border-color: rgb(171, 170, 170); border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
    overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color: whitesmoke;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
    font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-uqo3{background-color:rgba(196, 196, 196, 0.856);text-align:center;vertical-align:top; }
.tg .tg-0lax{text-align:left;vertical-align:top}
table{
  text-align: center;
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
                        <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.png" alt="..." /></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                            Menu
                            <i class="fas fa-bars ms-1"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                                <li class="nav-item"><a class="nav-link" href="index2.jsp">Services</a></li>
                                <li class="nav-item"><a class="nav-link" href="#services">About</a></li>
                                <li class="nav-item"><a class="nav-link" href="manage.jsp">Confirm</a></li>
								<li class="nav-item"><a class="nav-link" href="manage_modify.jsp">Modify</a></li>
								<li class="nav-item"><a class="nav-link" href="manage_delete.jsp">Cancel</a></li>
                                <li class="nav-item"><a class="nav-link" href="logoutAction.jsp">Log-out</a></li>

                                
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="container1" >
                  <p>Kyonggi <br>Resturant<br>SEED</p>
                <div id="text" style="font-weight: bolder; margin-left:50px;  font-family:'Montserrat';">

                  <script>
                    var today = new Date();
                    var year = today.getFullYear();
                    var month = ('0' + (today.getMonth() + 1)).slice(-2);
                    var day = ('0' + today.getDate()).slice(-2);
                    var hours = ('0' + today.getHours()).slice(-2); 
                    var minutes = ('0' + today.getMinutes()).slice(-2);
                    
                    document.write(year+'년');
                    document.write('<br>');
                    document.writeln(month+'월'+' '+day+'일');
                    document.write(hours+' '+':'+' '+minutes);
                    document.getElementById("text").style.fontSize = '30px';
                    document.getElementById("text").style.fontweight ;


                </script>
                <ul style="font-size: 15px; list-style:none; font-weight: blod; margin-left: -35px; margin-top: 30px;">
<!--                   <li>
                    ⏵ 예약 수정
                  </li> -->
                  <ul style="font-size: 15px; list-style:none; font-weight: blod; margin-left: -35px; margin-top: 30px; ;">
                  <li><a class="nav-link" href="manage.jsp">
                    ⏵ 예약 현황
                </a></li>
                  <li><a class="nav-link" href="manage_delete.jsp">
                    ⏵ 예약 취소
                </a></li>
                  <li><a class="nav-link" href="manage_modify.jsp">
                    ⏵ 예약 수정
                </a></li>
                  <li><a class="nav-link" href="manage_reservation.jsp">
                    ⏵ 예약 등록
                </a> </li>
                </ul>
                </ul>
                </div>
                </div>
                <div class="container2">
                  </div>
                  <div class="margin">
                  <h5> 예약 수정</h5>
                 
                  <table class="tg" width="850" height="100" >
                    
            <%
	           	Class.forName("com.mysql.cj.jdbc.Driver");
	           	String dbURL = "jdbc:mysql://localhost:3306/booksys";
	           	String dbID = "root";
			   	String dbPW = "software!";
			   	
			   	Connection conn = DriverManager.getConnection(dbURL, dbID, dbPW);
				String sql = "SELECT * FROM reservation WHERE date >= date_format(NOW(),'%Y%m%d')";
			   	PreparedStatement pstmt = conn.prepareStatement(sql);
			   	ResultSet rs = pstmt.executeQuery(sql);	
	
			   	ManageDAO ManageDAO = new ManageDAO();
			   	UserDAO UserDAO = new UserDAO();
			   	
			   	int i = 0;
           	%>
                <table class="tg" width="1000" height="50">
                
	                <thead>
	                  <tr>
	                    <td class="tg-uqo3" colspan="1">번호</td>
	                    <td class="tg-uqo3" colspan="2">이름</td>
	                    <td class="tg-uqo3" colspan="2">전화번호</td>
	                    <td class="tg-uqo3" colspan="2">날짜</td>
	                    <td class="tg-uqo3" colspan="2">시간</td>
	                    <td class="tg-uqo3" colspan="2">인원</td>
	                    <td class="tg-uqo3" colspan="2">테이블</td>
	                    <td class="tg-uqo3" colspan="2">예약수정</td>
	                  </tr>
	                </thead>
	        
	                <tbody>
	                
                <%
                
               		while (rs.next()) {
                
                %>
	                                
	                  <tr height="30">
	                    <td class="tg-lax" colspan="1"><%= i + 1 %></td>
	  
	                    <td class="tg-0lax" colspan="2"><%= ManageDAO.userName(rs.getString("user_id")) %></td>
	                    <td class="tg-0lax" colspan="2"><%= ManageDAO.userPhoneNumber(rs.getString("user_id")) %></td>
	
	                    <td class="tg-0lax" colspan="2"><%= rs.getString("date") %></td>
	                    <td class="tg-0lax" colspan="2"><%= rs.getString("time") %></td>
	                    <td class="tg-0lax" colspan="2"><%= rs.getString("covers") %></td>
	                    <td class="tg-0lax" colspan="2"><%= rs.getString("table_number") %></td>
	                    <td class="tg-0lax" colspan="2"><input type="button" class="checkBtn" value="예약수정" /></td>
	                  </tr>
	                  
	                <%
			                i++;
			                }
	                %>
                 </table>
                  
          
                 
                <div class="row">
                  <div class="col-12">
               
                
                    <!-- Submit Button-->
                  </div>
                    
                  </div>
                </div>
                       

              </div>
            
        </body>
        <script>
	        $(".checkBtn").click(function(){ 
	    		
	    		let str = ""
	    		let tdArr = new Array();	// 배열 선언
	    		let checkBtn = $(this);
	    		
	    		// checkBtn.parent() : checkBtn의 부모는 <td>이다.
	    		// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
	    		let tr = checkBtn.parent().parent();
	    		let td = tr.children();
	    		
	    /* 		alert("클릭한 Row의 모든 데이터 : "+tr.text()); */
	    		
	    		let name = td.eq(1).text();
	    		let phoneN = td.eq(2).text();
	    		let date = td.eq(3).text();
	    		let time = td.eq(4).text();
	    		let cover = td.eq(5).text();
	    		let table_number = td.eq(6).text();
	    		
	    		let data = name + '-/-/-' + phoneN + '-/-/-' + date + '-/-/-' + cover
	    		+ '-/-/-' + time + '-/-/-' + table_number;
	    		
	    		passData(data);
	    		//alert(data);
	    		
	    	});
	    	
	    	function passData(data){
	    		location.href = "mo_modify.jsp?data="+data;
	    	}
        </script>
        </html>