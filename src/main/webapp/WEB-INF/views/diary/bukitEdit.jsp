<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
  <title>Bukit Edit</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${R}background.css" />
  <link rel="stylesheet" type="text/css" href="${R}edit.css" />
  
 
  <style>
  input { width: 550px; font-size:20pt; }
 
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
  		<li><a href="memopad">메모장</a></li>
  		<li><a href="diarySpace">일기</a></li>
  		<li><a href="bukitlist">버킷리스트</a></li>
  		<li><a href="timetable">시간표</a></li>
  		<li><a href="weekList">일주일 계획</a></li>
  		<li><a href="onedayList">하루일정</a></li>
  		
  	</ul>
  	</nav>
  	</header>
  
  	<main class="contents">
  	<form method="post">
  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <div class="title">버킷리스트 작성</div>
      
      <table>
      
        <tr>
        
          <td>내용: </td>
          
          <td><input type="text" name="body" value="${ bukit.body }" placeholder="꼭 이루고 싶은 목표를 적어보세요!" required/></td>
          
        </tr>
       
      </table>
      
      
      <button type="submit" class="btn" name="cmd" value="save">저장</button> 
      
      
      <a href="bukitlist?${pagination.queryString}" class="btn">버킷리스트 목록보기</a>
      
      <c:if test="${ bukit.id>0 }">
      
      	<button type="submit" class="btn" name="cmd" value="delete" data-confirm-delete>삭제</button>
      	
      </c:if>
      </form>
    </main>
 </div>
</body>
</html>
