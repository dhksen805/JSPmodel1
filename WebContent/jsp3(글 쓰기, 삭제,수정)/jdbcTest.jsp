<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp3/jdbcTest.jsp</h1>
<%
// JDBC 프로그램 설치 mysql=connector=java=5.1.47.jar
// 1단계 JDBC 설치한 프로그램안에 있는 드라이버 불러오기 
Class.forName("com.mysql.jdbc.Driver");
// 2단계 불러온 드라이버를 이용해서 디비주소,디비아이디,디비비밀번호를 가지고 
String dburl="jdbc:mysql://localhost:3306/jspdb1";
String dbuser="root";
String dbpass="1234";
Connection com=DriverManager.getConnection(dburl, dbuser, dbpass);
//       데이터베이스에 접속=> 접속정보를 저장
// 3단계 연결정보를 이용해서 sql구문을 만들고 실행할수 있는 객체생성
// 4단계  객체 실행 (sql구문이 실행) - insert, update, delete
//        객체 실행 => 결과 저장 - select
// 5단계  결과를 처리하는 작업 (출력, 배열저장) - select
%>
<%= "연결성공" %>


</body>
</html>