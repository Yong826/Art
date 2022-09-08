<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<<<<<<< HEAD
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
  <!-- 폰트 킷 주소입니다 -->
  <script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

  <!-- CSS 주소입니다. -->
  <link rel="stylesheet" href="<c:url value='/resources/css/write.css'/>">
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<%@ include file="../header.jsp"%>

  <link rel="stylesheet" href="<c:url value='/resources/css/write.css'/>">
</head>
<body>

>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
<br><br><h2 style="text-align: center;">글 작성</h2><br><br>

<div class="write_container">

    <form action="/write" method="post" accept-charset="utf-8">
        <div class="form-group">
            <input type="text" name="title" placeholder="제목을 입력해주세요." id="title" size="170">
        </div>

        <div class="form-group">
        	<textarea name = "content" rows="30" placeholder="내용을 입력해주세요." id="content"></textarea>
        </div>
<<<<<<< HEAD
        
		<input type="hidden" name="id" value="${sessionScope.login.id}">
		
=======

>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
    	<div class="form-group">
    		<input type = "submit" id="write" style="float: right;" value="작성 완료">
    	</div>
    </form>
</div>

</body>
</html>