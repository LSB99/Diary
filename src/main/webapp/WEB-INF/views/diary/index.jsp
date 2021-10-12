<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<title>Main Home</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/background.css" />

  
  <style>
  
  h1 { margin: -10% auto; text-align: center; font-size: 65pt; text-shadow: 5px 5px 3px #7200da; color:#9068be; }
  h2 { margin: 1% 15% 10% 10%; font-size: 18pt; color: #e9bba9; }
  div.container { height:100%; width: 1200px; margin: 12% auto; font-size: 23pt; text-align: center;}

a.btn { width: 80%; margin: 10% auto; padding: 1em 3em; border: 8px solid #e9bba9;
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
	<img id="diary" src="https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80">
	<table class="userInfo">
		<col style="width: 200px;">
		<col style="width: 100px;">
		<col style="width: 100px;">
		<col style="width: 100px;">
		<thead>
			<tr>
				<th>${ userid }님,안녕하세요</th>
				<th><a href="${R}logout_processing" style="font-size: 13pt;">로그아웃</a></th>
				<th><a href="${R}user/index" style="font-size: 13pt;">마이페이지</a></th>
			</tr>
		</thead>
	</table>


	<h1>My Diary</h1>

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

	<div class="container">
		<ul class="prod-list">

			<li><a href="onedayList"> <img id="image" src="https://images.unsplash.com/photo-1503876466-1fc5143eda57?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80">
			</a>
				<div class="caption">
					<h2>오늘의 일정을 적어보세요!</h2>
				</div></li>

			<li><a href="weekList"> <img id="image" src="https://images.unsplash.com/photo-1506485338023-6ce5f36692df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80">
			</a>
				<div class="caption">
					<h2>이번주 계획을 적어보세요!</h2>
				</div></li>
			<li><a href="timetable"> <img id="image" src="https://images.unsplash.com/photo-1490430657723-4d607c1503fc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80">
			</a>
				<div class="caption">
					<h2>시간에 따른 계획을 적어보세요!</h2>
				</div></li>
			<li><a href="bukitlist"> <img id="image" src="https://images.unsplash.com/photo-1484264121943-78dd345bd494?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80">
			</a>
				<div class="caption">
					<h2>이루고 싶은 일, 소원을 적어보세요!</h2>
				</div></li>
			<li><a href="diarySpace"> <img id="image" src="https://images.unsplash.com/photo-1511871893393-82e9c16b81e3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80">
			</a>
				<div class="caption">
					<h2>오늘 하루 어땠는지 적어보세요!</h2>
				</div></li>
			<li><a href="memopad"> <img id="image" src="https://images.unsplash.com/photo-1611079829529-fe31a9531295?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80">
			</a>
				<div class="caption">
					<h2>이외의 것들을 적어보세요!</h2>
				</div></li>
		</ul>
		<h3>기록으로 하여금 기억하기</h3>
	</div>
</body>
</html>
