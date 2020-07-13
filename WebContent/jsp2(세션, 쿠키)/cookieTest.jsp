<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WebContent/jsp2/cookieTest.jsp</title>
</head>
<body>
<%
// 세션값:페이지 상관없이 값저장해서 유지, 서버에 저장, 로그인 인증, 연결정보를 저장하는 기억장소
// 쿠키값:페이지 상관없이 값저장해서 유지, 클라이언트 저장, 보안상 관계없는 값 저장, 서버에 부하를 줄이고자 할때
String cookname="";
String cookvalue="";


// 클라이언트에서 http가 쿠키값 가져와서 request에 저장
Cookie cookies[]=request.getCookies();
// 배열안에 내용 출력
// out.println("쿠키값 개수 : "+cookies.length+"<br>");
for(int i=0;i<cookies.length;i++){
out.println("쿠키이름 : "+cookies[i].getName()+"<br>");
out.println("쿠키값 : "+cookies[i].getValue()+"<br>");
		//쿠키 이름 "cook" 비교해서 찾기
	if(cookies[i].getName().equals("cook")){
// 		out.println("찾은 쿠키이름 : "+cookies[i].getName()+"<br>");
		cookname=cookies[i].getName();
// 		out.println("찾은 쿠키값 : "+cookies[i].getValue()+"<br>");
		cookvalue=cookies[i].getValue();
	}
}
out.println("찾은 쿠키이름 : "+cookname+"<br>");
out.println("찾은 쿠키값 : "+cookvalue+"<br>");
%>

<h1>WebContent/jsp2/cookieTest.jsp</h1>
<input type="button" value="쿠키값 저장" onclick="location.href='cookieSet.jsp'">
<input type="button" value="쿠키값 하나만 삭제" onclick="location.href='cookieDel.jsp'">

</body>
</html>