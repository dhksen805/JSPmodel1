<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/insertPro.jsp</h1>
<%
// request 한글처리
request.setCharacterEncoding("utf-8");
// id pass name 파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
// 현시스템 날짜 가져오기
Timestamp reg_date=new Timestamp(System.currentTimeMillis());
// 1단계 드라이버로더
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계 sql문 만들고 실행할 객체생성  insert
String sql="insert into member(id,pass,name,reg_date,age,gender,email) values(?,?,?,?,?,?,?)";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
pstmt.setTimestamp(4, reg_date);
pstmt.setString(5, age);
pstmt.setString(6, gender);
pstmt.setString(7, email);
// 4단계 sql문 실행
pstmt.executeUpdate();
%>
<script type="text/javascript">
	alert("회원가입성공")
	location.href="loginForm.jsp";
</script>
</body>
</html>















