<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="manage.Manage" %>
<%@ page import="manage.ManageDAO" %>

<%@ page import="user.User" %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>

<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="pw"/>
<% String id = (String)session.getAttribute("id"); %>

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
        color:black;
        border-color: darkgray;
        justify-content: center;
        align-items: center;
        text-align: center;
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
.tt {margin-top: 100px; margin-left: 150px; color: black;}
.tg  {border-collapse:collapse;border-spacing:0; margin-top: 20px;}
.tg td{border-color:darkgray;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
    overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:darkgrey;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
    font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-uqo3{background-color:rgb(214, 208, 208); border-width: 1px; border-color:darkgray;text-align:center;vertical-align:top; font-weight: bolder; }
.tg .tg-0lax{text-align:left;vertical-align:top;}
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

      .btn-reser{
       margin-top: -7px;
       margin-left: 180px;
      
        
     }
     .btn-reserb{
        color:white;
        background-color: rgb(192, 192, 192);
        border-color:rgb(255, 255, 255);
        border-radius: 3px;
        width: 80px;
        height: 40px;
    
        
        }
        
       .checkBtn{
        color:white;
        font-weight: bold;
        background-color: rgb(192, 192, 192);
        border-color:rgb(255, 255, 255);
        border-radius: 6px;
        width: 80px;
        height: 40px;
    
        
        }
        .contain{
            width: 1300px;
            height: 800px;
            display: flex;
            flex-direction: column;
            border: 1px solid;
        
            margin-top: 150px;
           
            background-color: rgb(255, 255, 255);

        }
        li,.container1,.main1,.checkBtn{
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
                        <ul class="menu navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                            <li class="nav-item"><a class="nav-link" href="index.jsp">Services</a></li>
                            <li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
                            <li class="nav-item"><a class="nav-link" href="">Confirm/Modify</a>
                                <ul class="sub-menu nav-item1">
                                    <li><a href="confirm.jsp">Confirm</a></li>
                                    <li><a href="user_modify.jsp">Modify</a></li>
                                    <li><a href="user_cancel.jsp">Cancel</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="index.jsp">Log-out</a></li>

                            
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="contain">
    
          <h4 class="tt">나의 예약 리스트</h4>
          <%
              Class.forName("com.mysql.cj.jdbc.Driver");
              String dbURL = "jdbc:mysql://localhost:3306/booksys";
              String dbID = "root";
            String dbPW = "software!";
            
            Connection conn = DriverManager.getConnection(dbURL, dbID, dbPW);
         String sql = "SELECT * FROM reservation WHERE user_id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();   
            ManageDAO ManageDAO = new ManageDAO();
            UserDAO UserDAO = new UserDAO();
            
            int i = 0;
              %>
          
            <table class="tg" width="1000" height="50" id = "table_id">
             
            <thead>
              <tr>
                <td class="tg-uqo3" colspan="1">번호</td>
                <td class="tg-uqo3" colspan="2">이름</td>
                <td class="tg-uqo3" colspan="2">전화번호</td>
                <td class="tg-uqo3" colspan="2">날짜</td>
                <td class="tg-uqo3" colspan="2">시간</td>
                <td class="tg-uqo3" colspan="2">인원</td>
                <td class="tg-uqo3" colspan="2">테이블</td>
                <td class="tg-uqo3" colspan="2">예약 수정</td>
              </tr>
            </thead>
    
            <tbody>
                <%
                
                while (rs.next()) {
                
                %>
            
            
                            
              <tr height="30" >
                <td class="tg-lax" colspan="1"><%= i + 1 %></td>

                <td class="tg-0lax" colspan="2"><%= ManageDAO.userName(rs.getString("user_id")) %></td>
                <td class="tg-0lax" colspan="2"><%= ManageDAO.userPhoneNumber(rs.getString("user_id")) %></td>

                <td class="tg-0lax" colspan="2"><%= rs.getString("date") %></td>
                <td class="tg-0lax" colspan="2"><%= rs.getString("time") %></td>
                <td class="tg-0lax" colspan="2"><%= rs.getString("covers") %></td>
                <td class="tg-0lax" colspan="2"><%= rs.getString("table_number") %></td>
                <!-- <td class="tg-0lax" colspan="2"><button type="submit" class="btn-reserb" onclick="GoCancleJSP()">예약 취소</button></td> -->
                <td class="tg-0lax" colspan="2"><input type="button"  style="margin-right: -50px; margin-left:25px; background:darkgray;"class="checkBtn" value="예약 수정" /></td>
                
              </tr>
              <%
                i++;
                }
                %>
            
            </tbody>
            </table>
            <div class="container">
                <div class="row">
                  <div class="col-12">
                    <div>
                    </div>
                    <!-- Submit Button-->
                      
                    </div>
                  </div>
                </div>
        </div>
    </body>

<script>
    
$(".checkBtn").click(function(){ 
  
  let str = ""
  let tdArr = new Array();   // 배열 선언
  let checkBtn = $(this);
  
  // checkBtn.parent() : checkBtn의 부모는 <td>이다.
  // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
  let tr = checkBtn.parent().parent();
  let td = tr.children();
  
/*       alert("클릭한 Row의 모든 데이터 : "+tr.text()); */
  
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
  location.href = "modify.jsp?data="+data;
}
</script>
  

</html>