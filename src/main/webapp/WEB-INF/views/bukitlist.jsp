<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/common.css" />
  <style>
    a.btn { float: right; margin: -20px 0 5px 0; }
    td:nth-child(1) { text-align: center; }
  </style>
</head>
<body>
<div class="container">
  <h1>버킷리스트 목록</h1>
  <table class="list">
    <thead>
      <tr>
        <th>id</th>
        <th>버킷리스트</th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>${ message }</td>
      <c:forEach var="bukitlist" items="${ bukitlists }">
        <tr>
          <td>${ bukit.id }</td>
          <td>${ bukit.bukitlist }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
