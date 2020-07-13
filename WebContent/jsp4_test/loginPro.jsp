<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/loginPro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
//  id pass 파라미터 가져오기
String id = request.getParameter("id");
String pass = request.getParameter("pass");
// 1단계 드라이버 불러오기
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
//3단계 sql member테이블안에 아이디 일치 한 회원 내용 가져오기, 폼아이디 디비 아이디 일치
String sql= "select * from member where id = ?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1,id);
// 4단계 실행 => 결과 저장
ResultSet os = pstmt.executeQuery();
// 5단계  rs 첫행 이동 결과 있으면 아이디 일치  
//                                  비밀번호 비교 맞으면  세션값 생성 main.jsp이동
//                                  pass.equals(rs.getString("pass"))
//                                             틀리면 "비밀번호 틀림"
//                    없으면  "아이디 없음"

// 폼아이디 디비 아이디 일치  폼비밀번호 디비비밀번호 일치
//로그인 처리  => 세션값 부여  => 세션값 "id",id 생성       main.jsp 이동
if(os.next()){
   out.print("아이디 일치");
	if(pass.equals(os.getString("pass"))){
	out.print("비밀번호 일치");


	session.setAttribute("id", id);
	response.sendRedirect("main.jsp");
}else{
   out.print("비밀번호 틀림");
   %>
   <script type="text/javascript">
   alert("비밀번호 틀림");
   history.back();
   </script>
   <%
}
}else{
   out.print("아이디 없음");
   %>
   <script type="text/javascript">
   alert("비밀번호 틀림");
   history.back();
   </script>
   <%
}
%>
</body>
</html>