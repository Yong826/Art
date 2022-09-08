<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>Insert title here</title>
<%@ include file="../header.jsp"%>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/detail.css'/>">

</head>
<body>

<h1 style="text-align: center;">상세보기</h1>
<div id = "detail_container">
<form action="/board/modify" method="post">
 <table border=1 class="detail">
        <colgroup>
            <col width="15%">
            <col width="35%">
            <col width="15%">
            <col width="*">
        </colgroup>
         
        <tbody>
            <tr>
                <th>제목</th>
                <td><input name="title" value="${detail.title}">
					<input type="hidden" value="${detail.bno}" name="bno"></td>
                <th>조회수</th>
                <td>${detail.cnt}</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${detail.id}</td>
                <th>작성시간</th>
                <td>${detail.regdate}</td>
            </tr>
            <tr class="content">
                <th>내용</th>
                <td colspan="3">
                    <input name="content" value="${detail.content}">
                </td>
            </tr>
        </tbody>
    </table>
	<div>
    		<input type = "button" id="tolist" style="float: right;" onclick="location.href='http://localhost:8080/board/list'" value="목록으로">
    		<c:if test="${sessionScope.login.id != null}">
    		<input type = "button" id="modify" style="float: right;" onclick="location.href='/board/modify?bno=${detail.bno}'" value="수정하기">
    		</c:if>
    </div>
</form>
</div>


<div id="reply_container">
	<div>
		<label>댓글</label>
	</div>
	<div id="textarea">
		<textarea rows="5" cols="134" id="reply"></textarea>
	</div>
	<div>
		<input type="button" value="댓글쓰기" id="add">
	</div>
	<div id="chat">
		<ul id="replyUL">
			<!-- 댓글목록리스트 -->
		</ul>
	</div>
</div>

</body>
</html>