<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    input { width: 500px; }
    
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
  		<li><a href="calendar">달력</a></li>
  		<li><a href="oneday">하루일정</a></li>
  		<li><a href="weekEdit">일주일 계획</a></li>
  		<li><a href="timetable">시간표</a></li>
  		<li><a href="bukitEdit">버킷리스트</a></li>
  		<li><a href="diaryEdit">일기</a></li>
  		<li><a href="memoEdit">메모장</a></li>
  		
  	</ul>
  	</nav>
  	</header>
  	<main class="contents">
    <form method="post">
      <div class="title">하루일정</div>
      <table>
      
       <tr>
          <td>userId: </td>
          <td><input type="text" name="userId" value="${ plan.userId }"  autofocus required/></td>
        </tr>
      
        <tr>
          <td>오늘날짜: </td>
          <td><input type="date" name="today" value="${ plan.today }" /></td>
        </tr>
        
        <tr><td>하루 일정: </td>
        <td><textarea rows="5" cols="30"  placeholder="오늘의 일정이 어떻게 되는지 적어주세요!"  name="plan">${ plan.todayplan }</textarea></td>
        </tr>
        
      </table>
      <button type="submit" class="btn">저장</button>
     	      
    </form>  
    </main>  
     <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
 </div>
</body>
</html>
