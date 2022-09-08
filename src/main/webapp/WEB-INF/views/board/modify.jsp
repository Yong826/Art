<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>

<%@ include file="../header.jsp"%>

<h2 style="text-align: center;">수정하기</h2>
<div id = "detail_container">
<form method="post">
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
                <td id="ti">
                	<input type="text" name="title" style="float:left; width:100%;" value="${detail.title}">
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
                <td colspan="3" id="ci">
                    <textarea name="content" rows="25" style="float:left; width:100%;">${detail.content}</textarea>
                </td>
            </tr>
        </tbody>
    </table>
	<div>
    		<button type = "submit" id="tolist" style="float: right;" formaction="/board/modify">수정 완료</button>
    		<button type = "submit" id="modify" style="float: right;" formaction="/board/remove">삭제하기</button>
    </div>
</form>
</div>
</body>
</html>