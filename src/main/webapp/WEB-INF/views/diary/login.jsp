<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <link rel="stylesheet" type="text/css" href="/background.css" />
  <style>
  	h1 { margin: 100px auto; text-align: center; font-size: 50pt; }
    form { width: 400px; height: 250px; margin: 100px auto;
      box-shadow: 0 0 8px black, 5px 5px 4px gray; overflow: auto; }
    div.title { font-size: 25pt; padding: 15px; background-color: #eee; }
    table { margin: 30px; font-size: 15pt; }
    td { min-width: 100; padding: 10px; }
    td:nth-child(1) { text-align: right; }
    .btn { margin: 30px 30px 20px 20px; }
    
  </style>
</head>
<body>
<h1>~My Diary~</h1>
  <div class="container">
    <form method="post">
      <div class="title">Login</div>
      <table>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }" /></td>
        </tr>
        <tr>
          <td>비밀번호: </td>
          <td><input type="password" name="password" value="${ user.password }" /></td>
        </tr>
      </table>
      <a href="index" class="btn">Login 하기</a>
      <a href="find" class="btn">비밀번호 찾기</a>
      <a href="join" class="btn">회원가입</a>
      
    </form>    
 </div>
</body>
</html>
