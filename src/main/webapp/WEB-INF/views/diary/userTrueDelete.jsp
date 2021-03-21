<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>User Delete</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="${R}common.js"></script>
  	
	 <link rel="stylesheet" type="text/css" href="/background.css" />
  	<link rel="stylesheet" type="text/css" href="/account.css" />
  <style>
  	p { margin: -19px 60px; }
    td{font-weight:bold;}
  </style>
</head>
<body>
<h1>정말 탈퇴하겠습니까?</h1>
  <div class="container">
    <form method="post">
      <div class="title">최종 탈퇴</div>
      <table>
       <tr>
          <td>이름: </td>
          <td><input type="text" name="name" value="${ user.name }"  autofocus required /></td>
        </tr>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }"  required/></td>
        </tr>
        <tr>
          <td>비밀번호: </td>
          <td><input type="password" name="password" value="${ user.password }" required/></td>
        </tr>
      </table>
	
	  <a href="index" class="btn">아니요</a>
	  <a href="userTrueDelete?userId=${user.userId}" class="btn">네,회원탈퇴</a>	  
	  
    </form>    
 </div>
</body>
</html>