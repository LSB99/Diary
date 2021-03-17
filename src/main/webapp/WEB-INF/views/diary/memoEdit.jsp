<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Memo Edit</title>
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
      <div class="title">메모 쓰기</div>
      <table>
      <tr>
      		<td>userId: </td>
      		<td><input type = "text" name="userId" value="${ memos.userId }" /></td>
      	</tr>
      	<tr>
      		<td>내용: </td>
      		<td><textarea name="memolist" placeholder="잊기 전에 메모하기!" value="${ memos.memolist }"  /></textarea></td>
      	</tr>
      </table>
      <a href="memopad" class="btn">저장</a>
      <a href="memopad" class="btn">메모 목록보기</a>
       <c:if test="${ bukit.id>0 }"></c:if>
      <a href="memoDelete" class="btn" data-confirm-delete>삭제</a>
      
    </form>    
 </div>
</body>
</html>