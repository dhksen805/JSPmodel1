<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	location.href="sessionTest.jsp";
	alert("세션값 생성");

</script>
</head>
<body>
<h1>WebContent/jsp2/sessionSet.jsp</h1>
<%
//세션값 만들기: 연결정보를 저장하는 공간
//세션값 하나만들기
session.setAttribute("ses1", "session Value1");
session.setAttribute("ses2", "session Value2");

//"세션값 생성" 경고메시지 출력
// sessionSet.jsp 이동
%>

</body>
</html>