<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Main Home</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/background.css" />
  
  <style>
  h1 { margin: -150px auto; text-align: center; font-size: 60pt; color: purple; }
  
  div.container { height:100%; width: 1200px; margin: 12% auto; font-size: 20pt; text-align: center;}

a.btn { width: 80%; margin: 1% auto; padding: 1em 3em; border: 8px solid pink;
       border-radius: 5em; background: linear-gradient(#fff, #ddd);
       text-decoration: none; color: black; font-size: 10pt;
       display: inline-block; float: center; }

.btn:active {
      -ms-transform: translateY(2px);
      -webkit-transform: translateY(2px);
      transform: translateY(2px);
      background: #ccc; }

table.list { border-collapse: collapse; width: 200%; }
table.list th { padding: 100px; border: 10px solid gray;  background-color: #eee; }

#circle { border-radius: 50%; }
#diary { border-radius: 15%; margin: 50px 800px; }
  
  </style>
</head>
<body>
<img id="diary" src="https://images.unsplash.com/photo-1511871893393-82e9c16b81e3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
alt="" width="15%">
<h1>My Diary</h1>
<div class="container">
   <table class="index">
  	<thead>
  		<tr> 
  			<th><a href="calendar" class="btn">달력</a></th>
  			<th><a href="oneday" class="btn">하루일정</a></th>
  			<th><a href="weekEdit" class="btn">일주일 계획</a></th>
  			<th><a href="timetable" class="btn">시간표</a></th>
  			<th><a href="bukitEdit" class="btn">버킷리스트</a></th>
  			<th><a href="diaryEdit" class="btn">일기장</a></th>
  			<th><a href="memoEdit" class="btn">메모장</a></th>
  		</tr>
  		<tr><th><a href="userDelete" class="btn">회원탈퇴</a></th></tr>
    </thead>
  </table>
  <img id="circle" src="https://images.unsplash.com/photo-1481819613568-3701cbc70156?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  alt="" width="25%" >
 
  
   <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
</div>
</body>
</html>
