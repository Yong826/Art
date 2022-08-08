<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>

<%@ include file="../header.jsp"%>
</head>
<body>

<br><br><h2 style="text-align: center;">글 작성</h2><br><br>

<div class="write_container">

    <form method="post">
        <div class="form-group">
            <input type="text" name="title" class="form-control" placeholder="제목을 입력해주세요." id="title">
        </div>

        <div class="form-group">
            <textarea name = "content" class="form-control summernote" rows="5" id="summernote"></textarea>
        </div>

    	<div class="form-group">
    		<button type = "submit" id="write" style="float: right;">글쓰기 완료</button>
    	</div>
    </form>
</div>

<script>
    $('#summernote').summernote({
    	placeholder: '내용을 입력해주세요.',
    	tabsize: 1,
    	height: 500
    });
</script>
</body>
</html>