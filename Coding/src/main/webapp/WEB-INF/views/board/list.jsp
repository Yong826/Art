<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/css/list.css'/>">
</head>
<body>
<div class="search">
  <input type="text" class="searchTerm" placeholder="키워드로 검색하세요">
  <button type="submit" class="searchButton">
    <i class="fa fa-search"></i>
 </button>
</div>
<h1 style="text-align: center;">Q & A</h1>
<div id = "list_container">
<form action="" method="post">
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
		<c:forEach var="item" items="${relist}">
 			<tr class = "tbody">
 				<td>${item.bno}</td>
  				<td class = "title">${item.title}</td>
 				<td>${item.id}</td>
 				<td>${item.regdate}</td>
 				<td>${item.cnt}</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan = 5 style='letter-spacing:10px'>◀  1  2  3  4  5  ▶</td>
			</tr>
	</tbody>
</table>
	<div>
    		<button type = "submit" id="towrite" style="float: right;">글쓰기</button>
    </div>
</form>
</div>
</body>
</html>