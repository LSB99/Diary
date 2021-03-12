$(function() {
	$("[data-url]").click(function(){
		var url=$(this).attr("data-url");
		location.href=url;
	})
	
	$("[data-confirm-delete]").click(funtion() {
		return confirm("삭제하시겠습니까?");
	})
})