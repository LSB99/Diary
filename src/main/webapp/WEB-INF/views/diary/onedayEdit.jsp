<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Today List</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${R}delete.js"></script>
<link rel="stylesheet" type="text/css" href="${R}background.css" />
<link rel="stylesheet" type="text/css" href="${R}edit.css" />
<style>
input {
	width: 500px;
	font-size: 28px;
}

td {
	font-size: 29px;
}

textarea {
	font-size: 20pt;
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
				</ul>
			</nav>
		</header>
		<main class="contents">
			<form method="post">


				<div class="title">하루일정</div>

				<table>

					<tr>
						<td>오늘날짜:</td>
						<td><input type="date" name="today" value="${ plan.today }" /></td>
					</tr>

					<tr>

						<td>하루일정:</td>

						<td><textarea rows="5" cols="30" placeholder="오늘의 일정이 어떻게 되는지 적어주세요!" required name="body"><c:out value="${ plan.body }" /></textarea></td>

					</tr>

				</table>
				<button type="submit" class="btn" name="cmd" value="save">저장</button>

				<a href="onedayList?${pagination.queryString}" class="btn">하루일정 목록보기</a>

				<c:if test="${ plan.id>0 }">
				<button type="submit" class="btn" name="cmd" value="delete" data-confirm-delete>삭제</button>
				</c:if>

			</form>
		</main>
		<footer>
			소프캡스톤<br>임수빈, 김보미
		</footer>
	</div>
</body>
</html>
