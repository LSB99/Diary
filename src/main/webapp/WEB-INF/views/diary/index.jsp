<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/background.css" />
  <style>
  h1 { margin: 5% auto; text-align: center; font-size: 50pt; }
  h3 { margin: 15% auto; text-align: center; font-size: 30pt; }
  div.container { height:100%; width: 1200px; margin: 1% auto; font-size: 20pt; text-align: center;}

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
table.list td { padding: 100px; border: 10px solid gray; }
table.list th { padding: 100px; border: 10px solid gray;  background-color: #eee; }

  
  </style>
</head>
<body>
<h1>my diary</h1>
<div class="container">
   <table class="index">
  	<thead>
  		<tr> 
  			<th><a href="create" class="btn">달력</a></th>
  			<th><a href="create" class="btn">하루일정</a></th>
  			<th><a href="create" class="btn">일주일 계획</a></th>
  			<th><a href="create" class="btn">시간표</a></th>
  			<th><a href="bukitEdit" class="btn">버킷리스트</a></th>
  			<th><a href="diaryEdit" class="btn">일기장</a></th>
  			<th><a href="memoEdit" class="btn">메모장</a></th>
  		</tr>
  		<tr><th><a href="userDelete" class="btn">회원탈퇴</a></th></tr>
    </thead>
  </table>
  <h3>${ message }</h3>
</div>
</body>
</html>
