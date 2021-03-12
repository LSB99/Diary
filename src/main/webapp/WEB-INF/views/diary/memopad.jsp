<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="/background.css" />
  <style>
  h1 {margin: 40px auto; text-align: center; font-size: 30pt; }
  	div { width: 800px; margin: 40px auto; border: 1px solid purple; border-radius: 25px; }
  	a.btn { float: right; font-size: 25px; margin: 20px 5% 5% 0; }
 	.box1 { width: 50%; height: 50px; }
 	.box2 { width: 50%; height: 50px; }
  </style>
  
</head>
<body>
<h1>${ message }</h1>
<div class="box1">
<a href="memoEdit" class="btn">메모 내용 1</a>
</div>
<div class="box2">
<a href="memoEdit" class="btn">메모 내용 2</a>
</div>
<a href="index" class="btn">처음으로 가기</a>

</body>
</html>