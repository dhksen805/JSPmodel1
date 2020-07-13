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
<h1>WebContent/jsp4/updatePro.jsp</h1>
<%
// 한글처리
request.setCharacterEncoding("utf-8");
// id pass name 파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
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
//                           3단계 sql update name수정 조건 id일치
//                           4단계 실행
//                           "회원정보 수정"  main.jsp 이동
//                   비밀번호 틀리면 
//                       "비밀번호틀림" 뒤로이동 

if(rs.next()){
   //아이디 일치
   if(pass.equals(rs.getString("pass"))){
      // 비밀번호 일치
      // 폼아이디 디비 아이디 일치  폼비밀번호 디비비밀번호 일치
      //로그인 처리  => 세션값 부여  => 세션값 "id",id 생성       main.jsp 이동
      String sql2="update member set name=? where id=?";
PreparedStatement pstmt2=con.prepareStatement(sql2);
pstmt2.setString(2, id); // setInt(물음표순서,값)
pstmt2.setString(1, name);
pstmt2.executeUpdate();
      
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
      out.println("아이디 일치");//아이디 일치
      %>
      <script type="text/javascript">
         alert("아이디 일치");
         history.back();
      </script>
            <%
   }
   %>
</body>
</html>












