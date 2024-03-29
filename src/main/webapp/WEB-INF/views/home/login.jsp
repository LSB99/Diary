<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <form method="post" action="${R}login_processing" autocomplete="off">
      <div class="title">Login</div>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      
      <table>
        <tr>
          <td>아이디: </td>
          <td><input type="text" name="userId" required/></td>
        </tr>
        <tr>
          <td>비밀번호: </td>
          <td><input type="password" name="password" required/></td>
        </tr>
      </table>
      
      <button type="submit" class="btn">로그인</button>
      <c:if test="${ param.error != null }">
      <div class="error">로그인 실패</div>
      </c:if>
      
    </form>    
 </div>
</body>
</html>
