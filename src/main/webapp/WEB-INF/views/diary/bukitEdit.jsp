<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
  <title>Bukit Edit</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${R}delete.js"></script>
  <link rel="stylesheet" type="text/css" href="${R}background.css" />
  <link rel="stylesheet" type="text/css" href="${R}edit.css" />
  <style>
  input { width: 500px; }
  
  * { margin: 0; padding: 0; box-sizing: border-box; }
  a{ text-decoration: none; }
  ul { list-style:none; }
  #container { margin: 0px auto; width:100%; height: 100px; background-color: lightpink; }
  #logo { float: left; width:250px; height: 100px; line-height: 100px; padding-left:50px; }
    header { font-size: 40px; width: 1550px; height: 100%; background-color:#045; }
    nav { font-size: 20px; float: right; width: 1400px; height:100px; padding-top: 30px; margin: -100px auto; }
    #topMenu { height: 60px; }
    #topMenu > li{ float:left; position: relative; }
    #topMenu > li> a { display: block; font-size: 1.1em; color:gray; font-weight: 600;
    padding: 20px 60px; }
    #topMenu>li>a:hover { color: #1fa8f8; text-shadow: 0 -2px #222; } 
    .contents { width:800px; margin: 100px auto; }
    footer { width: 100%; height: 10%; border-top:1px solid lightyellow; text-align: center;}
    
    
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
  		<li><a href="week">일주일 계획</a></li>
  		<li><a href="timetable">시간표</a></li>
  		<li><a href="bukitEdit">버킷리스트</a></li>
  		<li><a href="diaryEdit">일기</a></li>
  		<li><a href="memoEdit">메모장</a></li>
  		
  	</ul>
  	</nav>
  	</header>
  	<main class="contents">
    <form method="post">
      <div class="title">버킷리스트 작성</div>
      <table>
      <tr>
      		<td>userId: </td>
      		<td><input type = "text" name="userId" value="${ bukit.userId }" /></td>
      	</tr>
        <tr>
          <td>내용: </td>
          <td><input type="text" name="bukitlist" value="${ bukit.bukitlist }" /></td>
        </tr>
       
      </table>
      <a href="bukitlist" class="btn">저장</a>
      <a href="bukitlist" class="btn">버킷리스트 목록보기</a>
      <c:if test="${ bukit.id>0 }"></c:if>
      <a href="bukitDelete" class="btn" data-confirm-delete>삭제</a>
    </form>    
    
    </main>
    
    <footer>
    	
    		소프캡스톤<br>임수빈, 김보미
    
    </footer>
 </div>
</body>
</html>
