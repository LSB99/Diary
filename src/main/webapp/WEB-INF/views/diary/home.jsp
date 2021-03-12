<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <link rel="stylesheet" type="text/css" href="/common.css" />
   <link rel="stylesheet" type="text/css" href="/background.css" />
  <style>
    a.btn{top:50%; left:50%; height:30%; width: 40%; font-size:15pt; 
          margin: 100px 0 20px 260px; }
    h1 { font-size: 400%; }
  </style>
</head>
<body>
<div class="container">

  <h1>${message}</h1>
  
   <table class="index">
  	<thead>
  		<tr> 
  			<th><a href="login" class="btn">로그인</a></th> 
  			
  			<th><a href="join" class="btn">회원가입</a></th>
  			
  		</tr>
    </thead>
  </table>
  
</div>
</body>
</html>
