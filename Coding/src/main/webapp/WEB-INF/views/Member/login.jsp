<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" href="/Coding/src/main/webapp/resources/css/logincss.css" type="text/css">
<title>로그인</title>
</head>
<body>

<form action="/login.jsp"  class="loginForm">
	<h2>로그인</h2>
	<tr>
		<td>
			<div class="textForm">
				<input type="text" name="id" class="in" placeholder="아이디" />
			</div>
		</td>
	</tr>

	<tr>
		<td>
			<div class="textForm" >
				<input type="password" name="password" class="in" placeholder="비밀번호" />
			</div>
		</td>
	</tr>
	
	<tr>
		<td>
			<input type="submit" class="btn" value="로그인">
		</td>
	</tr>

</form>
</body>
</html>