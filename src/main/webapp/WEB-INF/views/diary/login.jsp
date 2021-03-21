<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <link rel="stylesheet" type="text/css" href="/background.css" />
  	<link rel="stylesheet" type="text/css" href="/account.css" />
  <style>
  form { width: 450px; height: 400px;}
    td{font-weight:bold; }
    
    
  </style>
</head>
<body>
<h1>~My Diary~</h1>
  <div class="container">
    <form method="post">
      <div class="title">Login</div>
      <table>
       <tr>
          <td>이름: </td>
          <td><input type="text" name="name" value="${ user.name }" autofocus required/></td>
        </tr>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }" required/></td>
        </tr>
        <tr>
          <td>비밀번호: </td>
          <td><input type="password" name="password" value="${ user.password }" required/></td>
        </tr>
      </table>
      
      <button type="submit" class="btn">로그인</button>
      <button type="button" onclick="location.href='find'">비밀번호 찾기</button>
      
    </form>    
 </div>
</body>
</html>
