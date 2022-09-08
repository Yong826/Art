<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<<<<<<< HEAD

<%@ include file="../header.jsp"%>
=======
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<<<<<<< HEAD
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- 폰트 킷 주소입니다 -->
  <script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

  <!-- CSS 주소입니다. -->
  <link rel="stylesheet" href="<c:url value='/resources/css/list.css'/>">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">

  <!-- JavaScript 주소입니다. -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>


  <!-- 타이틀입니다. -->
  <title>코딩 커뮤니티</title>

  <!-- 로고 및 아이콘 링크입니다. -->
  <link rel="shortcut icon" type="image⁄x-icon" href="../main homepage\bilibili-brands.svg" />

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/list.js"></script>
=======
<%@ include file="../header.jsp"%>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/list.js"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/list.css'/>">
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

<<<<<<< HEAD
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
=======
=======
>>>>>>> 87ab3ca4e692b10796f63c12a7e486e2a68ada87
>>>>>>> cbfea04238a0e492e553610705d50c45d4b7fd13

<form id="searchForm" action="/board/list" method="get">
<div class="search">
  <input type="text" class="searchTerm" placeholder="키워드로 검색하세요" name="keyword"> 
  <button type="button" class="searchButton">
    <i class="fa fa-search"></i>
  </button>
 	<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
	<input type="hidden" name="amount" value="${paging.cri.amount}"> 
</div>
</form>
<<<<<<< HEAD

=======
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
<!-- 111 ${sessionScope.login.id}  222 -->
<h1 style="text-align: center;">Q & A</h1>
 
<div id = "list_container">

<table border=1 id = "list">
	<thead>
		<tr>
			<th>번호</th>
			<th class = "title">제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>	
	</thead>
	<tbody>
		<c:forEach var="item" items="${list}">
 			<tr class = "tbody">
 				<td>${item.bno}</td>
  				<td class = "title"><a href="/detail?bno=${item.bno}">${item.title}</a></td>
 				<td>${item.id}</td>
 				<td>${item.regdate}</td>
 				<td>${item.cnt}</td>
			</tr>
		</c:forEach>
			<tr>
<<<<<<< HEAD
				<td colspan = 5 style='letter-spacing:10px' id="page">
=======
				<td colspan = 5 style='letter-spacing:10px'>
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
				<!-- prev(이전)이 true이면 이전버튼 활성화 -->
					<c:if test="${paging.prev}">
						<a href="/board/list?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

				<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
					<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
 						<a href="/board/list?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
					</c:forEach>

				<!-- next(다음)이 true이면 다음버튼 활성화 -->
					<c:if test="${paging.next}">
						<a href="/board/list?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>
				</td>
			</tr>
	</tbody>
</table>

</div>

<div id="btn">
	<c:if test="${sessionScope.login.id != null}">
	<input type="button" id="towrite" value="글쓰기" style="float: right;" onclick="location.href='http://localhost:8080/write'">
	</c:if>
</div>

</body>
</html>