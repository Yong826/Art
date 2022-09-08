<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("euc-kr");
 
%>

<%@ include file="../header.jsp"%>
<h2 style="text-align: center;">글 작성</h2>

<div class="write_container">

    <form action="/write" id="form" method="post" accept-charset="utf-8">
        <div class="write">
            <input type="text" name="title" placeholder="제목을 입력해주세요." id="title" size="170">
        </div>

        <div class="write">
        	<textarea name = "content" rows="30" placeholder="내용을 입력해주세요." id="content"></textarea>
        </div>

    	<div class="write">
    		<input type="file" name="uploadFile" multiple>
    		<input type = "button" id="write" value="작성 완료">
    		<input type = "button" id="totolist" onclick="location.href='http://localhost:8080/board/list'" value="목록으로">
    	</div>
    </form>
 
</div>

	<div style="margin-top:20px;">
		<ul id="uploadResult">
			<!-- 이미지 리스트 -->
		</ul>	
	</div>

</body>
</html>