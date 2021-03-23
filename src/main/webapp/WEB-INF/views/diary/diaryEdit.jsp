<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Diary Edit</title>
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
  		<li><a href="memoEdit">메모장</a></li>
  		<li><a href="diaryEdit">일기</a></li>
  		<li><a href="bukitEdit">버킷리스트</a></li>
  		<li><a href="timetable">시간표</a></li>
  		<li><a href="weekEdit">일주일 계획</a></li>
  		<li><a href="oneday">하루일정</a></li>
  		<li><a href="calendar">달력</a></li>
  		
  	</ul>
  	</nav>
  	</header>
  	<main class="contents">
    <form method="post">
      <div class="title">일기 쓰기</div>
      <table>
      	<tr>
      		<td>userId: </td>
      		<td><input type = "text" name="userId" value="${ diary.userId }"  autofocus required /></td>
      	</tr>
      	<tr>
      		<td>제목: </td>
      		<td><input type = "text" name="title" value="${ diary.title }" required/></td>
      	</tr>
      	<tr>
          <td>날짜: </td>
          <td><input type="date" name="writeDate" value="${ diary.writeDate }" /></td>
        </tr>
        <tr>
          <td>내용: </td>
          <td><textarea name="diarylist" placeholder="오늘은 어떤 날이었나요?"  value="${ diary.diarylist }" /></textarea></td>
        </tr>
      </table>
      <a href="diarySpace" class="btn">저장</a>
      <a href="diarySpace" class="btn">일기 목록보기</a>
       <c:if test="${ bukit.id>0 }"></c:if>
      <a href="diaryDelete" class="btn" data-confirm-delete>삭제</a>
      
      <c:if test="${ not empty message }">
        <div class="message">
          ${ message }
        </div>
         </c:if>
    </form>
    </main>  
     <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>  
 </div>
</body>
</html>