<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Memo List</title>
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
p {
	font-size: 23px;
}

td:nth-child(1) {
	text-align: center;
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
			<table class="list">
				<thead>
					<tr>
						<th>메모 목록</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="memo" items="${ memos }">
						<tr>
							<td><a href="memoEdit?id=${ memo.id }">${ memo.memolist }</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<p>
				<a href="memoCreate" class="btn">메모 작성하기</a>
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