<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
            
    <!-- jQuery -->
	<script src="jquery-3.6.0.js"></script>
    
    <!-- css -->
    <link rel="stylesheet" href="resources/css/mypage.css" />

    <!-- bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- google APIs -->
    <script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

    <!-- Bootstrap 관련 script -->
    <script defer src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>

<body>

    <nav class="navbar">

        <!-- 로고 입니다. -->
        <div class="navbar__logo">
            <a href="#"><i class="fa-brands fa-bilibili fa-3x"></i></a>
        </div>

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
            <h1>My Page</h1>
            
            
            <div style="margin: 10px"></div>
            <p><a class="btn btn-outline-success" href="/mypage2" role="button">개인정보 수정 »</a></p>
            </div>
            <div class="box" style="background: #BDBDBD;" >
    		</div>
        </div>
    </div>

    <div class="container" align="center" style="overflow: hidden">

        <div class="row left">
                <h3><a href="#">작성한 게시물</a></h3>
                				  <!-- 카드형 게시물 -->
                				  <div class = "allcard">
                   
					  <c:forEach items="${mypage}" var="mypage" begin="0" end="2">
					 <div class="card cd2" style="width: 13rem;">
					  <div class="card-body card1">
					    <h5 class="card-title">${mypage.title}</h5>
					    <p class="card-text">${mypage.content}</p>
					    <a href="detail?bno=${mypage.bno}" class="card-link">이게시물 자세히보기링크</a>
					    
					   </div>
					</div>
					   </c:forEach>
				
								     </div>   
                <p><a class="btn btn-sm btn-outline-secondary btn1" href="#" role="button">더보기 »</a></p>
     
            <hr>
                <h4>댓글을 남긴 게시물</h4>
                				<!-- 카드형 게시물 -->
                			<div class = "allcard">
                    <div class="card cd2" style="width: 13rem;">
					  <div class="card-body card1">
					    <h5 class="card-title">게시글 제목</h5>
					    <p class="card-text">게시글의 내용</p>
					    <a href="#" class="card-link">이게시물 자세히보기링크</a>
					  </div>
					</div>
					
					<div class="card cd2" style="width: 13rem;">
					  <div class="card-body card1">
					    <h5 class="card-title">게시글 제목</h5>
					    <p class="card-text">게시글의 내용</p>
					    <a href="#" class="card-link">이게시물 자세히보기링크</a>
					  </div>
					</div>
					
					<div class="card cd2" style="width: 13rem;">
					  <div class="card-body card1">
					    <h5 class="card-title">게시글 제목</h5>
					    <p class="card-text">게시글의 내용</p>
					    <a href="#" class="card-link">이게시물 자세히보기링크</a>
					  </div>
					</div>
									</div>
                <p><a class="btn btn-sm btn-outline-warning btn1" href="#" role="button" onclick="getHide()">더보기 »</a></p>
            <hr>
                <h3>하고있는 스터디 모임</h3>
                <div class="card cd2" style="width: 13rem;">
					  <div class="card-body card1">
					    <h5 class="card-title">스터디 이름</h5>
					    <p class="card-text">스터디 부제</p>
					    <a href="#" class="card-link">이 스터디 자세히보기링크</a>
					  </div>
					</div>
					
					<div class="card cd2" style="width: 13rem;">
					  <div class="card-body card1">
					    <h5 class="card-title">스터디 이름</h5>
					    <p class="card-text">스터디 부제</p>
					    <a href="#" class="card-link">이 스터디 자세히보기링크</a>
					  </div>
					</div>
					
					<div class="card cd2" style="width: 13rem;">
					  <div class="card-body card1">
					    <h5 class="card-title">스터디 이름</h5>
					    <p class="card-text">스터디 부제</p>
					    <a href="#" class="card-link">이 스터디 자세히보기링크</a>
					  </div>
					</div>
                <p><a class="btn btn-sm btn-outline-info btn-sky btn1" href="#" role="button">더보기 »</a></p>
         </div>
        
        
            <div class="right1">
                <div class="bd1">
                    <div class="list-group">
                      <a href="#" class="list-group-item list-group-item-action">My page</a>
                      <a href="#" class="list-group-item list-group-item-action">작성한 게시물</a>
                      <a href="#" class="list-group-item list-group-item-action">좋아요한 게시물</a>
                      <a href="#" class="list-group-item list-group-item-action">댓글을 남긴 게시물</a>
                      <a href="#" class="list-group-item list-group-item-action">스터디 모임</a>
                    </div>
                </div>
            </div>
        
        
</div> <!-- /container -->
    <hr>
        <footer>
            <p align="left">Coding community</p>
            <p><a class="btn btn-sm btn-light btn1" style="border: 1px solid" href="#" role="button">회원탈퇴 »</a></p>
        </footer>
       
  
</body></html>

