<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- Jquery 선언 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script defer src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<!-- 업로드ajax JS -->
	<script type="text/javascript" src="resources/js/uploadAjax.js"></script>
	<!-- 정보수정 CSS  -->
	<link rel="stylesheet" href="resources/css/mypage2.css">
    <!-- bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- google APIs -->
    <script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

    <!-- Bootstrap 관련 script -->
    
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>

<body>
<form action="mypage">
    <nav class="navbar">

        <!-- 로고 입니다. -->
        <div class="navbar__logo">
            <a href="/"><i class="fa-brands fa-bilibili fa-3x"></i></a>
        </div>
</form>
        <!-- 검색창 입니다.-->
        <ul class="navbar__menu">
            <div>
                <li><a href="/">Home</a></li>
                <li><a href="#">취업 Tip</a></li>
                <li><a href="#">스터디</a></li>
                <li><a href="#">공유</a></li>
                <li><a href="/board/list">Q&A</a></li>
             </div>
        </ul>

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

    </nav>

    <div class="p-5 mb-4 bg-success bg-opacity-25 rounded-3">
        <div class="container-fluid py-5 customCon">
            <div class="MP-1">
            <h3>My Page</h3>
            <h2>
               	 개인정보를 변경해보세요. 
            </h2>
          
          
            <input type="file" class="btn btn-outline-primary" name="uploadFile" multiple><br>
            <input type="button" class="btn btn-outline-primary" id="upFileBtn" value="프로필 수정 »">
          
          
            <div style="margin: 10px"></div>
         
            </div>
            	
     	</div>
    </div>
	<div class="userinfo">
		<form action="/mypage2" method="post">
			<div class="user_id">
			<p>아이디 : <input type="text" value="${sessionScope.login.id}" name="id" readonly></p>
			</div>
			<div class="user_name">
			<p>이름 : <input type="text" name="name"></p>
			</div>
			<div class="user_pw">
			<p>비밀번호 : <input type="password" name="password"></p>
			</div>
			<div class="user_pw2"> <!-- 비밀번호와 동일해야함 -->
			<p>2차 비밀번호 : <input type="password"></p>
			</div>
			<div class="user_email">
			<p>E-mail : <input type="text" name="email"></p>
			</div>
	<!-- 		<input type="submit" value="수정 완료"> -->
			<input type="submit" class="btn btn-outline-success" id="uploadBtn" value="수정 완료 »">
		</form>
	</div> <!-- userinfo 끝 -->
	
            <div class="right1">
                <div class="bd1">
                    <div class="list-group">
                      <a href="/mypage" class="list-group-item list-group-item-action">My Page</a>
                      <a href="#" class="list-group-item list-group-item-action">작성한 게시물</a>
                      <a href="#" class="list-group-item list-group-item-action">댓글을 남긴 게시물</a>
                      <a href="#" class="list-group-item list-group-item-action">스터디 모임</a>
                    </div>
                </div>
            </div>

</body>
</html>