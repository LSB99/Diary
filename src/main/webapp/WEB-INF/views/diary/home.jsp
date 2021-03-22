<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>My Diary</title>
  <link rel="stylesheet" type="text/css" href="/common.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pangolin&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
  
  <style>
  body {
	background-image:
		url('https://images.unsplash.com/photo-1516694898594-6bee63c70a04?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80');
	
	
	background-repeat: no-repeat;
	background-color: lightblue;
	background-position: 50% 0;
}

    a.btn{ top:50%; left:50%; height:40%; width: 40%; font-size:15pt; 
          margin: 100% 0 0 270px; }
      
    h1 { font-size: 400%; margin: -10% auto; font-family: 'Pangolin', cursive; text-shadow:5px 5px 3px lightpink; }
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