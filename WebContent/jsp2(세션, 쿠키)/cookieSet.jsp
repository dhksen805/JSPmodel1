<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WebContent/jsp2/cookieSet.jsp</title>
</head>
<body>
<h1>WebContent/jsp2/cookieSet.jsp</h1>
<%
// 쿠키를 서버에 만들기
Cookie cookie=new Cookie("cook","Cookie Value");
// 시간 설정
cookie.setMaxAge(600);//600초 10분
// 클라이언트에 저장
response.addCookie(cookie);
//쿠키값 생성 메시지
//이동 cookieTest.jsp
%>
<script type="text/javascript">
alert("쿠키값생성");
location.href = "cookieTest.jsp"
</script>
</body>
</html>