<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/f8ebc57e81.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type ="text/javascript" src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
<link rel ="stylesheet" href="${pageContext.request.contextPath}/resources/css/logincss.css" type="text/css">
<link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/resources/img/bilibili-brands.svg" />
<title>로그인</title>
</head>
<body>

<form action="/loginForm" id="loginForm" class="loginForm" onsubmit="return loginForm()" method="post">

	  <div class="logo__bili">
        <a href="#">
        <i class="fa-brands fa-bilibili fa-3x" style="color:black;">
        </i>
        </a>
      </div>
      
	<tr>
		<td>
			<div class="textForm">
				<input type="text" name="id" id="user" class="in" placeholder="아이디" />
			</div>
		</td>
	</tr>
	
	
	<tr>
        <td>
            <label id="idmsg"></label>
       </td>
   </tr> 

	<tr>
		<td>
			<div class="textForm" >
				<input type="password" name="password" id="password" class="in" placeholder="비밀번호" />
			</div>
		</td>
	</tr>
	
	
	<tr>
		 <td>
			<label id="pwmsg"></label>
		</td>
	</tr>
	
	<br>
	<br>
	
	<tr>
		<td>
			<input type="submit" class="btn" value="로그인">
		</td>
	</tr>

</form>
</body>
</html>