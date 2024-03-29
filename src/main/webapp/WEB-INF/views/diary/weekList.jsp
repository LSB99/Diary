<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<title>Week List</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/list.css" />
<link rel="stylesheet" type="text/css" href="/background.css" />

<style>
table.list1, table.list2 {
	background-color: white;
	height: 100px;
	width: 100%;
	font-size: 20pt;
}

table.list1 td, table.list2 td {
	height: 50px;
	padding: auto;
	border: 2px solid #f6ded4;
	font-size: 25pt;
	text-align: center;
}

table.list1 th, table.list2 th {
	padding: auto;
	border: 5px solid #f6ded4;
	background-color: #e9bba9;
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
				</ul>
			</nav>
		</header>
		<main class="contents">
		
		
		<form:form method="get" modelAttribute="pagination">
			
				<form:hidden path="pg" value="1" />
				
				<form:hidden path="sz" />
				
				
				<form:select path="sb" class="form-control ml20" itemValue="value" itemLabel="label" items="${ searchBy }" />
				<form:input path="st" class="form-control" placeholder="검색문자열" />
				 <button type="submit" class="btn btn-default">
     				 <i class="glyphicon glyphicon-search"></i> 검색</button>
   				<c:if test="${ pagination.sb > 0 }">
     			 <a class="btn btn-default" href="weekList?pg=1">
        			<i class="glyphicon glyphicon-ban-circle"></i> 검색취소</a>
   				 </c:if>
								
			</form:form>
		
		
			<table class="list1">
				<thead>
					<tr>
						<th>몇월 / 몇주 </th>
					</tr>
				<tbody>

					<c:forEach var="week" items="${ weeks }">
						<tr>
							<td><a href="weekListDetail?id=${ week.id }&${pagination.queryString}">${ week.myweek }</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }" 
                 queryStringName="pg" />

			<p>
				<a href="weekCreate?${pagination.queryString}" class="btn">일주일계획 작성</a>
			</p>
			<p>
				<a href="index" class="btn">처음으로 가기</a>
			</p>
		</main>
	</div>
</body>
</html>