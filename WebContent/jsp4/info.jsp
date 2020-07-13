<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/info.jsp</h1>
<%
// session 가져와서 변수에 저장
String id=(String)session.getAttribute("id");
// 1단계 드라이버로더
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계 sql 만들고 실행할수 있는 객체 만들기 select
String sql="select * from member where id=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
// 4단계 결과<=실행 결과 저장
ResultSet rs=pstmt.executeQuery();
// 5단계 rs 내용 위치 첫행이동 데이터 있으면 출력  
if(rs.next()){
	%>
아이디:<%=rs.getString("id") %><br>
비밀번호:<%=rs.getString("pass") %><br>
이름:<%=rs.getString("name") %><br>
가입날짜:<%=rs.getTimestamp("reg_date") %><br>
	<%
}
%>
<a href="main.jsp">메인화면</a>
</body>
</html>















