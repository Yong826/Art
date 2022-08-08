<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>게시글 리스트</h1>
<a style="margin-left: 300px"><%= session.getAttribute("id") %></a><a href="logoutServer.jsp"> / 로그아웃</a>
<form action= "/board/mainwrite" method="post">
<table border = '1' style="margin-top: 10px">
	<tr>
		<td>No.</td>
		<td>제목</td>
		<td>아이디</td>
		<td>작성일자</td>
		<td>조회수</td>
	</tr>

<%
	//DB 연결
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		// login을 하기 위한 sql 문장
		// prepareStatement : java -> SQL 실행 위해 (DB에 쿼리를 보내기 위해) 사용하는 객체
		pstmt = conn.prepareStatement("select * from board");
		                              // SQL 문장 작성
		
		// 위 sql 문장을 실행(workbench : ctrl+enter)
		// executeQuery() : select ===> select된 결과를 ResultSet이라는 공간에 저장해서 반환
		// executeUpdate() : insert, update, delete
		rs = pstmt.executeQuery();  // select 된 결과 전체 다 들어가있음
		

		while(rs.next()){  
%>	
			
	<tr>
		<td><%= rs.getString("bno") %></td>
		<td><a href="boarddetail.jsp?bno=<%= rs.getString("bno") %>"><%= rs.getString("title") %></a></td>
		<td><%= rs.getString("id") %></td>
		<td><%= rs.getString("regdate") %></td>
		<td><%= rs.getString("cnt") %></td>
	</tr>		
						
<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{  // 메모리 관리 (사용한것들을 닫아줘야함)
		conn.close();
		rs.close();
		pstmt.close();
	}	
%>

	<tr>
		<td colspan="5" style="padding-left: 360px"><input type="submit" value="글쓰기"></td>
	</tr>	

</table>

</form>


</body>
</html>