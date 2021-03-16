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
    input { width: 500px; }
    
  </style>
</head>
<body>
  <div class="container">
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
 </div>
</body>
</html>
