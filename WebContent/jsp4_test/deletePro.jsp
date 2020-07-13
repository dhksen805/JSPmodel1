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
<h1>WebContent/jsp4/deletePro.jsp</h1>
<%
// 한글처리
request.setCharacterEncoding("utf-8");
// id pass  파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
// 1단계 드라이버 로더
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계 sql member테이블에 id에 대한 회원정보 조회
String sql="select * from member where id=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
// 4단계 rs <= 실행 결과저장  
ResultSet rs=pstmt.executeQuery();
// 5단계 rs 첫행으로 이동 데이터 있으면 아이디 존재
//            폼  디비 비밀번호 비교 맞으면 
//                           3단계 sql delete 조건 id일치
//                           4단계 실행
//                           세션값 초기화
//                           "회원정보 삭제"  main.jsp 이동
//                   비밀번호 틀리면 
//                       "비밀번호틀림" 뒤로이동 
if(rs.next()){
	//아이디 일치
	if(pass.equals(rs.getString("pass"))){
		// 비밀번호 일치
		// 3단계 삭제
		sql="delete from member where id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		// 4단계  객체 실행 (sql구문이 실행) - insert, update, delete
		pstmt.executeUpdate();
		//세션값 초기화
		session.invalidate();
		response.sendRedirect("main.jsp");
	}else{
		out.println("비밀번호 틀림");//비밀번호 틀림 뒤로이동
		%>
		<script type="text/javascript">
			alert("비밀번호 틀림");
			history.back();
		</script>
		<%
	}
}else{
	out.println("아이디 없음");//아이디 없음
	%>
	<script type="text/javascript">
		alert("아이디 없음");
		history.back();
	</script>
	<%
}
%>
</body>
</html>