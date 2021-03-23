<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/"/>

<!DOCTYPE html>
<html>
<head>
<title>User Delete</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="${R}background.css" />
  <link rel="stylesheet" type="text/css" href="${R}edit.css" />
  
  <style>
  
  form { width: 600px; margin: 40px auto; }
  	p { margin: -19px 60px; }
    td{font-weight:bold;}
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
    <form method="post" autocomplete="off">
      <div class="title">회원정보를 입력하세요</div>
      <table>
      
       <tr>
          <td>이름: </td>
          <td><input type="text" name="name" value="${ user.name }"  autofocus required/></td>
        </tr>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }" required/></td>
        </tr>
        <tr>
          <td>비밀번호: </td>
          <td><input type="password" name="password" value="${ user.password }" required/></td>
        </tr>
      </table>
	
	  <button type="submit" class="btn">탈퇴하기</button>
	  
    </form>  
    </main>  
     <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
 </div>
</body>
</html>