<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<<<<<<< HEAD

<%@ include file="../header.jsp"%>
<h2 style="text-align: center;">상세보기</h2>
=======
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD

  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- 폰트 킷 주소입니다 -->
  <script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

  <!-- CSS 주소입니다. -->
  <link rel="stylesheet" href="<c:url value='/resources/css/detail.css'/>">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">

  <!-- JavaScript 주소입니다. -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>


  <!-- 타이틀입니다. -->
  <title>코딩 커뮤니티</title>

  <!-- 로고 및 아이콘 링크입니다. -->
  <link rel="shortcut icon" type="image⁄x-icon" href="../main homepage\bilibili-brands.svg" />

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>
=======
<%@ include file="../header.jsp"%>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/detail.css'/>">
>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87

</head>
<body>

<<<<<<< HEAD
  <div class="header">
    <div class="navbar">

      <!-- 로고 입니다. -->
      <div class="navbar__logo">
        <a href="#"><i class="fa-brands fa-bilibili fa-3x"></i></a>
      </div>

      <!-- 메뉴 입니다.-->
      <div class="navbar__menu">
        <ul id="ul">
          <li id="li"><a href="#">Home</a></li>
          <li id="li"><a href="#">취업tip</a></li>
          <li id="li"><a href="#">스터디</a></li>
          <li id="li"><a href="#">지식공유</a></li>
          <li id="li"><a href="#">Q&A</a></li>
        </ul>
      </div>
      <!-- 로그인 회원가입 입니다.-->
      <div class="navbar_loginsignin">
		
		<c:choose>
			<c:when test = "${sessionScope.login==null}">
				<a href="login">로그인</a>
				<a href="join">회원가입</a>
			</c:when>
						
			<c:otherwise>
				${sessionScope.login.id}님 환영합니다. <br>
				<a href="logout">로그아웃</a>
			</c:otherwise>	
		</c:choose>      

      </div>

    </div>

=======
>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
<h1 style="text-align: center;">상세보기</h1>
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
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
<<<<<<< HEAD
                <td>
                	<input name="title" value="${detail.title}" style="border:none; width:100%; text-align:center">
=======
                <td><input name="title" value="${detail.title}">
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
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
<<<<<<< HEAD
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
=======
                <td colspan="3">
                    <input name="content" value="${detail.content}">
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
                </td>
            </tr>
        </tbody>
    </table>
	<div>
<<<<<<< HEAD
    	<c:if test="${sessionScope.login.id != null}">
    	<input type = "button" id="modify" style="float: right;" onclick="location.href='/board/modify?bno=${detail.bno}'" value="수정하기">
    	</c:if>
    	<input type = "button" id="tolist" style="float: right;" onclick="location.href='http://localhost:8080/board/list'" value="목록으로">
=======
    		<input type = "button" id="tolist" style="float: right;" onclick="location.href='http://localhost:8080/board/list'" value="목록으로">
<<<<<<< HEAD
    		<input type = "button" id="modify" style="float: right;" onclick="location.href='/board/modify?bno=${detail.bno}'" value="수정하기">
<<<<<<< HEAD
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
=======
=======
    		<c:if test="${sessionScope.login.id != null}">
    		<input type = "button" id="modify" style="float: right;" onclick="location.href='/board/modify?bno=${detail.bno}'" value="수정하기">
    		</c:if>
>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
>>>>>>> cbfea04238a0e492e553610705d50c45d4b7fd13
    </div>
</form>
</div>

<<<<<<< HEAD
<div id="reply_container">

	<div id="textarea">
		<textarea rows="5" cols="134" id="reply" placeholder="댓글을 입력하세요."></textarea>
=======

<div id="reply_container">
	<div>
		<label>댓글</label>
	</div>
	<div id="textarea">
		<textarea rows="5" cols="134" id="reply"></textarea>
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
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