<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<<<<<<< HEAD

<%@ include file="../header.jsp"%>

<h2 style="text-align: center;">수정하기</h2>
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

</head>
<body>

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
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/css/detail.css'/>">
</head>
<body>

>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
<h1 style="text-align: center;">수정하기</h1>
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
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
<<<<<<< HEAD
                <td id="ti">
                	<input type="text" name="title" style="float:left; width:100%;" value="${detail.title}">
=======
                <td>
                	<input type="text" name="title" value="${detail.title}">
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
                    <textarea name="content" rows="25" style="float:left; width:100%;">${detail.content}</textarea>
=======
                <td colspan="3">
                    <textarea name="content" rows="3">${detail.content}</textarea>
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
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