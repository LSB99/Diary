<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<c:url var="R" value="/" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>DiaryList</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${R}res/common.js"></script>
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

				</ul>
			</nav>
		</header>
		<main class="contents">
		
		<form:form method="get" modelAttribute="pagination">
			
				<form:hidden path="pg" value="1" />
				
				<form:select path="sb" class="form-control ml20" itemValue="value" itemLabel="label" items="${ searchBy }" />
				<form:input path="st" class="form-control" placeholder="검색문자열" />
				 <button type="submit" class="btn btn-default">
     				 <i class="glyphicon glyphicon-search"></i> 검색</button>
   				<c:if test="${ pagination.sb > 0 }">
     			 <a class="btn btn-default" href="diarySpace?pg=1">
        			<i class="glyphicon glyphicon-ban-circle"></i> 검색취소</a>
   				 </c:if>

				<form:hidden path="sz" />
							
			</form:form>
		
		
			<table class="list">
				<thead>
					<tr>
						<th>날짜</th>
						<th>제목</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="diary" items="${ diarys }">

						<tr>

							<td><fmt:formatDate value="${ diary.writeDate }" pattern="yyyy-MM-dd" /></td>

							<td><a href="diaryEdit?id=${ diary.id }&${pagination.queryString}"> ${ diary.title }
							</a></td>

						</tr>
					</c:forEach>
					<tr>
						<td colspan="3" style="font-size: 12pt;">오늘 하루도 수고했어요!</td>
					</tr>
				</tbody>
			
			</table>
			<my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }" 
                 queryStringName="pg" />
			
			<p>
				<a href="diaryCreate?${pagination.queryString}" class="btn">일기 작성하기</a>
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