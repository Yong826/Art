<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- 폰트 킷 주소입니다 -->
  <script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

  <!-- CSS 주소입니다. -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
  <link rel="stylesheet" href="<c:url value='/resources/css/write.css'/>">
  <link rel="stylesheet" href="<c:url value='/resources/css/detail.css'/>">
  <link rel="stylesheet" href="<c:url value='/resources/css/list.css'/>">
  
  <!-- JavaScript 주소입니다. -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="/resources/js/main.js"></script>
  <script type="text/javascript" src="/resources/js/write.js"></script>
  <script type="text/javascript" src="/resources/js/reply.js"></script>
  <script type="text/javascript" src="/resources/js/attach.js"></script>
  <script type="text/javascript" src="/resources/js/list.js"></script>

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
        <a href="/"><i class="fa-brands fa-bilibili fa-3x"></i></a>
      </div>

      <!-- 메뉴 입니다.-->
      <div class="navbar__menu">
        <ul id="ul">
          <li id="li"><a href="#">Home</a></li>
          <li id="li"><a href="#">취업tip</a></li>
          <li id="li"><a href="#">스터디</a></li>
          <li id="li"><a href="#">지식공유</a></li>
          <li id="li"><a href="/board/list">Q&A</a></li>
        </ul>
      </div>
      <!-- 로그인 회원가입 입니다.-->
      <div class="navbar_loginsignin">
		
		<c:choose>
			<c:when test = "${sessionScope.login==null}">
				<a href="/login">로그인</a>
				<a href="/join">회원가입</a>
			</c:when>
						
			<c:otherwise>
				${sessionScope.login.id}님 환영합니다. <br>
				<a href="/logout">로그아웃</a>
			</c:otherwise>	
		</c:choose>      

      </div>

    </div>
