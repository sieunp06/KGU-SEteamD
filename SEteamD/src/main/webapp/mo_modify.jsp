 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String data = request.getParameter("data");
	System.out.println(data+"여기는 mo_modify.jsp임");
	
	String []arr = data.split("-/-/-");
	String name = arr[0];
	String phoneN = arr[1];
	String date = arr[2];
	String cover = arr[3];
	String time = arr[4];
	String table_number = arr[5];
	
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
            body{
                background-color:#212529;
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
        
            .reser {
                display: block;
                margin-bottom: 3px;
                padding: 3px;
                border: 1px solid lightgray;
                border-radius: 3px;
                height:40px;
            }
            #date{
                width: 370px;
            }
          select{
              width: 370px;
              height: 40px;
              border-radius: 2px;
              margin-bottom: 3px;
            padding: 3px;
            border-color: lightgray;
          }
          .container{
            margin-top: 25px;
          }

          .container1{
              margin-top: 25px;
          }
          .btn-reser{
  color:white;
  background-color: orange;
  border-color: rgb(227, 149, 5);
  border-radius: 3px;
  width: 80px;
  height: 40px;
  margin-top:40px;
  margin-left: 284px
  
}
.card{
  height: 70px;
  width: 120px;
  position: relative;
  float:left;
  margin: 2px;
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
  border: 3px solid orange;
}
input[type="radio"]:checked:after{
  background-color: orange;
}

*:after{
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}
        

.btn-reser{
  color:white;
  background-color: orange;
  border-color: rgb(229, 150, 3);
  border-radius: 3px;
  width: 120px;
  height: 50px;
  margin-top: 10px;
  margin-left: 10px
  
}


*:after{
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}
/*바꿈*/
.btn-table{
    width: 120px;
    height: 20px;
    font-size: x-small;
    color: black;
    
}
  
   /*폰트 넣을 class 추가*/         
   li,.container,.main1{
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
                var ret = confirm("예약을 변경 하시겠습니까?");
                if(ret==true) {
                    alert('예약 변경이 완료되었습니다.')
                    document.location.href="momodify.html";
                }
                else {
                    
                }
            }

            function show() {
                document.getElementById("tbs").src="tables.png";
            }
            function hide() {
                document.getElementById("tbs").src="";
            }
            </script>
</head>

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
                        <li class="nav-item"><a class="nav-link" href="index.html">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.html">Reservation</a></li>
                        <li class="nav-item"><a class="nav-link" href="reservation.html">Confirm/Modify</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.html">Log-in</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    <!-- Contact-->
    <section class="page-section" id="contact">
        <div class="main">
          
            <div class="container">
                <h6>이름</h6>
                <input type="text" placeholder="성명" id="name" class="reser"
					size="37" value="" name = "name" readonly/><br>
				<h6>전화번호</h6>
				<input type="tel" placeholder="전화번호" id="phoneN" class="reser"
					size="37" value="" name = "phoneN" readonly/><br>
               <h6>예약 날짜</h6>
                <input class="reser" id="date" type="date" placeholder="Date *" data-sb-validations="required,email" value="" name = "date" />
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
                <div class="container1">
                  <h6>예약 시간</h6>
              <select name="time" id="time" onchange="selectBoxChange2(this.value);" >
                  <option value="none">선택</option>
                  <option value="13:00:00">13:00</option>  
                  <option value="13:30:00">13:30</option>
                  <option value="14:00:00">14:00</option>
                  <option value="14:30:00">14:30</option>
                  <option value="15:00:00">15:00</option>
                  <option value="15:30:00">15:00</option>  
                  <option value="16:00:00">16:00</option>
                  <option value="16:30:00">16:30</option>
                  <option value="17:00:00">17:00</option>
                  <option value="17:30:00">17:30</option>
                  <option value="18:00:00">18:00</option>  
                  <option value="18:30:00">18:30</option>
                  <option value="19:00:00">19:00</option>
                  <option value="19:30:00">19:30</option>
                  <option value="20:30:00">20:00</option>
                  <option value="20:30:00">20:30</option>
                  <option value="21:00:00">21:00</option>
                  <option value="21:30:00">21:30</option>
                  <option value="22:00:00">22:00</option> 
              </select>
              </div>
            </div>
            </div>
        
 <div class="main1">
          <h2 class="logo">&nbsp;</h2>
          <div class="container">
              <!--바꿈-->
            <h5>Table 선택
            <button class="btn-table" style="border: none; background:rgb(168, 166, 166);border-radius:  40px 80px; "><a href="assets/img/tables.jpg" >(테이블 배치도 click!)</a></button></h5>

              
      
<div class="card">
					<input type="radio" name="re_table" value="1" id="card3"> <label
						for="card1"><span></span>1번 테이블</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="2" id="card4"> <label
						for="card2"> <span></span>2번 테이블
					</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="3" id="card1"> <label
						for="card3"> <span></span>3번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="4" id="card1"> <label
						for="card4"><span></span>4번 테이블</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="5" id="card1"> <label
						for="card5"><span></span>5번 테이블</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="6" id="card1"> <label
						for="card6"><span></span>6번 테이블</label><br>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="7" id="card1"> <label
						for="card7"> <span></span>7번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="8" id="card1"> <label
						for="card8"> <span></span>8번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="9" id="card1"> <label
						for="card9"> <span></span>9번 테이블
					</label>
				</div>
				<div class="card">
					<input type="radio" name="re_table" value="10" id="card1"> <label
						for="card10"> <span></span>10번 테이블
					</label><br>
				</div>
			</div>
			<button class="btn-reser" id="submitButton" type="button" onclick="modifyReservation()">예약변경</button>
		</div>
</section>  
</body>

<script>

	$(document).ready(function (){
		
		getData();
		
	})
	
	function getData(){
		
		let name = '<%=name%>';
		let phoneN = '<%=phoneN%>';
		let date = '<%=date%>';
		let cover = '<%=cover%>';
		let time = '<%=time%>';
		let table_number = '<%=table_number%>';
		
		$('input[name=name]').attr('value',name);
		$('input[name=phoneN]').attr('value',phoneN);
		$('input[name=date]').attr('value',date);
		$("#cover").val(cover);
		$("#time").val(time);
		$(":radio[name='re_table'][value='" + table_number + "']").attr('checked', true);

	}
	
	
	var selectBoxChange = function(value) {
		$("#covers").val(value);
	}
	var selectBoxChange2 = function(value) {
		$("#time").val(value);
	}
	
	function modifyReservation() {
		
		let pr_name = '<%=name%>';
		let pr_phoneN = '<%=phoneN%>';
		let pr_date = '<%=date%>';
		let pr_cover = '<%=cover%>명';
		let pr_time = '<%=time%>';
		let pr_table_number = '<%=table_number%>번';
		
		let name = $('#name').val();
		let phoneN = $('#phoneN').val();
		let date = $('#date').val();
		let cover = $('#cover').val();
		let time = $('#time').val();
		let table = $('input[name="re_table"]:checked').val();
		let data = pr_name + '-/-/-' + pr_phoneN + '-/-/-' + pr_date + '-/-/-' + pr_cover
		+ '-/-/-' + pr_time + "-/-/-" + pr_table_number + '-/-/-' + name + '-/-/-' + phoneN + '-/-/-' + date + '-/-/-' + cover
		+ '-/-/-' + time + "-/-/-" + table;
		
		//alert(data);
		
		$.ajax({
			url : "ajax.do",
			type : "post",
			data : {
				req : "modifyReservation",
				data : data
			},
			success : function(result) {
				alert("예약이 수정되었습니다.");
				location.href="index.jsp";
			}
		})
		
		
	}
	
	
</script>
</html>