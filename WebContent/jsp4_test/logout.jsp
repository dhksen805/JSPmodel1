<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp4/Logout.jsp</h1>
<%
//세션값 전체 삭제
session.invalidate();
%>
<script type="text/javascript">
location.href="main.jsp";
alert("로그아웃 되었습니다.");
</script>

</body>
</html>