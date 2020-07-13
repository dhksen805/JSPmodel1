<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WebContent/jsp2/cookieDel.jsp</title>
</head>
<body>
<h1>WebContent/jsp2/cookieDel.jsp</h1>
<%
//클라이언트에서 http가 쿠키값 가져와서 request에 저장
Cookie cookies[]=request.getCookies();
Cookie cookie=new Cookie("cook","Cookie Value");
//배열안에 내용 출력 for
	//쿠키이름 "cook" 비교해서 찾기 if
		// 찾은 쿠키값을 시간0으로 설정
		// 시간 0으로 설정한 쿠키값을 클라이언트에 저장
	if(cookies==null){ // 쿠키값이 없는경우
		for(int i =0; i<cookies.length; i++){
			if(cookies[i].getName().equals("cook")){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				
			}
		}
	}
// 쿠키값 삭제 메시지
// 이동 cookieTest.jsp
%>
<script type="text/javascript">
alert("쿠키값 삭제");
location.href = "cookieTest.jsp"
</script>



</body>
</html>