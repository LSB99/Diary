<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<c:url var="R" value="/" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>BukitList</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${R}common.js"></script>

<link rel="stylesheet" type="text/css" href="/list.css" />
<link rel="stylesheet" type="text/css" href="/background.css" />

<style>
a.btn {
	float: center;
	margin: -20px 0 5px 0;
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
				
				
				<span>버킷리스트:</span>
				
				
				<form:select path="di" class="form-control">
				
					<form:option value="0">전체</form:option>
					
					<form:options itemValue="id" itemLabel="body" items="${ bukits }" />

                 </form:select>
                             
				<button type="submit" class="btn">검색</button>
								
			</form:form>



			<table class="list">
				<thead>
					<tr>

						<th>버킷리스트</th>
					</tr>
				</thead>


				<tbody>

					<c:forEach var="bukit" items="${ bukits }">
					
						<tr>

							<td><a href="bukitEdit?id=${ bukit.id }&${pagination.queryString}">${ bukit.body }</a></td> 
						
						</tr>
						
					</c:forEach>


					<tr>
						<td colspan="2" style="font-size: 12pt;">버킷리스트를 모두 이룰 수 있을
							때까지..</td>
					</tr>
			</table>


			<my:pagination pageSize="${ pagination.sz }"
				recordCount="${ pagination.recordCount }" queryStringName="pg" />

			<p>
				<a href="bukitCreate?${pagination.queryString}" class="btn">버킷리스트
					작성하기</a>
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
