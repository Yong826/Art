<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<%@ include file="../header.jsp"%>

  <link rel="stylesheet" href="<c:url value='/resources/css/write.css'/>">
</head>
<body>

<br><br><h2 style="text-align: center;">글 작성</h2><br><br>

<div class="write_container">

    <form action="/write" method="post" accept-charset="utf-8">
        <div class="form-group">
            <input type="text" name="title" placeholder="제목을 입력해주세요." id="title" size="170">
        </div>

        <div class="form-group">
        	<textarea name = "content" rows="30" placeholder="내용을 입력해주세요." id="content"></textarea>
        </div>

    	<div class="form-group">
    		<input type = "submit" id="write" style="float: right;" value="작성 완료">
    	</div>
    </form>
</div>

</body>
</html>