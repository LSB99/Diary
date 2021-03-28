<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Week List</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="/list.css" />
   <link rel="stylesheet" type="text/css" href="/background.css" />

  <style>
  	table.list1, table.list2 {  background-color: lightyellow; height: 100px; width: 100%; font-size: 20pt; }
table.list1 td, table.list2 td { height: 50px; padding: auto; border: 2px solid pink; font-size: 17pt; text-align: center; }
table.list1 th, table.list2 th { padding: auto; border: 5px solid pink;  background-color: lightpink; }
    td:nth-child(1) { text-align: center; }
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
  		<li><a href="oneday">하루일정</a></li>
  		<li><a href="calendar">달력</a></li>		
  	</ul>
  	</nav>
  	</header>
  	<main class="contents">
  <table class="list1">
    <thead>
      <tr>
        <th>Monday</th>
        <th>Tuesday</th>
        <th>Wednesday</th>
        <th>Thursday</th>
      </tr>
    <tbody>
    <c:forEach var="week" items="${ weeks }" >
       <tr>
       <td><a href="weekEdit?id=${ week.id }">${ week.mon }</a></td> 
       <td><a href="weekEdit?id=${ week.id }">${ week.tue }</a></td> 
    	<td><a href="weekEdit?id=${ week.id }">${ week.wed }</a></td>
    	<td><a href="weekEdit?id=${ week.id }">${ week.thu }</a></td>  
       </tr>
       </c:forEach>
    </tbody>
  </table>
  
  <table class="list2">
    <thead>
      <tr>
      	<th>Friday</th>
      	<th>Saturday</th>
      	<th>Sunday</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="week" items="${ weeks }" >
       <tr>
    	<td><a href="weekEdit?id=${ week.id }">${ week.fri }</a></td> 
    	<td><a href="weekEdit?id=${ week.id }">${ week.sat }</a></td> 
    	<td><a href="weekEdit?id=${ week.id }">${ week.sun }</a></td> 
       </tr>
       </c:forEach>
    </tbody>
  </table>
  <p><a href="index" class="btn">처음으로 가기</a></p>
</main>
 <footer>
    		소프캡스톤<br>임수빈, 김보미
 </footer>
</div>
</body>
</html>