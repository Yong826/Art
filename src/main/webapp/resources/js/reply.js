/**
 * 
 */

$(document).ready(function(){
	// 함수 호출
	// 1. detail.jsp가 시작되자마자 bno값을 가져올려면 $(document).ready 아래에 선언
	var bnoVal=$("input[name='bno']").val();
	// alert(bno) // bno값 가져오는지 테스트
	
	// 2. detail.jsp가 시작되자마자 댓글목록리스트(list) 함수를 호출
	list(bnoVal);  // list는 bno값 필요
	
	
	// 1. 댓글 쓰기 버튼을 클릭하면 
	$("#add").on("click",function(){
		// 댓글쓰기 버튼을 클릭했을 당시에 댓글 내용을 가져올려면 $("#add").on("click",function(){ 아래에 선언
		var replyVal=$("#reply").val();
		var idVal="7875hi";
		// alert(reply); // 댓글값 가져오는지 테스트
		
		// 댓글 쓰기를 하기 위함 함수호출
		add({bno:bnoVal,reply:replyVal,id:idVal});

	})
	
	// 3. 댓글 수정버튼을 클릭하면
	// 이미 존재하는 태그에 이벤트를 처리하고
	// 나중에 동적으로 생기는 태그들에 대해서 파라미터 형식으로 지정(이벤트 델리게이트)
	$("#chat").on("click",".update",function(){
		// alert("aaa") 클릭했을때 뜨는지 테스트
		
		// 댓글 번호와 댓글 내용을 수집해서
		var rno=$(this).data("rno");
		// var reply=$(this).data("reply")
		var reply=$("#replycontent"+rno).val();
		// 댓글 수정을 하기 위한 함수 호출(댓글번호, 댓글내용)
		modify({rno:rno,reply:reply});
	})
	
	// 4. 댓글 삭제버튼 클릭하면
	$("#chat").on("click",".remove",function(){		
		// 댓글 번호 수집해서
		var rno=$(this).data("rno");
		// console.log(rno);
		// 댓글 삭제를 하기 위한 함수 호출(댓글번호)
		// remove({rno:rno}); // json 타입으로 데이터 보내겠다.
		remove(rno);  // 그냥 int 타입으로 데이터 보내겠다.
	})
	
})

// 함수 선언
// 댓글 쓰기를 하기 위한 함수 선언
// 1. add 함수 선언 시작
function add(reply){   
	console.log(reply);
	//alert("add함수 호출되는지 테스트")
	$.ajax({  // ajax 준비 (비동기식으로 처리)
		type:"post",  // method 방식(get, post, put, delete 등)
		url:"/replies/new",
		data:JSON.stringify(reply),
		// contentType : ajax -> controller로 데이터 전송 시 타입
		// (contentType 생략하면 웹 브라우저한테 위임)
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				alert("댓글쓰기 성공");
				location.reload();
			}
		}
	})
}   
// add 함수 선언 끝

// 2. list 함수 선언 시작
function list(bno){
	// alert(bno);  // bno값 호출되는지 테스트
	
	// 타입 ,      주소,    데이터, json방식으로 처리, 함수
	$.getJSON("/replies/"+bno+".json",function(data){
		//console.log(data);  // detail 콘솔창에 데이터 뜨는지 테스트
		
		var str="";
		
		for(var i=0;i<data.length;i++){
			str+="<li>"
			str+="ㄴ"+data[i].id
			str+="<input class='update' type='button' id='remo' value='수정' data-rno="+data[i].rno+">"
			str+="<input class='remove' type='button' id='rere' value='삭제' data-rno="+data[i].rno+">"
			str+="</li>"
			// str+="<li>"+data[i].rno+"</li>"
			str+="<li><textarea rows='5' cols='128' id='replycontent"+data[i].rno+"'>"+data[i].reply+"</textarea></li>"
			//str+="<li>"
			//str+="<input class='update' type='button' id='remo' value='수정' data-rno="+data[i].rno+">"
			//str+="<input class='remove' type='button' id='rere' value='삭제' data-rno="+data[i].rno+">"
			//str+="</li>"
		}
		
		$("#replyUL").html(str);
	})
}
// list 함수 선언 끝

// 3. modify 함수 선언 시작
function modify(reply){
	console.log(reply);
	$.ajax({  // ajax 준비 (비동기식으로 처리)
		type:"put",  // method 방식(get, post, put, delete 등)
		url:"/replies/modify",
		data:JSON.stringify(reply),
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				alert("댓글수정 성공");
				location.reload();
			}
		}
	})
}
// modify 함수 선언 끝

// 4. remove 함수 선언 시작
function remove(rno){
	console.log(rno);
	$.ajax({  // ajax 준비 (비동기식으로 처리)
		type:"delete",  // method 방식(get, post, put, delete 등)
		url:"/replies/remove/"+rno,

		success:function(result){
			if(result=="success"){
				alert("댓글삭제 성공");
				location.reload();
			}
		}
	})
}
// remove 함수 선언 끝
