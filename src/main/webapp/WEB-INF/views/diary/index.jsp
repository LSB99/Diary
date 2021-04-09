<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Main Home</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/background.css" />

  
  <style>
  
  h1 { margin: -10% auto; text-align: center; font-size: 65pt; text-shadow: 5px 5px 3px #7200da; color:#9068be; }
  
  div.container { height:100%; width: 1200px; margin: 12% auto; font-size: 23pt; text-align: center;}

a.btn { width: 80%; margin: 1% auto; padding: 1em 3em; border: 8px solid #e9bba9;
       border-radius: 5em; background: linear-gradient(#fff, #ddd);
       text-decoration: none; color: black; font-size: 13pt;
       display: inline-block; float: center; }

.btn:active {
      -ms-transform: translateY(2px);
      -webkit-transform: translateY(2px);
      transform: translateY(2px);
      background: #ccc; }

table.list { border-collapse: collapse; width: 200%; }
table.list th { padding: 100px; border: 10px solid gray;  background-color: #eee; }

#circle { border-radius: 50%; margin: -50px 400px;} 
h3 { opacity: 0; transition: all 0.6s ease-in-out; z-index: 10;}
h3:hover { opacity: 1; transform: translateY(-50px); }
#diary { border-radius: 15%; margin: 50px 800px; transition-property: width, height; transition-duration: 2s, 1s; }
#diary:hover { width: 300px; height: 200px; }
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
  			
  			<th><a href="onedayList" class="btn">하루일정</a></th>
  			
  			<th><a href="weekList" class="btn">일주일 계획</a></th>
  			
  			<th><a href="timetable" class="btn">시간표</a></th>
  			
  			<th><a href="bukitlist" class="btn">버킷리스트</a></th>
  			
  			<th><a href="diarySpace" class="btn">일기장</a></th>
  			
  			<th><a href="memopad" class="btn">메모장</a></th>
  			
  		</tr>
  		<tr>
  		<th><a href="logout" class="btn">로그아웃</a></th>
  		<th><a href="userDelete" class="btn">회원탈퇴</a></th>
  		</tr>
    </thead>
  </table>
  <h3>기록으로 하여금 기억하기</h3>
  <img id="circle" src="https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80"
  alt="" width="25%" >
  
 
  
   <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
</div>
</body>
</html>
