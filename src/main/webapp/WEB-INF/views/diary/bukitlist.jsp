<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>BukitList</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/list.css" />
   <link rel="stylesheet" type="text/css" href="/background.css" />

  <style>
  	a.btn { float: center; margin: -20px 0 5px 0; }
    td:nth-child(1) { text-align: center; }
    
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
    .contents { width:900px; margin: 100px auto; }
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
  <table class="list">
    <thead>
      <tr>
        <th>순번</th>
        <th>버킷리스트</th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>1</td>
    <td><a href="bukitEdit" class="btn">버킷리스트 내용</a></td>
    
    <tr>
       	<td colspan="2" style="font-size: 12pt;" >버킷리스트를 모두 이룰 수 있을 때까지..</td>
      </tr>
      
  </table>
  <p><a href="index" class="btn">처음으로 가기</a></p>
</main>

 <footer>
    		소프캡스톤<br>임수빈, 김보미
    </footer>
</div>
</body>
</html>
