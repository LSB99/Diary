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
<link
	href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap"
	rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Gamja Flower', cursive;
}

a {
	text-decoration: none;
}

ul {
	list-style: none;
}

#container {
	margin: 0px auto;
	width: 100%;
	height: 100px;
	background-color: lightpink;
}

#logo {
	font-style: italic;
	float: left;
	width: 250px;
	height: 100px;
	line-height: 100px;
	padding-left: 50px;
}

header {
	font-size: 43px;
	width: 100%;
	height: 100%;
	background-color: #045;
}

h1 {
	font-family: 'Della Respira', serif;
	text-shadow: 5px 5px 3px purple;
}

nav {
	font-size: 23px;
	float: right;
	width: 100%;
	height: 100px;
	padding-top: 30px;
	margin: -100px auto;
}

#topMenu {
	height: 60px;
}

#topMenu>li {
	float: right;
	position: relative;
}

#topMenu>li>a {
	display: block;
	font-size: 1.1em;
	color: gray;
	font-weight: 600;
	padding: 20px 60px;
}

#topMenu>li>a:hover {
	color: #1fa8f8;
	text-shadow: 0 -2px #222;
}

.contents {
	width: 1400px;
	margin: auto auto;
}

footer {
	width: 100%;
	height: 10%;
	border-top: 1px solid lightyellow;
	text-align: center;
}

table, th, td {
	border: 1px solid lightyellow;
	border-collapse: collapse;
	text-align: center;
	width: 100%;
	height: 40%;
	background: lightblue;
	font-size: 23px;
}

th, td {
	padding: 5px;
}

th {
	text-align: center;
}

input.time {
	width: 180px;
	height: 50px;
	font-size: 15pt;
	font-weight: bold;
	text-align: center;
}

input {
	width: 180px;
	height: 50px;
	font-size: 20pt;
	font-weight: bold;
	text-align: center;
}

.btn {
	width: auto;
	margin: 10px 5px;
	padding: 0.4em 1.5em;
	border: 5px solid lightblue;
	border-radius: 5em;
	background: linear-gradient(#fff, #ddd);
	text-decoration: none;
	color: black;
	font-size: 15pt;
	display: inline-block;
	float: right;
}
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
					<li><a href="memopad">메모장</a></li>
					<li><a href="diarySpace">일기</a></li>
					<li><a href="bukitlist">버킷리스트</a></li>
					<li><a href="timetable">시간표</a></li>
					<li><a href="weekList">일주일 계획</a></li>
					<li><a href="onedayList">하루일정</a></li>
					<li><a href="calendar">달력</a></li>
				</ul>
			</nav>
		</header>
		<main class="contents">

			<form method="post">

				<h1
					style="font-style: italic; text-shadow: 5px 5px 3px white; margin: 10px 500px; text-align: right; font-size: 50pt;">
					Time Table</h1>

				<button type="submit" class="btn">저장</button>



				<input type="hidden" id="userId" name="userId"
					value="${timetable.userId }" />


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
						<th><input class="time" type="text" name="time1"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time1 }" /></th>
						<td><input type="text" name="sun1"
							value="${ timetable.sun1 }" /></td>
						<td><input type="text" name="mon1"
							value="${ timetable.mon1 }" /></td>
						<td><input type="text" name="tue1"
							value="${ timetable.tue1 }" /></td>
						<td><input type="text" name="wed1"
							value="${ timetable.wed1 }" /></td>
						<td><input type="text" name="thu1"
							value="${ timetable.thu1 }" /></td>
						<td><input type="text" name="fri1"
							value="${ timetable.fri1 }" /></td>
						<td><input type="text" name="sat1"
							value="${ timetable.sat1 }" /></td>
					</tr>

					<tr>
						<th><input class="time" type="text" name="time2"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time2 }" /></th>
						<td><input type="text" name="sun2"
							value="${ timetable.sun2 }" /></td>
						<td><input type="text" name="mon2"
							value="${ timetable.mon2 }" /></td>
						<td><input type="text" name="tue2"
							value="${ timetable.tue2 }" /></td>
						<td><input type="text" name="wed2"
							value="${ timetable.wed2 }" /></td>
						<td><input type="text" name="thu2"
							value="${ timetable.thu2 }" /></td>
						<td><input type="text" name="fri2"
							value="${ timetable.fri2 }" /></td>
						<td><input type="text" name="sat2"
							value="${ timetable.sat2 }" /></td>
					</tr>
					<tr>
						<th><input class="time" type="text" name="time3"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time3 }" /></th>
						<td><input type="text" name="sun3"
							value="${ timetable.sun3 }" /></td>
						<td><input type="text" name="mon3"
							value="${ timetable.mon3 }" /></td>
						<td><input type="text" name="tue3"
							value="${ timetable.tue3 }" /></td>
						<td><input type="text" name="wed3"
							value="${ timetable.wed3 }" /></td>
						<td><input type="text" name="thu3"
							value="${ timetable.thu3 }" /></td>
						<td><input type="text" name="fri3"
							value="${ timetable.fri3 }" /></td>
						<td><input type="text" name="sat3"
							value="${ timetable.sat3 }" /></td>
					</tr>
					<tr>
						<th><input class="time" type="text" name="time4"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time4 }" /></th>
						<td><input type="text" name="sun4"
							value="${ timetable.sun4 }" /></td>
						<td><input type="text" name="mon4"
							value="${ timetable.mon4 }" /></td>
						<td><input type="text" name="tue4"
							value="${ timetable.tue4 }" /></td>
						<td><input type="text" name="wed4"
							value="${ timetable.wed4 }" /></td>
						<td><input type="text" name="thu4"
							value="${ timetable.thu4 }" /></td>
						<td><input type="text" name="fri4"
							value="${ timetable.fri4 }" /></td>
						<td><input type="text" name="sat4"
							value="${ timetable.sat4 }" /></td>
					</tr>
					<tr>
						<th><input class="time" type="text" name="time5"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time5 }" /></th>
						<td><input type="text" name="sun5"
							value="${ timetable.sun5 }" /></td>
						<td><input type="text" name="mon5"
							value="${ timetable.mon5 }" /></td>
						<td><input type="text" name="tue5"
							value="${ timetable.tue5 }" /></td>
						<td><input type="text" name="wed5"
							value="${ timetable.wed5 }" /></td>
						<td><input type="text" name="thu5"
							value="${ timetable.thu5 }" /></td>
						<td><input type="text" name="fri5"
							value="${ timetable.fri5 }" /></td>
						<td><input type="text" name="sat5"
							value="${ timetable.sat5 }" /></td>
					</tr>
					<tr>
						<th><input class="time" type="text" name="time6"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time6 }" /></th>
						<td><input type="text" name="sun6"
							value="${ timetable.sun6 }" /></td>
						<td><input type="text" name="mon6"
							value="${ timetable.mon6 }" /></td>
						<td><input type="text" name="tue6"
							value="${ timetable.tue6 }" /></td>
						<td><input type="text" name="wed6"
							value="${ timetable.wed6 }" /></td>
						<td><input type="text" name="thu6"
							value="${ timetable.thu6 }" /></td>
						<td><input type="text" name="fri6"
							value="${ timetable.fri6 }" /></td>
						<td><input type="text" name="sat6"
							value="${ timetable.sat6 }" /></td>
					</tr>
					<tr>
						<th><input class="time" type="text" name="time7"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time7 }" /></th>
						<td><input type="text" name="sun7"
							value="${ timetable.sun7 }" /></td>
						<td><input type="text" name="mon7"
							value="${ timetable.mon7 }" /></td>
						<td><input type="text" name="tue7"
							value="${ timetable.tue7 }" /></td>
						<td><input type="text" name="wed7"
							value="${ timetable.wed7 }" /></td>
						<td><input type="text" name="thu7"
							value="${ timetable.thu7 }" /></td>
						<td><input type="text" name="fri7"
							value="${ timetable.fri7 }" /></td>
						<td><input type="text" name="sat7"
							value="${ timetable.sat7 }" /></td>
					</tr>
					<tr>
						<th><input class="time" type="text" name="time8"
							placeholder="몇시 몇분을 입력하세요." value="${ timetable.time8 }" /></th>
						<td><input type="text" name="sun8"
							value="${ timetable.sun8 }" /></td>
						<td><input type="text" name="mon8"
							value="${ timetable.mon8 }" /></td>
						<td><input type="text" name="tue8"
							value="${ timetable.tue8 }" /></td>
						<td><input type="text" name="wed8"
							value="${ timetable.wed8 }" /></td>
						<td><input type="text" name="thu8"
							value="${ timetable.thu8 }" /></td>
						<td><input type="text" name="fri8"
							value="${ timetable.fri8 }" /></td>
						<td><input type="text" name="sat8"
							value="${ timetable.sat8 }" /></td>
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
