<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- CSS 주소입니다. -->
    <link rel="stylesheet" href="<c:url value='/resources/css/header.css'/>">

    <!-- JavaScript 주소입니다. -->
    <script src="../main homepage\main homepage.js"></script>

    <!-- 폰트 킷 주소입니다 -->
    <script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

    <!-- 타이틀입니다. -->
    <title>코딩 커뮤니티</title>

    <!-- 로고 및 아이콘 링크입니다. -->
    <link
      rel="shortcut icon"
      type="image⁄x-icon"
      href="../main homepage\bilibili-brands.svg"
    />
  </head>

<body>

<nav class="navbar">

    <!-- 로고 입니다. -->
    <div class="navbar__logo">
        <a href="#"><i class="fa-brands fa-bilibili fa-3x"></i></a> 
    </div>

    <!-- 검색창 입니다.-->
    <ul class="navbar__menu"></div>
      <li><a href="#">Home</a></li>
        <li><a href="#">취업 Tip</a></li>
        <li><a href="#">스터디</a></li>
        <li><a href="#">공유</a></li>
        <li><a href="#">Q&A</a></li>
     </ul>

    <!-- 로그인 회원가입 입니다.-->
    <ul class="navbar_loginsignin">
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
    </ul>
</nav>
        
      <!-- 메뉴 입니다.

 <div class="search">
  <input type="text" class="searchTerm" placeholder="키워드로 검색하세요">
  <button type="submit" class="searchButton">
    <i class="fa fa-search"></i>
 </button>
</div> -->
  






</body>
</html>
