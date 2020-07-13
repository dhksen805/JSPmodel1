<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/session.jsp</h1>
<%
// session 내장객체 : 클라이언트가 서버에 접속하면  동시에 접속정보를 저장하는 공간
// session.변수 session.함수()
%>

세션ID: <%=session.getId() %><br>
세션값 만들어진 시간 : <%=session.getCreationTime() %><br>
세션값 최근 사용 시간 : <%=session.getLastAccessedTime() %><br>
세션값 유지 시간 : <%=session.getMaxInactiveInterval() %><br>
세션값 유지 시간 변경 <% session.setMaxInactiveInterval(3600); %><br>
세션값 변경 유지 시간 : <%=session.getMaxInactiveInterval() %>초<br>
세션값 초기화(전체삭제) 로그아웃<%
					session.invalidate();
%>
</body>
</html>