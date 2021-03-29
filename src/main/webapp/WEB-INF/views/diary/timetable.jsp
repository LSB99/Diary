<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Time Table</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/background.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>

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
    .contents { width:1400px; margin: auto auto; }
    footer { width: 100%; height: 10%; border-top:1px solid lightyellow; text-align: center;}

	
table, th, td {
	border: 1px solid lightyellow;
	border-collapse: collapse;
	text-align: center;
	width: 100%;
	height: 40%;
	background:lightblue;
	font-size: 23px;
}

th, td {
	padding: 5px;
}

th {
	text-align: center;
}

input { width:180px; height:50px; font-size: 13pt; }
.btn { width: auto; margin: 10px 5px; padding: 0.4em 1.5em; border: 5px solid lightblue;
       border-radius: 5em; background: linear-gradient(#fff, #ddd);
       text-decoration: none; color: black; font-size: 15pt;
       display: inline-block;  float: right; }
</style>
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
  		<li><a href="onedayCreate">하루일정</a></li>
  		<li><a href="calendar">달력</a></li>
  	</ul>
  	</nav>
  	</header>
  	<main class="contents">

 <form method="post">
 
	<h1 style="font-style: italic; text-shadow: 5px 5px 3px white; margin: 10px 500px; 
	text-align: right; font-size: 50pt;"> Time Table </h1>
	
	<button type="submit" class="btn">저장</button>

	<table>

		<tr>
			<th></th>
			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
 
		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>

		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>
		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>
		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>
		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>
		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>
		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>
		<tr>
			<th><input type="text" name="time" placeholder="몇시 몇분을 입력하세요." value="${ timetable.time }" /></th>
			<td><input type="text" name="sun"  value="${ timetable.sun }" /></td>
			<td><input type="text" name="mon"  value="${ timetable.mon }" /></td>
			<td><input type="text" name="tue"  value="${ timetable.tue }" /></td>
			<td><input type="text" name="wed"  value="${ timetable.wed }"  /></td>
			<td><input type="text" name="thu"  value="${ timetable.thu }" /></td>
			<td><input type="text" name="fri"  value="${ timetable.fri }" /></td>
			<td><input type="text" name="sat"  value="${ timetable.sat }" /></td>
		</tr>
	</table>
	
	</form>
	</main>
	 <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
	</div>
</body>
</html>
