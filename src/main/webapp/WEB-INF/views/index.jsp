<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <link rel="stylesheet" type="text/css" href="/common.css" />
  <style>
    a.btn { float: right; margin: 50px 0 70px 0; }
    td:nth-child(1) { text-align: center; }
  </style>
</head>
<body>
<div class="container">
  <h1>my diary</h1>
   <table class="index">
  	<thead>
  		<tr> 
  			<th><a href="create" class="btn">달력</a></th>
  			<th><a href="create" class="btn">하루일정</a></th>
  			<th><a href="create" class="btn">일정리스트</a></th>
  			<th><a href="create" class="btn">일주일 계획</a></th>
  			<th><a href="create" class="btn">한달 계획</a></th>
  			<th><a href="create" class="btn">1년 계획</a></th>
  			<th><a href="create" class="btn">시간표</a></th>
  			<th><a href="bukitEdit" class="btn">버킷리스트</a></th>
  			<th><a href="diaryEdit" class="btn">일기장</a></th>
  			<th><a href="lineMemo" class="btn">줄 있는 메모장</a></th>
  			<th><a href="memo" class="btn">줄 없는 메모장</a></th>
  		</tr>
    </thead>
  </table>
  <h3>${ message }</h3>
</div>
</body>
</html>
