<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Find</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="${R}delete.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/background.css" />
<link rel="stylesheet" type="text/css" href="/account.css" />
  <style>
  	 form { width: 500px; height: 350px; }
    table { width: 400px;}
    input { width: 250px; }
    .btn {margin: -20px 190px 0px 0px;}
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
          <td><input type="text" name="name" value="${ user.name }" autofocus required/></td>
        </tr>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" value="${ user.userId }" required/></td>
        </tr>
      </table>
		<button type="submit" class="btn">비밀번호 찾기</button>
      
    </form>    
 </div>
</body>
</html>