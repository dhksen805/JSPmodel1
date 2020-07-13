<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/main.jsp</h1>
<%
String id=(String)session.getAttribute("id");
// 세션값 null이면 세션값이 없으면
// loginForm.jsp이동
if(id==null){
	response.sendRedirect("loginForm.jsp");
}

%>
<%=id%>님 로그인 하셨습니다.
<input type="button" value="로그아웃" onclick="location.href='logout.jsp'"><br>
<a href="info.jsp">회원정보조회</a><br>
<a href="updateForm.jsp">회원정보수정</a><br>
<a href="deleteForm.jsp">회원정보삭제</a><br>

<%
// 세션값이 있으면
// 세션값이 "admin"과 같으면 회원목록이 보이게 설정
if(id!=null){
	if(id.equals("admin")){
		%><a href="list.jsp">회원목록</a><br><%
	}
	
}
%>

</body>
</html>

















