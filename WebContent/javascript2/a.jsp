<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/js2/a.jsp</h1>
<!-- 서버에 폼의 정보를 저장하는 공간 request 내장객체 -->
<!-- request변수 request.함수() 내장객체 -->
<!-- request.getParameter("태그이름") : request에 저장된 내용을 가져옴 -->
아이디: <%=request.getParameter("id") %><br>
비밀번호:<%=request.getParameter("pw") %><br>
자기소개:<%=request.getParameter("intro") %><br>
취미:<%=request.getParameter("hob") %><br>
성별:<%=request.getParameter("gen") %><br>
학년:<%=request.getParameter("hak") %><br>
</body>
</html>