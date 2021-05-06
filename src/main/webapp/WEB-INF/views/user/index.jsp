<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="${R}common.css">
  <style>
    div.box { padding: 30px; }
    table { border-collapse: collapse; width: 400px; margin-bottom: 20px; }
    td { border: 1px solid #aaa; padding: 8px; }
  </style>
</head>
<body>
<div class="container">
  <div class="box">
    <h1>마이페이지</h1>
    <table>
      <tr>
          <td>로그인ID</td>
          <td><sec:authentication property="name" /></td>
      </tr>
      <tr>
          <td>이름</td>
          <td><sec:authentication property="principal.name" /></td>
      </tr>
  </div>
</div>
</body>
</html>
