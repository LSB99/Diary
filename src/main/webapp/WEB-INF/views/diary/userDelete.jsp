<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="R" value="/"/>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <link rel="stylesheet" type="text/css" href="/background.css" />
  	<link rel="stylesheet" type="text/css" href="/account.css" />
  <style>
  	p { margin: -19px 60px; }
    td{font-weight:bold;}
  </style>
</head>
<body>

<h1>회원정보를 입력하세요</h1>

  <div class="container">
    <form method="post">
      <div class="title">회원정보 입력</div>
      <table>
      
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
          <td><input type="password" name="password" value="${ user.password }" /></td>
        </tr>
      </table>
	
	  <button type="submit" class="btn">탈퇴하기</button>
	  
    </form>    
 </div>
</body>
</html>