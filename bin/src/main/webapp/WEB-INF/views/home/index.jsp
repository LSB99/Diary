<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>My Diary</title>
  <link rel="stylesheet" type="text/css" href="/common.css" />
 <link rel="stylesheet" type="text/css" href="/background.css" />
  
  <style>

    a.btn{ top:50%; left:50%; height:40%; width: 40%; font-size:15pt; 
          margin: 100% 0 0 270px; }
    h1 { font-size: 400%; margin: -10% auto; cursive; text-shadow:5px 5px 3px #9068be; }
  </style>
</head>
<body>
<div class="container">

  <h1>${message}</h1>
  
   <table class="index">
       <sec:authorize access="not authenticated">
  	<thead>
  		<tr> 
  			<th><a href="${R}login" class="btn">로그인</a></th> 
  			
  			<th><a href="join" class="btn">회원가입</a></th>
  			
  		</tr>
    </thead>
  	</sec:authorize>
  	<sec:authorize access="authenticated">
  	<thead>
  	<tr>
      	<th><a class="btn" href="${R}logout_processing">로그아웃</a></th>
      	<th><a class="btn" href="${R}diary/index">시작하기</a></th>
    </tr>
    </thead>
    </sec:authorize>
  	
  </table>
  
</div>
</body>
</html>
