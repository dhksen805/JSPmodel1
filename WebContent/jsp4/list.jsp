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
<h1>WebContent/jsp4/list.jsp</h1>
<%
// 세션값 가져오기
String id=(String)session.getAttribute("id");
// 세션값이 없으면
// 세션값이 "admin"이 아니면
// loginForm.jsp이동
if(id==null){
	// loginForm.jsp이동
	response.sendRedirect("loginForm.jsp");
	if(!id.equals("admin")){
		// loginForm.jsp이동
		response.sendRedirect("loginForm.jsp");
	}else{
		response.sendRedirect("list.jsp");
	}
}

request.setCharacterEncoding("utf-8");
// 1단계 드라이버 로더
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계  sql member모든 회원 가져오기
String sql="select * from member";
PreparedStatement pstmt=con.prepareStatement(sql);
// 4단계 rs <= 결과 저장
ResultSet rs=pstmt.executeQuery();
// 5단계 반복 첫행으로 이동해서 데이터 있으면  id,pass,name,reg_date열 가져와서 출력
%>
<table border="1" width="400" height="100">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%
while(rs.next()){
	%><tr><td><%=rs.getString("id")%></td><td><%=rs.getString("pass")%></td><td><%=rs.getString("name")%>
	</td><td><%=rs.getString("reg_date")%></td></tr><%
}
%>

</table>
</body>
</html>


