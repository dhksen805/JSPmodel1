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
<h1>WebContent/jsp3/updatePro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
int num=Integer.parseInt(request.getParameter("num"));
// String num = request.getParameter("num");
// int StringToInt = Integer.parseInt(num);
String name = request.getParameter("name");

%>
학번:<%=num %><br>
수정할 이름:<%=name %><br>
<%
//1단계
Class.forName("com.mysql.jdbc.Driver");
//2단계
String dburl="jdbc:mysql://localhost:3306/jspdb1";
String dbuser="root";
String dbpass="1234";
Connection con=DriverManager.getConnection(dburl, dbuser, dbpass);
//3단계 연결정보를 이용해서 sql 구문을 만들고 실행할수 있는 객체생성
// student테이블에 num, name에 해당하는 ,name 수정
// String sql="update student set name='"+name+"' where num="+num+"";
String sql= "update student set name=? where num=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setInt(2, num); // setInt(문음표순서, 값)
pstmt.setString(1, name);
//4단계  객체 실행 (sql구문이 실행) - insert, update, delete 객체 실행 => 결과 저장 - select
pstmt.executeUpdate();
%>
<%= "학생수정성공"+pstmt %>
</body>
</html>