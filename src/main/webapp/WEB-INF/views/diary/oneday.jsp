<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Today List</title>
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
      <div class="title">하루일정</div>
      <table>
      
       <tr>
          <td>userId: </td>
          <td><input type="text" name="userId" value="${ plan.userId }" /></td>
        </tr>
      
        <tr>
          <td>오늘날짜: </td>
          <td><input type="date" name="today" value="${ plan.today }" /></td>
        </tr>
        
        <tr><td>하루 일정: </td>
        <td><textarea rows="5" cols="30" name="plan">${ plan.todayplan }</textarea></td>
        </tr>
        
      </table>
      <button type="submit" class="btn">저장</button>
     	      
    </form>    
 </div>
</body>
</html>
