<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Diary Edit</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="${R}background.css" />


<style>
* { margin: 0; padding: 0; box-sizing: border-box; }
  a{ text-decoration: none; }
  ul { list-style:none; }
  #container { margin: 0px auto; width:100%; height: 100px; background-color: lightpink; }
  #logo { float: left; width:250px; height: 100px; line-height: 100px; padding-left:50px; }
     header { font-size: 43px; width: 100%; height: 120%; background-color:rgba(166,150,200,1);  background:linear-gradient(45deg, #e9bba9, #854e4b);}
    h1{ text-shadow: 5px 5px 3px #7200da; color:#9068be; font-size: 70pt;}
    nav { font-size: 18pt; float: right; width: 100%; height:100px; padding-top: 30px; margin: -100px auto; }
    #topMenu { height: 60px; }
    #topMenu > li{ float:right; position: relative; }
    #topMenu > li> a { display: block; font-size: 1.1em; color:white; font-weight: 600;
    padding: 50px 60px; }
    #topMenu>li>a:hover { color: #B9A7C2; text-shadow: 0 -2px #222; } 
    .contents { width:900px; margin: 100px auto; }
     #right-sidebar{ margin: -560px auto; width:23%; height:560px;  background: black; background-image:url('https://images.unsplash.com/photo-1528604891270-c2d9c3d1fc0b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'); float: right;}
    footer { width: 100%; height: 10%; border-top:1px solid white; text-align: center;}

form { background-color:white; box-shadow: 0 0 10px #e2af90, 10px 10px 10px gray;
      overflow: auto; border-radius: 15px; }      
    div.title { color: white; font-size: 25pt; padding: 25px; background-color: #e2af90; font-weight:bold;}
    table { margin: 50px; }
    td { min-width: 100; padding: 10px; font-weight:bold; float:center;}
   .btn { width: auto; margin: 10px 5px; padding: 0.4em 1.5em; border: 5px solid #e2af90;
       border-radius: 5em; background: linear-gradient(#fff, #ddd);
       text-decoration: none; color: black; font-size: 10pt;
       display: inline-block;  float: right;}

 .contents { width:900px; margin: 100px auto; }
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

				<div class="title">${ diary.title }</div>

				<table>
					<tr>
						<td style="font-size: 30pt; text-align: left"><fmt:formatDate pattern="yyyy-MM-dd" value="${ diary.writeDate }"/></td>
					<tr>
						<td style="text-align: left">${ diary.body }</td>
					</tr>

				</table>
				
				<a class="btn btn-primary" href="diaryEdit?id=${ diary.id }&${ pagination.queryString }"> 수정하기 </a>
    			<a class="btn btn-default" href="diarySpace?${ pagination.queryString }"> 목록으로</a>
		</main>
		 
		<footer>
			소프캡스톤<br>임수빈, 김보미
		</footer>
	</div>
</body>
</html>