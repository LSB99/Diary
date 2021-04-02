<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
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
    <form method="post" autocomplete="off">
      <div class="title">로그아웃</div>
      <table>
       <tr>
          <td><input type="hidden" name="name" value="${ user.name }"/></td>
        </tr>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }" readonly/></td>
        </tr>
        <tr>
          <td><input type="hidden" name="password" value="${ user.password }" /></td>
        </tr>
      </table>
      
      <button type="submit" class="btn">로그아웃</button>
      <a href="index" class="btn">돌아가기</a>
      
    </form>    
 </div>
</body>
</html>