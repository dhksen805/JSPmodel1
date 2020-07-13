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

<%
request.setCharacterEncoding("utf-8");
// int num=Integer.parseInt(request.getParameter("num"));
// 1단계 JDBC 설치한 프로그램안에 있는 드라이버 불러오기 
int num=Integer.parseInt(request.getParameter("num"));
Class.forName("com.mysql.jdbc.Driver");

// 2단계 불러온 드라이버를 이용해서 디비주소,디비아이디,디비비밀번호를 가지고 
//       데이터베이스에 접속=> 접속정보를 저장
String dburl="jdbc:mysql://localhost:3306/jspdb1";
String dbuser="root";
String dbpass="1234";
Connection con=DriverManager.getConnection(dburl, dbuser, dbpass);

// 3단계 연결정보를 이용해서 sql구문을 만들고 실행할수 있는 객체생성
String sql="select * from student where num=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setInt(1, num);
// 4단계  객체 실행 (sql구문이 실행) - insert, update, delete
//        객체 실행 => 결과 저장 - select
ResultSet rs= pstmt.executeQuery();
// 5단계  결과를 처리하는 작업 (출력, 배열저장) - select
%>
<h1>WebContent/jsp3/selectPro.jsp</h1>
<table border="1">
<tr><td>학생번호</td><td>학생이름</td></tr>
<%

while(rs.next()){
// 	rs.getInt("num"); // 1번 열번호, "num"열 이름
// 	rs.getString("name"); // 2번 열번호, "name"열이름
	%><tr><td><%=rs.getInt("num")%></td><td><%=rs.getString("name")%></td></tr><%
}
%>

</table>
</body>
</html>