<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/request.jsp</h1>
<%
// request내장객체 : 사용자가 요청한 정보를 http가 들고와서 서버기억장소 request 저장
// request.변수 request.함수() request.getParameter("파라미터이름")
// request => http 가진 모든 정보(헤더) 저장, 클라이언트 정보, 서버정보 , 세션, 쿠키 정보
%>
서버이름: <%=request.getServerName() %><br>
서버 포트번호 : <%=request.getServerPort() %><br>
URL주소값 : <%=request.getRequestURL() %><br>
URI주소값 : <%=request.getRequestURI() %><br>
사용자 IP 주소 : <%=request.getRemoteAddr() %><br>
프로토콜 : <%=request.getProtocol() %><br>
요청방식 : <%=request.getMethod() %><br>
컨텍스트(프로젝트) 경로 : <%=request.getContextPath() %><br>
물리적인 경로 : <%=request.getRealPath("/") %><br>

http헤더 정보 : <%=request.getHeader("host") %><br>
http헤더 정보 : <%=request.getHeader("accept-language") %><br>
http헤더 정보 : <%=request.getHeader("accept") %><br>
http헤더 정보 : <%=request.getHeader("user_agent") %><br>
http헤더 정보 : <%=request.getHeader("connection") %><br>


</body>
</html>