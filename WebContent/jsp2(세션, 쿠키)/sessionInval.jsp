<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
location.href="sessionTest.jsp";
alert("세션값 전체 삭제");
</script>
</head>
<body>
<h1>WebContent/jsp2/sessionInval.jsp</h1>
<%
//세션값 전체 삭제(로그아웃)
session.invalidate();
//"세션값 전체 삭제" 경고메시지 출력
// sessionTest.jsp 이동
%>
</body>
</html>