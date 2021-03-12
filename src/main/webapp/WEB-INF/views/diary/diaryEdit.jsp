<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="/delete.js"></script>
  <link rel="stylesheet" type="text/css" href="/background.css" />
  <style>
    div.container { width: 800px; margin: 60px auto; }
    form { box-shadow: 0 0 10px skyblue, 10px 10px 10px gray;
      overflow: auto; font-size: 20pt; }      
    div.title { font-size: 25pt; padding: 25px; background-color: lightblue; }
    table { margin: 50px; }
    td { min-width: 100; padding: 10px; }
    td:nth-child(1) { text-align: right; }
    input { width: 300px; padding: .8em .5em; font-size: 12pt; text-align: center; }
   .btn { width: auto; margin: 10px 5px; padding: 0.4em 1.5em; border: 5px solid lightblue;
       border-radius: 5em; background: linear-gradient(#fff, #ddd);
       text-decoration: none; color: black; font-size: 11pt;
       display: inline-block;  float: right;}
   textarea { width: 500px; height: 300px; padding: .8em .5em; font-size: 11pt; }
    
  </style>
</head>
<body>
  <div class="container">
    <form method="post">
      <div class="title">일기 쓰기</div>
      <table>
      	<tr>
      		<td>id</td>
      		<td><input type = "text" value="${ diary.id }" readonly disabled /></td>
      	</tr>
      	<tr>
      		<td>제목: </td>
      		<td><input type = "text" name="title" value="${ diary.title }"  /></td>
      	</tr>
      	<tr>
          <td>날짜: </td>
          <td><input type="date" name="writeDate" value="${ diary.writeDate }" /></td>
        </tr>
        <tr>
          <td>작성:</td>
          <td><textarea name="diarylist" placeholder="오늘은 어떤 날이었나요?"  value="${ diary.diarylist }" /></textarea></td>
        </tr>
      </table>
      <a href="diarySpace" class="btn">저장</a>
      <a href="diarySpace" class="btn">일기 목록보기</a>
       <c:if test="${ bukit.id>0 }"></c:if>
      <a href="diaryDelete" class="btn" data-confirm-delete>삭제</a>
      
      <c:if test="${ not empty message }">
        <div class="message">
          ${ message }
        </div>
         </c:if>
    </form>    
 </div>
</body>
</html>