<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:url var="R" value="/" />

<!DOCTYPE html>
<html>
<head>
<title>Join</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="${R}delete.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${R}background.css" />
<link rel="stylesheet" href="${R}account.css" />
  <style>
  	 form { width: 500px; height: 660px; }
  	 table { width: 400px; }
    .btn { float: right; margin: 20px 200px 0px 0px;}
    input { width: 200px; margin: 20px auto; padding: 0.2em 0.2em; }
   .error { color: red; display: block; text-align: center;}
   label { padding: 1em 1em; width: 150px; height: 20px; margin: auto 10px; font-size: 14pt; float: left;}
  </style>
</head>
<body>
<h1>~My Diary~</h1>
  <div class="container">
    <form:form method="post" autocomplete="off" modelAttribute="userRegistration">
      <div class="title">회원가입</div>
      <div>
      <label>이름:</label>
      <form:input path="name" />
      <form:errors path="name" class="error" />
    </div>
      <div>
      <label>아이디:</label>
      <form:input path="userId" />
      <form:errors path="userId" class="error" />
    </div>
    <div>
      <label>비밀번호:</label>
      <form:password path="password1" />
      <form:errors path="password1" class="error" />
    </div>
    <div>
      <label>비밀번호 확인:</label>
      <form:password path="password2" />
      <form:errors path="password2" class="error" />
    </div>

      <button type="submit" class="btn">회원가입</button>
      
    </form:form>    
 </div>
</body>
</html>