<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Calendar</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/background.css" />
 <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">

<style type="text/css">
 * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Gamja Flower', cursive;}
  a{ text-decoration: none; }
  ul { list-style:none; }
  #container { margin: 0px auto; width:100%; height: 100px; background-color: lightpink; }
  #logo { font-style: italic; float: left; width:250px; height: 100px; line-height: 100px; padding-left:50px; }
    header { font-size: 43px; width: 100%; height: 100%; background-color:#045; }
    h1{font-family: 'Della Respira', serif; text-shadow: 5px 5px 3px purple; }
    nav { font-size: 23px; float: right; width: 100%; height:100px; padding-top: 30px; margin: -100px auto; }
    #topMenu { height: 60px; }
    #topMenu > li{ float:right; position: relative; }
    #topMenu > li> a { display: block; font-size: 1.1em; color:gray; font-weight: 600;
    padding: 20px 60px; }
    #topMenu>li>a:hover { color: #1fa8f8; text-shadow: 0 -2px #222; } 
    .contents { width:700px; margin: 100px auto; }
    footer { width: 100%; height: 10%; border-top:1px solid lightyellow; text-align: center;}

td {
	width: 100px;
	height: 100px;
	text-align: center;
	font-size: 23px;
	font-weight:bold;
	border: 2px solid black;
	border-radius: 13px;
}
td:nth-child(1) { border: 2px solid red; }
td:nth-child(7) { border: 2px solid blue; }
th { width: 100px; height: 50px; text-align: center; font-size: 30px; }

.sunday {
	color: red;
}

.saturday {
	color: blue;
}

select{width:80px; height:30px; font-size: 15pt;}
input{width:100px; height:30px; border-radius: 15px; font-size: 15pt;}
</style>
<script>

	window.onload = function() {
		
		b.onclick = function() {
			
			var array = [ "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" ];
			
			var last_day = [ "31", "28", "31", "30", "31", "30", "31", "31",
				
					"30", "31", "30", "31" ];
			
			var sel = new Date(y.value, m.value - 1, 1);
			
			var calendar = "";
			
			var d_of_w = "";
			
			var count = 1;
			
			var gap = sel.getDay();
			
			var a = 0;
			
			var numb = 1;

			d_of_w += "<tr>";
			
			for (td = 0; td < 7; td++) { 
				
				if (td == 0) {
					
					d_of_w += "<th class=sunday>" + array[td] + "</th>";
					
				} 
				
				else if (td == 6) {
					
					d_of_w += "<th class=saturday>" + array[td] + "</th>";
					
				} 
				
				else {
					
					d_of_w += "<th >" + array[td] + "</th>";
				}
			}
			
			d_of_w += "</tr>";
			
			week.innerHTML = "<table align=center>" + d_of_w + "</table>";

			if (((y.value % 4 == 0) && (y.value % 100 != 0))
					|| (y.value % 400 == 0)) {
				last_day[1] = 29; //윤달이면 2월의 마지막날을 29일로 셋팅
			} else {
				last_day[1] = 28;
			}

			for (tr = 1; tr <= last_day[m.value - 1]; tr++) {
				
				if (count % 7 == 1) {
					calendar += "<tr>";
				}
				
				if (gap > a) {
					
					for (r = 0; r < gap; r++) { 
						calendar += "<td>" + "</td>";
						count++;
						a++; //
					}
				}
				
				if (count % 7 == 1) {
					calendar += "<td class=sunday>" + numb + "</td>";
				} 

				else if (count % 7 == 0) {
					calendar += "<td class=saturday>" + numb + "</td>";
				} 

				else {
					calendar += "<td>" + numb + "</td>";
				}
				
				count++;
				
				numb++;
				
				if (count % 7 == 1) { 
					calendar += "</tr>";
				}
			}
			con.innerHTML = "<table align=center>" + calendar + "</table>";
		}
	}
</script>
</head>
<body>
<div id="container">
  <header>
  	<div id="logo">
  	<a href="index"><h1>My Diary</h1></a>
  	</div>
  	<nav>
  	<ul id="topMenu">
  		<li><a href="memoCreate">메모장</a></li>
  		<li><a href="diaryCreate">일기</a></li>
  		<li><a href="bukitCreate">버킷리스트</a></li>
  		<li><a href="timetable">시간표</a></li>
  		<li><a href="weekCreate">일주일 계획</a></li>
  		<li><a href="oneday">하루일정</a></li>
  		<li><a href="calendar">달력</a></li>
  		
  	</ul>
  	</nav>
  	</header>
  	<main class="contents">
	<select id="y">
		<script>
			for (var year = 2021; year < 2100; year++) {
				document.write("<option>" + year + "</option>");
			}
		</script>
	</select>년

	<select id="m">
		<script>
			for (var month = 1; month < 13; month++) {
				document.write("<option>" + month + "</option>");
			}
		</script>
	</select>월
	<input type="button" id="b" value="달력보기">
	<div id="week"></div>
	<div id="con" class=bgimg></div>
	</main>
	
	 <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
	</div>
</body>
</html>