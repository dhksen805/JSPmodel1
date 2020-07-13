<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/applicaion.jsp</h1>
<%
// application내장객체 : 웹 애플리케이션 정보를 저장 내장객체
//						웹 서버가 start 생성 -> 웹서버가 stop되면 사라짐
// application.변수 application.함수()
%>

서버정보:<%=application.getServerInfo()%><br>
서버물리적경로:<%=application.getRealPath("/") %><br> 
<%
// pageContext : 현페이지 정보를 저장하는 내장객체
//				페이지가 바뀌면 새로운 페이지 정보를 새롭게 저장
%>
현페이지 정보 : <%=pageContext.getRequest() %><br>
현페이지 정보 : <%=pageContext.getSession() %><br>
<%
// out 내장객체 : 출력할 정보를 저장하는 내장객체
out.println("출력정보저장<br>");
out.println("출력할정보를 저장하는 기억장소 크기:"+out.getBufferSize()+"<br>");
out.println("남아있는 기억장소 크기:"+out.getRemaining()+"<br>");
out.close();
// 에러발생
out.println("다시출력");

//pageContext < request, response < session < application
%>






</body>
</html>