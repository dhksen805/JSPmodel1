<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
%>
<h1>WebContent/jsp2/sessionPro.jsp</h1>
폼에서 입력받은 아이디:<%=id %><br>
폼에서 입력받은 비밀번호:<%=pass %><br>
<%
String dbId="admin";
String dbPass="p123";
%>
디비에 저장된 아이디:<%="dbId" %><br>
디비에 저장된 비밀번호:<%="dbPass" %><br>
<%
//아이디 비교
// 폼에 입력한 아이디   디비에 저장된 아이디 비교
// 문자열.equals("문자열") => 참조형 문자열 비교
if(id.equals(dbId)){
	//아이디 일치
	out.println("아이디 일치");
	if(pass.equals(dbPass)){
		out.println("비밀번호 일치");
		//세션값 생성(페이지 상관없이 값을 유지, 권한 부여, 로그인 인증)
		// 이름 "id", 값 id
		//sessionMain.jsp 이동
		session.setAttribute("id","id");
		response.sendRedirect("sessionMain.jsp");
	}else{
		out.println("비밀번호 불일치");
	}
}else{
	//아이디 틀림
	out.println("아이디 불일치");
	
}








%>
</body>
</html>