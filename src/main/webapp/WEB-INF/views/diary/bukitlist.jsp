<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="/list.css" />
   <link rel="stylesheet" type="text/css" href="/background.css" />

  <style>
  	a.btn { float: center; margin: -20px 0 5px 0; }
  	p { float: right; margin: 100px 0 5px 0; }
    td:nth-child(1) { text-align: center; }
  </style>
  
</head>
<body>
<div class="container">
  <table class="list">
    <thead>
      <tr>
        <th>순번</th>
        <th>버킷리스트</th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>1</td>
    <td><a href="bukitEdit" class="btn">버킷리스트 내용</a></td>
    </tbody>
  </table>
  <p><a href="index" class="btn">처음으로 가기</a></p>
</div>
</body>
</html>
