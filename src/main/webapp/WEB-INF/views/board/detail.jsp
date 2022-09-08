<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>

<%@ include file="../header.jsp"%>
<h2 style="text-align: center;">상세보기</h2>
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
                <td>
                	<input name="title" value="${detail.title}" style="border:none; width:100%; text-align:center">
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
                    <input name="content" value="${detail.content}" style="border:none; float:left;"><br><br><br>	
                </td>
            </tr>
            <tr class="attach">
                <th>첨부파일</th>
                <td colspan="3" id="upload">
                	<div id="attach_img">
                		<label>< 이미지 ></label>
                    	<ul id="uploadimg">
							<!-- 이미지 리스트 -->
						</ul>
					</div>
					<div id="attach_down">
						<label>< 다운로드 ></label>
						<ul id="uploadResult">
							<!-- 다운로드 리스트 -->
						</ul>	
					</div>
                </td>
            </tr>
        </tbody>
    </table>
	<div>
    	<c:if test="${sessionScope.login.id != null}">
    	<input type = "button" id="modify" style="float: right;" onclick="location.href='/board/modify?bno=${detail.bno}'" value="수정하기">
    	</c:if>
    	<input type = "button" id="tolist" style="float: right;" onclick="location.href='http://localhost:8080/board/list'" value="목록으로">
    </div>
</form>
</div>

<div id="reply_container">

	<div id="textarea">
		<textarea rows="5" cols="134" id="reply" placeholder="댓글을 입력하세요."></textarea>
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