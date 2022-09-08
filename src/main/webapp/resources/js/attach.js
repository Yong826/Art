/**
 * 첨부파일 관련 js
 */

$(document).ready(function(){
	// detail.jsp가 시작되자 마자 bno값 가져오기
	var bno = $("input[name='bno']").val();
	
	$.getJSON("/attachlist",{bno:bno},function(attachlist){
		
		console.log(attachlist);
		
		var str_img="";
		var str="";
		
		$(attachlist).each(function(i,attach){
			
			// 만약 img 결과가 true이면					
			if(attach.img){
				// 아래에 있는 거 실행
				var filePath = encodeURIComponent(attach.uploadPath + "/s_" + attach.uuid + "_" + attach.fileName);
			
				str_img+="<li><img src='/display?fileName="+filePath+"'></li>";
			}
			else{   // 그렇지 않으면
				// 다운로드 할 수 있도록 실행
				var filePath = encodeURIComponent(attach.uploadPath + "/" + attach.uuid + "_" + attach.fileName);
				
				str+="<li>"
				str+="<a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a>";
				str+="</li>"

			}
			
		})
		
		$("#uploadimg").html(str_img);
		$("#uploadResult").html(str);
	
	})	
})