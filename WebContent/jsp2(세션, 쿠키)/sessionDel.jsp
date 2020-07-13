<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
location.href="sessionTest.jsp";
alert("세션값 하나만 삭제");
</script>
</head>
<body>
<h1>WebContent/jsp2/sessionDel.jsp</h1>

<%
//하나만 삭제
session.removeAttribute("ses1");

//"하나만 삭제" 경고메시지 출력
//sessionTest.jsp 이동


%>
</body>
</html>