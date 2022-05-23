<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String data = request.getParameter("data");
	System.out.println(data+"여기는 table.jsp임");
	String []arr = data.split("-/-/-");
	String name = arr[0];
	String phoneN = arr[1];
	String date = arr[2];
	String cover = arr[3];
	String time = arr[4];
	
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
        <link rel="icon" type="image/x-icon" href="assets/favicon.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style media="screen">
          
          h5{
                margin-bottom: 20px;
            }
         
            .main {
                width: 400px;
                height: 500px;
                display: flex;
                float:left;
                 margin:50px;
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
            
            
.card{
  height: 70px;
  width: 120px;
  position: relative;
  float:left;
  margin: 1px;
  margin-bottom: 3px;
  font-size:13px
}

input[type="radio"]{
  -webkit-appearance: none;
  appearance: none;
  background-color: white;
  height: 100%;
  width: 100%;
  border-radius: 10px;
  position: absolute;
  box-shadow: 7px 7px 15px rgba(2,28,53,0.08);
  cursor: pointer;
  outline: none;
}
input[type="radio"]:before{
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
input[type="radio"]:after{
  content: "";
  position: absolute;
  height: 13px;
  width: 13px;
  background-color: transparent;
  border-radius: 50%;
  top: 12.5px;
  right: 8.5px;
  
}
label{
    position: absolute;
  margin: 20px;
  cursor: pointer;
}
input[type="radio"]:hover{
  transform: scale(1.05);
}
input[type="radio"]:checked{
  border: 3px solid rgba(26, 169, 226, 0.671);
}
input[type="radio"]:checked:after{
  background-color: rgba(25, 168, 224, 0.671);
}
/*****************************************/
input[type='radio']:disabled {
  border: 3px solid rgba(255, 102, 102, 0.671);
}

*:after{
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}
        
/*바뀐 css*/
.btn-reser{
  color:white;
  background-color: rgba(26, 169, 226, 0.671);
  border-color: rgba(6, 126, 173, 0.865);
  border-radius: 3px;
  width: 80px;
  height: 40px;
  margin-top: 0;
 
  display: inline-block;
  
}
.btn-resers{
  color:white;
  background-color: darkgray;
  border-color: rgba(169, 169, 169, 0.868);
  border-radius: 3px;
  width: 80px;
  height:40px;

  margin-right: 192px;
margin-left: -7px; 
  display: inline-block;
}
#con{
    margin-top: 15px;
}
/*여기까지가 바뀐 css*/
img{
    width: 350px;
    height: 350px;
    display: block; margin: 0px auto;
}
.btn-table{
    width: 100px;
    font-size: x-small;
    border-color: white;
}
   /*폰트 넣을 class 추가*/         
   li,.main1{
                font-family:'Montserrat';
            }
            .menu:after{display:block; content:''; clear:both;}
            .menu > li{position:relative; float:left; margin-right:5px;}
            .menu > li > a{display:block; padding:0 15px;  height:40px; line-height:40px; color:#fff;}
            .menu > li:hover .sub-menu {opacity:1; visibility:visible;}
            .sub-menu{visibility:visible; opacity:0; position:absolute; left:0; right:0; margin-left:15px;}

            .navbar-brands{
                margin-top: 6px;
            }
            
            </style>

</head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.png" style="width:120px" alt="..." /></a>
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
                                <li><a href="con_confirm.html">Confirm</a></li>
                                <li><a href="mo_modify.html">Modify</a></li>
                                <li><a href="cancel.html">Cancel</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Log-out</a></li>
                        <li class="navbar-brands"><a class="nav-link" href="manage.jsp">
<!--                         <img src="assets/img/user.png"> -->
                        </a></li>
                    </ul>
                </div>
            </div>
        </nav>
    <!-- Contact-->
    <section class="page-section" id="contact">
        <div class="main">
            <h2 class="logo">&nbsp;</h2>
                <div class="container">
                <h5>Table 배치</h5>
                <img src="assets/img/tables.png">
            </div>
        </div>

            

       <div class="main1">
			<h6 class="logo">&nbsp;</h6>
			<div class="container">
				<h5>Table 선택</h5>

				<div class="card">
					<input type="radio" name="re_table1" value="1-/-/-2" id="card1"> <label
						for="card1"><span></span>1번 테이블</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table2" value="2-/-/-2" id="card1"> <label
						for="card2"> <span></span>2번 테이블
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_table3" value="3-/-/-2" id="card1"> <label
						for="card3"> <span></span>3번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table4" value="4-/-/-2" id="card1"> <label
						for="card4"><span></span>4번 테이블</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table5" value="5-/-/-4" id="card1"> <label
						for="card5"><span></span>5번 테이블</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table6" value="6-/-/-4" id="card1"> <label
						for="card6"><span></span>6번 테이블</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_table7" value="7-/-/-4" id="card1"> <label
						for="card7"> <span></span>7번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table8" value="8-/-/-4" id="card1"> <label
						for="card8"> <span></span>8번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table9" value="9-/-/-6" id="card1"> <label
						for="card9"> <span></span>9번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table10" value="10-/-/-6" id="card1"> <label
						for="card10"> <span></span>10번 테이블
					</label><br>
				</div>
			</div>
   

    <div id="con">
    <div style="display:inline-block"><button class="btn-resers" id="submitButton" type="button" onclick="document.location.href='reservation.jsp'">이전</button></div> 
    <div style="display:inline-block"><button class="btn-reser" id="submitButton" type="button" onclick="addReservation()">Reservation</button></div>
    </div>
</section>  
</body>

<script>

 	$(document).ready(function (){
		
		duplication();
		
	})
	
	function duplication(){
		
		let date = "<%=date%>";
		let time = "<%=time%>";
		let data = date + '-/-/-' + time;
		
		$.ajax({
			url : "ajax.do",
			type : "post",
			data : {
				req : "checkDuplication",
				data : data
			},
			success : function(result) {
				let tableArr = [];
				tableArr = result.split('-/-/-');
				let table1 = tableArr[0];
				let table2 = tableArr[1];
				let table3 = tableArr[2];
				let table4 = tableArr[3];
				let table5 = tableArr[4];
				let table6 = tableArr[5];
				let table7 = tableArr[6];
				let table8 = tableArr[7];
				let table9 = tableArr[8];
				let table10 = tableArr[9];
				
 				if(table1 == 1){
 					$("input[name='re_table1']").attr('disabled',true);
				} 
				if(table2 == 2){
					//$('input:radio[name=re_table]:input[value=2-/-/-2]').attr("disabled", true);
					$("input[name='re_table2']").attr('disabled',true);
				}
				 if(table3 == 3){
					 $("input[name='re_table3']").attr('disabled',true);
				}
				if(table4 == 4){
					$("input[name='re_table4']").attr('disabled',true);
				}
				if(table5 == 5){
					$("input[name='re_table5']").attr('disabled',true);
				}
				if(table6 == 6){
					$("input[name='re_table6']").attr('disabled',true);
				}
				if(table7 == 7){
					$("input[name='re_table7']").attr('disabled',true);
				}
				if(table8 == 8){
					$("input[name='re_table8']").attr('disabled',true);
				}
				if(table9 == 9){
					$("input[name='re_table9']").attr('disabled',true);
				}
				if(table10 == 10){
					$("input[name='re_table10']").attr('disabled',true);
				}
				
				//alert(result);
			}
		})
		
	} 
	
	
	function addReservation() {
		
		//let table_NS = $('input[name="re_table"]:checked').val();
		let table_NS = $('input[id="card1"]:checked').val();
		let table_ns = [];
		table_ns = table_NS.split('-/-/-');
		let table = table_ns[0];
		let table_seats = table_ns[1];
/* 		alert(table+"--"+table_seats); */
			
/* 		let table = $('input[name="re_table"]:checked').val();
		let table_seats; */
		let data = "<%=data%>";
		data = data + "-/-/-" + table;
		//alert(data);
		
		let cover = <%=cover%>;
		
		
		
 		if(cover > table_seats) {
			alert(cover+"명은"+table+"번 테이블에 앉을 수 없습니다.");
			location.reload();
		}
		else{
			addReservation2(data);
		} 	
	}
	
	function addReservation2(data){
		
		$.ajax({
			url : "ajax.do",
			type : "post",
			data : {
				req : "addReservation",
				data : data
			},
			success : function(result) {
				//alert(result);
//				location.href="confirm.jsp";
				passData(data);
			}
		})
		
	}
	
	function passData(data){
		location.href = "confirm.jsp?data="+data;
	}
	
	
</script>

</html>