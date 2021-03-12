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
<link rel="stylesheet" href="${R}background.css" />
<link rel="stylesheet" href="${R}account.css" />
  <style>
  	 form { width: 500px; height: 400px; }
    a.btn { float: right; }
    input { width: 250px; }
  </style>
</head>
<body>
<h1>~My Diary~</h1>
  <div class="container">
    <form method="post">
      <div class="title">회원가입</div>
      <table>
      <tr>
          <td>순번: </td>
          <td><input type="text" name="id" readonly disabled value="${ user.id }" /></td>
        </tr>
      	<tr>
          <td>이름: </td>
          <td><input type="text" name="name" value="${ user.name }" /></td>
        </tr>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }" /></td>
        </tr>
        <tr>
          <td>비밀번호: </td>
          <td><input type="password" placeholder="대소문자, 숫자, 특수문자 포함 8자리 이상" name="password" value="${ user.password }" /></td>
        </tr>
      </table>
      <button type="submit" class="btn">회원가입</button>
      
    </form>    
 </div>
</body>
</html>