<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
location.href="sessionMain.jsp";
alert("로그아웃 되었습니다.");
</script>
</head>
<body>
<h1>WebContent/jsp2/sessionLogout.jsp</h1>
<%
//세션값 전체 삭제
session.invalidate();
//로그아웃 메시지 출력
//sessionMain.jsp

%>
</body>
</html>