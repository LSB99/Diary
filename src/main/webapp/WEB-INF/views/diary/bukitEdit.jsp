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
    div.container { width: 800px; margin: auto; padding: 50px; }
    form { box-shadow: 0 0 10px skyblue, 10px 10px 10px gray;
      overflow: auto; font-size: 20pt; }      
    div.title { font-size: 25pt; padding: 25px; background-color: lightblue; }
    table { margin: 50px; }
    td { min-width: 200; padding: 10px; }
    td:nth-child(1) { text-align: right; }
    input { width: 500px; text-align: left; padding: 10px; }
    .btn { width: auto; margin: 10px 5px; padding: 0.4em 1.5em; border: 5px solid lightblue;
       border-radius: 3em; background: linear-gradient(#fff, #ddd);
       text-decoration: none; color: black; font-size: 11pt;
       display: inline-block;  float: right;}
    
  </style>
</head>
<body>
  <div class="container">
    <form method="post">
      <div class="title">버킷리스트 작성</div>
      <table>
      	<tr>
      		<td>id</td>
      		<td><input type = "text" value="${ bukit.id }" readonly disabled /></td>
      	</tr>
        <tr>
          <td>내용:</td>
          <td><input type="text" name="bukitlist" value="${ bukit.bukitlist }" /></td>
        </tr>
      </table>
      <a href="bukitlist" class="btn">저장</a>
      <a href="bukitlist" class="btn">버킷리스트 목록보기</a>
      <c:if test="${ bukit.id>0 }"></c:if>
      <a href="bukitDelete" class="btn" data-confirm-delete>삭제</a>
      	      
      
      <c:if test="${ not empty message }">
        <div class="message">
          ${ message }
        </div>
         </c:if>
    </form>    
 </div>
</body>
</html>
