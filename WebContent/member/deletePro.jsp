<%@page import="member.MemberBean"%>
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
<h1>WebContent/member/deletePro.jsp</h1>
<%
// 한글처리
request.setCharacterEncoding("utf-8");
// id pass  파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
//MemberBean mb 객체생성
MemberBean mb = new MemberBean();
//멤버변수 <= 파라미터값 저장
mb.setId(id);
mb.setPass(pass);

//MemberDAO 객체생성
MemberDAO md = new MemberDAO();
//int check =    userCheck(아이디,비밀번호) 호출
int check = md.userCheck(id, pass);
// check ==1   수정하는메서드호출  deleteMember(mb)   main.jsp 이동
// check ==0  비밀번호틀림 뒤로이동
// check ==-1 아이디없음 뒤로이동
if(check==1){
	out.print("아이디 일치");
	md.deleteMember(mb);
	response.sendRedirect("logout.jsp");
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
		// 3단계 삭제
// 		sql="delete from member where id=?";
// 		pstmt=con.prepareStatement(sql);
// 		pstmt.setString(1, id);
// 		// 4단계  객체 실행 (sql구문이 실행) - insert, update, delete
// 		pstmt.executeUpdate();
// 		//세션값 초기화
// 		session.invalidate();
// 		response.sendRedirect("main.jsp");
		%>
		<script type="text/javascript">
			alert("비밀번호 틀림");
			history.back();
		</script>
		<%
		%>
	<script type="text/javascript">
		alert("아이디 없음");
		history.back();
	</script>
	<%
%>
</body>
</html>