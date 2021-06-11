<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Week Edit</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${R}delete.js"></script>
<link rel="stylesheet" type="text/css" href="${R}background.css" />
<link rel="stylesheet" type="text/css" href="${R}edit.css" />
<style>
input {
	width: 500px;
}

textarea {
	width: 550px;
	height: 100px;
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
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<div class="title">일주일 계획</div>

				<table>

					<tr>
						<td>몇월 <br /> 몇주:
						</td>
						<td><textarea name="myweek" placeholder="몇월 몇주를 적어주세요!"><c:out value="${ week.myweek }" /></textarea></td>
					</tr>

					<tr>
						<td>월요일:</td>
						<td><textarea name="mon" placeholder="월요일에 할 일을 적어주세요!"><c:out value="${ week.mon }" /></textarea></td>
					</tr>

					<tr>
						<td>화요일:</td>
						<td><textarea name="tue" placeholder="화요일에 할 일을 적어주세요!"><c:out value="${ week.tue }" /></textarea></td>
					</tr>

					<tr>
						<td>수요일:</td>
						<td><textarea name="wed" placeholder="수요일에 할 일을 적어주세요!"><c:out value="${ week.wed }" /></textarea></td>
					</tr>

					<tr>
						<td>목요일:</td>
						<td><textarea name="thu" placeholder="목요일에 할 일을 적어주세요!"><c:out value="${ week.thu }" /></textarea></td>
					</tr>

					<tr>
						<td>금요일:</td>
						<td><textarea name="fri" placeholder="금요일에 할 일을 적어주세요!"><c:out value="${ week.fri }" /></textarea></td>
					</tr>

					<tr>
						<td>토요일:</td>
						<td><textarea name="sat" placeholder="토요일에 할 일을 적어주세요!"><c:out value="${ week.sat }" /></textarea></td>
					</tr>

					<tr>
						<td>일요일:</td>
						<td><textarea name="sun" placeholder="일요일에 할 일을 적어주세요!"><c:out value="${ week.sun }" /></textarea></td>
					</tr>
				</table>


				<button type="submit" class="btn" name="cmd" value="save">저장</button>

				<a href="weekList?${pagination.queryString}" class="btn">일주일 계획 보기</a>


				<c:if test="${ week.id > 0 }">

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