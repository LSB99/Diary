<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Week List</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/list.css" />
<link rel="stylesheet" type="text/css" href="/background.css" />

<style>
table.list1, table.list2 {
	background-color: lightyellow;
	height: 100px;
	width: 100%;
	font-size: 20pt;
}

table.list1 td, table.list2 td {
	height: 50px;
	padding: auto;
	border: 2px solid pink;
	font-size: 25pt;
	text-align: center;
}

table.list1 th, table.list2 th {
	padding: auto;
	border: 5px solid pink;
	background-color: lightpink;
}

td:nth-child(1) {
	text-align: center;
}

p {
	font-size: 23px;
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
			<table class="list1">
				<thead>
					<tr>
						<th>몇월 / 몇주 </th>
					</tr>
				<tbody>

					<c:forEach var="week" items="${ weeks }">
						<tr>
							<td><a href="weekListDetail?id=${ week.id }">${ week.myweek }</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

			<p>
				<a href="weekCreate" class="btn">일주일계획 작성</a>
			</p>
			<p>
				<a href="index" class="btn">처음으로 가기</a>
			</p>
		</main>
		<footer>
			소프캡스톤<br>임수빈, 김보미
		</footer>
	</div>
</body>
</html>