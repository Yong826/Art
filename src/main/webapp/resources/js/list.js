/**
 * 
 */

$(document).ready(function(){
	// 검색버튼 클릭하면
	$("i").on("click",function(){
		//alert("aaa");
		// pageNum 에 1을 초기화
		$("input[name='pageNum']").val("1");
		// form태그를 submit
		$("#searchForm").submit();
	})
})