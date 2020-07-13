<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/response.jsp</h1>
<%
// 사용자 요청이 들어오면 request, response 자동생성
// response : 처리한 결과 응답 정보 저장 => http보냄 => 사용자 보여짐
// request, response 기억장소 사라짐
// request.변수  response.함수()
// response.setHeader("accept-language", "en") Header값 설정, 언어설정 변경
// response.setContentType("text/html; charset=UTF-8") // 타입을 변경
// response.addCookie(쿠키값)		서버에서 만든 쿠키값을 사용자에게 저장
// response.sendRedirect(주소)	다른 주소를 이동(요청)

response.sendRedirect("request.jsp");

%>





</body>
</html>