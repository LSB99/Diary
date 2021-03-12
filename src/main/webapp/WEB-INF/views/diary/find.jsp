<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="${R}delete.js"></script>
<link rel="stylesheet" type="text/css" href="/background.css" />
<link rel="stylesheet" type="text/css" href="/account.css" />
  <style>
  	 form { width: 500px; height: 300px; }
    a.btn { float: right; }
    input { width: 250px; }
  </style>
</head>
<body>
<h1>~My Diary~</h1>
  <div class="container">
    <form method="post">
      <div class="title">비밀번호 찾기</div>
      <table>
      	<tr>
          <td>이름: </td>
          <td><input type="text" name="name" value="${ user.name }" /></td>
        </tr>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }" /></td>
        </tr>
      </table>
      <a href="login" class="btn">비밀번호 찾기</a>
      
    </form>    
 </div>
</body>
</html>