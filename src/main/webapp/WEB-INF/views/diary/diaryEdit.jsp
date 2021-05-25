<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Diary Edit</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<script src="${R}delete.js"></script>

<script src="${R}res/summernote/summernote.js"></script>


<link rel="stylesheet" type="text/css" href="${R}background.css" />
<link rel="stylesheet" type="text/css" href="${R}edit.css" />

<style>
input {
	width: 600px;
	font-size: 20pt;
}

textarea {
	font-size: 15pt;
	display: block;
	width: 600px;
}

td { min-width: 10; padding: 10px; font-weight:bold;}
td:nth-child(1) { text-align: center; }


 .contents { width:900px; margin: 100px auto; }
</style>

</head>
<body>
	<div id="container">
		<header>
			<div id="logo">
				<a href="index"><h1>My Diary</h1></a>
			</div>
			<nav>
				<ul id="topMenu">
					<li><a href="memopad">메모장</a></li>
					<li><a href="diarySpace">일기</a></li>
					<li><a href="bukitlist">버킷리스트</a></li>
					<li><a href="timetable">시간표</a></li>
					<li><a href="weekList">일주일 계획</a></li>
					<li><a href="onedayList">하루일정</a></li>
					
				</ul>
			</nav>
		</header>
		<main class="contents">

			<form:form method="post" modelAttribute="diaryModel">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<div class="title">일기 쓰기</div>

				<table>

					<tr>
						<td>제목:</td>
						<td><form:input path="title" class="form-control" /></td>
					</tr>

					<tr>

						

						<td colspan="2"><div id="summernote">${ diaryModel.body }</div></td>
						<input type="hidden" name="body" />

					</tr>

				</table>
				
				<a class="btn btn-primary" onclick="save()">저장</a>

				<a href="diarySpace?${pagination.queryString}" class="btn">일기 목록보기</a>


				<c:if test="${ diaryModel.id > 0 }">
					<c:if test="${ diaryModel.no != 1 }">
					<button type="submit" class="btn" name="cmd" value="delete" data-confirm-delete>삭제</button>
					</c:if>
				</c:if>
				
			
				<c:if test="${ not empty message }">

					<div class="message">${ message }</div>

				</c:if>

			</form:form>
		</main>
		 
		<footer>
			소프캡스톤<br>임수빈, 김보미
		</footer>
	</div>
	<script>
  $('#summernote').summernote({
	  toolbar: [
		    ['fontname', ['fontname']],
		    ['fontsize', ['fontsize']],
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    ['color', ['forecolor','color']],
		    ['table', ['table']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']],
		    ['insert',['picture','link','video']],
		    ['view', ['fullscreen', 'help']]
		  ],
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
  		height: 500
});

/**
* 이미지 파일 업로드
*/
function uploadSummernoteImageFile(file, editor) {
data = new FormData();
data.append("file", file);
$.ajax({
	data : data,
	type : "POST",
	url : "/uploadSummernoteImageFile",
	contentType : false,
	processData : false,
	success : function(data) {
  	//항상 업로드된 파일의 url이 있어야 한다.
		$(editor).summernote('insertImage', data.url);
	}
});
}
   
  function save() {
    var s = $('#summernote').summernote('code');
    $('input[name=body]').val(s);
    $('form').submit();
  }
</script>
	
</body>
</html>