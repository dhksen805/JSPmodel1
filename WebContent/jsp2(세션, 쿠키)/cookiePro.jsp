<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/cookiePro.jsp</h1>
<%
// lang 파라미터 값 가져오기
String lang = request.getParameter("lang");
out.println(lang);
// 쿠키값 만들어주기 "clang",lang
Cookie cookie = new Cookie("clang",lang);
// 쿠키 시간 설정
cookie.setMaxAge(600);
// 클라이언트 저장
response.addCookie(cookie);
// 쿠키값 생성 메시지
// 이동 cookieMain.jsp
%>
<script type="text/javascript">
alert("쿠키가 생성되었습니다");
location.href = "cookieMain.jsp";

</script>


</body>
</html>