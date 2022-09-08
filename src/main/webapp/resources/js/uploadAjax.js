/**
 * 
 */

$(document).ready(function(){
	// 정보수정 완료
	$("#uploadBtn").on("click",function(){
		alert("수정이 완료되었습니다.");
	// 여기까지 정보수정	
})// #uploadBtn

	/* 첨부파일 공격에 대비하기 위한 업로드 파일 확장자 제한
		
		.exe .zip .alz -> 첨부x
		특정 크기 이상의 파일 첨부x
		
	*/

		// 함수 선언
		// 정규식을 이용하여 확장자 제한
		var reg = new RegExp("(.*?)\.(exe|zip|alz)$")
		// 최대 크기를 설정하여 그 이상이면 제한
		var maxSize = 5242880; // 5MB
		//						  파일이름  	파일크기
		function checkExtension(fileName, fileSize){
			// 파일크기 제한
			// 실제 파일 크기> 최대크기
			if(fileSize >= maxSize){
				alert("파일 사이즈 초과");
				return false;
			} 
			// 확장자 제한
			// 실제파일명의 확장자와 정규식 비교
			// 정규식이면 return
			if(reg.test(fileName)){
				alert("해당종류의 파일은 업로드 할 수 없습니다.");
				return false;
			} 
			return true;
		} // checkExtension
	
		// 파일전송 버튼(id="upFileBtn")을 클릭하면
		$("#upFileBtn").on("click",function(e){
			e.preventDefault();
			// alert("a");
			var formData = new FormData();
			
			var inputFile = $("input[name='uploadFile']");
			
			//console.log(inputFile);
			
			var files = inputFile[0].files;
			
			console.log(files);
			
			for(var i=0; i<files.length; i++){
				
				// 함수 호출(checkExtension)
				if(!checkExtension(files[i].name, files[i].size)){
					return false;
				}
				
				
				// jsp의 파일선택을 통해 선택한 팡리들을 form 태그에 추가
				formData.append("uploadFile",files[i]);
				
			} // for
			$.ajax({
				type : "post",
				url : "/uploadAjaxAction",
				data : formData,
				contentType : false,
				processData : false,
				dataType:"json"
			}) // ajax
		}) // upFileBtn
})// document.ready */