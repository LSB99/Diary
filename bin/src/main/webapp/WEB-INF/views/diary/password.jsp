<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>User Delete</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="${R}common.js"></script>
  	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Della+Respira&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
	 <link rel="stylesheet" type="text/css" href="/background.css" />
  	<link rel="stylesheet" type="text/css" href="/account.css" />
  <style>
  h1 { font-size: 60pt; }
  	p { margin: -19px 60px; }
    td{font-weight:bold; width: 200px;}
    .btn{ font-size: 13pt; }
   
  </style>
</head>
<body>
<h1>비밀번호를 찾았습니다.</h1>
  <div class="container">
    <form method="post" autocomplete="off">
      <div class="title">비밀번호</div>
      <table>
       <tr>
          <td><input type="text" name="name" style="width: 200px;" value="${ user.password }" readonly /></td>
        </tr>
      </table>
	
	  <a href="login" class="btn">로그인하기</a>
	  	
    </form>    
 </div>
</body>
</html>