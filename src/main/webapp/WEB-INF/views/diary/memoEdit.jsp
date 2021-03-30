<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Memo Edit</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${R}delete.js"></script>
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="${R}background.css" />
  <link rel="stylesheet" type="text/css" href="${R}edit.css" />
  <style>
    input{width:500px;}
	td:nth-child(1){font-size:28px;}
	textarea{font-size:30px;}
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
      <div class="title">메모 쓰기</div>
      <table>
      
      	<tr>
      		<td>내용: </td>
      		
      		<td>
      		    <textarea name="memolist" placeholder="잊기 전에 메모하세요!" required><c:out value="${ memo.memolist }" /></textarea>
      		</td>
      	</tr>
      </table>
      
      <button type="submit" class="btn">저장</button>
      
      <a href="memopad" class="btn">메모 목록보기</a>
      
       <c:if test="${ memo.id>0 }">
       
      	<a href="memoDelete?id=${memo.id}" class="btn" data-confirm-delete>삭제</a>
      
       </c:if>
       
    </form>    
    </main>
     <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
 </div>
</body>
</html>