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
<h1>WebContent/jsp4/insertForm.jsp</h1>
<%
//session 가져와서 변수에 저장
String id=(String)session.getAttribute("id");
//1단계 드라이버로더
Class.forName("com.mysql.jdbc.Driver");
//2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
//3단계 sql member 테이블에서 id에 해당하는 회원정보 가져오기
String sql="select * from member where id=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
//4단계 결과<=실행
ResultSet rs=pstmt.executeQuery();
//5단계 rs 첫행으로 이동 데이터 있으면 아이디 존재
if(rs.next()){
	%><form action="updatePro.jsp" method="post">
	아이디: <input type="text" name="id" value="<%=rs.getString("id")%>" readonly><br>
	비밀번호: <input type="password" name="pass"><br>
	수정할 이름:<input type="text" name="name" value="<%=rs.getString("name")%>"><br>
	<input type="submit" value="회원정보수정">
	</form><%
}
%>

</body>
</html>



