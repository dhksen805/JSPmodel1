<%@page import="member.MemberDAO"%>
<%@page import="member.MemberBean"%>
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
<h1>WebContent/member/insertPro.jsp</h1>
<%
// request 한글처리
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mb2" class="member.MemberBean"/>
<jsp:setProperty property="*" name="mb2"/>
<%
// id pass name 파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
// 현시스템 날짜 가져오기
Timestamp reg_date=new Timestamp(System.currentTimeMillis());

// 패키지 member 파일이름 MemberBean 멤버변수 id pass name reg_date
// MemberBean 객체생성
MemberBean mb = new MemberBean();
// 멤버변수 <- 파라미터값 저장
mb.setName(name);
mb.setPass(pass);
mb.setId(id);
mb.setReg_date(reg_date);
out.println("MemberBean에 저장된 name값 : "+mb.getName());%><br><%
out.println("MemberBean에 저장된 pass값 : "+mb.getPass());%><br><%
out.println("MemberBean에 저장된 id값 : "+mb.getId());%><br><%
out.println("MemberBean에 저장된 reg_date값 : "+mb.getReg_date());

// 패키지 member 파일이름 MemberDAO insertMember(멤버정보를 저장한 변수) 메서드 만들기
// MemberDAO 객체생성
MemberDAO md = new MemberDAO();
//insertMember(멤버를 저장한 주소값) 호출
md.insertMember(mb);
md.insertMember(mb2);



// // 1단계 드라이버로더
// Class.forName("com.mysql.jdbc.Driver");
// // 2단계 디비연결
// String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
// String dbUser="jspid";
// String dbPass="jsppass";
// Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// // 3단계 sql문 만들고 실행할 객체생성  insert
// String sql="insert into member(id,pass,name,reg_date) values(?,?,?,?)";
// PreparedStatement pstmt=con.prepareStatement(sql);
// pstmt.setString(1, id);
// pstmt.setString(2, pass);
// pstmt.setString(3, name);
// pstmt.setTimestamp(4, reg_date);
// // 4단계 sql문 실행
// pstmt.executeUpdate();
%>
<script type="text/javascript">
	alert("회원가입성공")
	location.href="loginForm.jsp";
</script>
</body>
</html>















