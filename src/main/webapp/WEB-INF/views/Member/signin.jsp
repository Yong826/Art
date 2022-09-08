<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type ="text/javascript" src="${pageContext.request.contextPath}/resources/js/siginjavascript.js"></script>
<link rel ="stylesheet" href="${pageContext.request.contextPath}/resources/css/signincss.css" type="text/css">
</head>
<body>

<form action="/" class="joinForm" method="post" id="joinform" onsubmit="return joinform()" >

    
    
        <h2>회원가입</h2>
            <tr>
                <td>
                    <div class="textForm">
                        <input type="text" name="id" id="user" class="id" placeholder="아이디">
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
                    <div class="textForm">
                        <input type="text" name="name" id="namechk" class="nickname" placeholder="닉네임">
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="textForm">
                    <input type="password" name="password" id="userpassword" class="pw" placeholder="비밀번호">
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <label id="pwmsg"></label>
                </td>
            </tr>

            <tr>    
                <td>
                    <div class="textForm">
                    <input type="password" name="password2" id="userpassword2" class="pw" placeholder="비밀번호 재확인">
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <label id="pwmsg2"></label>                    
                </td>
            </tr>

            <tr>
                <td>
                    <div class="textForm">
                    <input type="text" name="email" id="useremail" class="email" placeholder="이메일">
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <label id="emailmsg"></label>
                </td>
            </tr>

            <br>
            <br>
            
            <tr>
                <td>
                    <input type="submit" class="btn" value="회원가입"> 
                </td>
            </tr>
       
</form>

</body>
</html>