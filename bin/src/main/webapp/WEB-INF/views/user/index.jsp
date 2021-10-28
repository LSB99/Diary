<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="${R}background.css" />
<link rel="stylesheet" href="${R}account.css" />
  <style>
  	h1 { font-size: 70pt; }
    table { border-collapse: collapse; width: 30%; margin: 10% 35%; margin-bottom: 20px; background-color: #f6ded4;
    		box-shadow: 0 0 8px black, 5px 5px 4px gray; }
    td { border: 1px solid #aaa; padding: 8px; font-size: 20pt;}
  </style>
</head>
<body>
<div class="container">
    <h1>My Page</h1>
    <table>
      <tr>
          <td>로그인ID</td>
          <td><sec:authentication property="name" /></td>
      </tr>
      <tr>
          <td>이름</td>
          <td><sec:authentication property="principal.name" /></td>
      </tr>
      </table>
</div>
</body>
</html>
