<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${R}delete.js"></script>
  <link rel="stylesheet" type="text/css" href="${R}background.css" />
  <link rel="stylesheet" type="text/css" href="${R}edit.css" />
  <style>
   
    
  </style>
</head>
<body>
  <div class="container">
    <form method="post">
      <div class="title">일기 쓰기</div>
      <table>
      	<tr>
      		<td>userId: </td>
      		<td><input type = "text" value="${ diary.userId }" readonly disabled /></td>
      	</tr>
      	<tr>
      		<td>순번: </td>
      		<td><input type = "text" readonly disabled value="${ diary.id }" /></td>
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
          <td>내용: </td>
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