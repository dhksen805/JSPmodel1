<%@page import="member.MemberDAO"%>
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
<h1>WebContent/member/loginPro.jsp</h1>
<%
//  id pass 파라미터 가져오기
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pass=request.getParameter("pass");

//패키지 member 파일이름 MemberDAO  리턴할형 int형 userCheck(아이디,비밀번호) 메서드 만들기
//MemberDAO 객체생성
//int check = userCheck(아이디,비밀번호) 호출
//check ==1 세션값생성 main.jsp
//check ==0 비밀번호 틀림 뒤로이동
//check ==-1 아이디없음 뒤로이동
MemberDAO md = new MemberDAO();
int check =md.userCheck(id, pass);
if(check==1){
	out.print("아이디 일치");
	session.setAttribute("id", id);
	response.sendRedirect("main.jsp");
}else if(check==0){
	out.println("비밀번호 틀림");//비밀번호 틀림 뒤로이동
	%>
	<script type="text/javascript">
		alert("비밀번호 틀림");
		history.back();
	</script>
	<%
}else if(check==-1){
	out.println("아이디 없음");//아이디 없음
	%>
	<script type="text/javascript">
		alert("아이디 없음");
		history.back();
	</script>
	<%
}


// // 1단계 드라이버 불러오기
// Class.forName("com.mysql.jdbc.Driver");
// // 2단계 디비연결
// String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
// String dbUser="root";
// String dbPass="1234";
// Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// // 3단계 sql member테이블안에 아이디 일치 한 회원 내용 가져오기, 폼아이디 디비 아이디 일치
// String sql="select * from member where id=?";
// PreparedStatement pstmt=con.prepareStatement(sql);
// pstmt.setString(1, id);
// // 4단계 실행 => 결과 저장
// ResultSet rs=pstmt.executeQuery();
// // 5단계  rs 첫행 이동 결과 있으면 아이디 일치  
// //                                  비밀번호 비교 맞으면  세션값 생성 main.jsp이동
// //                                  pass.equals(rs.getString("pass"))
// //                                             틀리면 "비밀번호 틀림"
// //                    없으면  "아이디 없음"
// if(rs.next()){
// 	//아이디 일치
// 	if(pass.equals(rs.getString("pass"))){
// 		// 비밀번호 일치
// 		// 폼아이디 디비 아이디 일치  폼비밀번호 디비비밀번호 일치
// 		//로그인 처리  => 세션값 부여  => 세션값 "id",id 생성       main.jsp 이동
// 		session.setAttribute("id", id);
// 		response.sendRedirect("main.jsp");
// 	}else{
// 		out.println("비밀번호 틀림");//비밀번호 틀림 뒤로이동
//<%-- 		%> --%>
<!-- 		<script type="text/javascript"> -->
// 			alert("비밀번호 틀림");
// 			history.back();
<!-- 		</script> -->
<%-- 		<% --%>
// // 	}
// // }else{
// // 	out.println("아이디 없음");//아이디 없음
<%-- 	%> --%>
<!-- 	<script type="text/javascript"> -->
// 		alert("아이디 없음");
// 		history.back();
<!-- 	</script> -->
<%-- 	<% --%>
// // }
<%-- %> --%>
</body>
</html>













