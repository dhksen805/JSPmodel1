<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>WebContent/jsp2/cookieMain.jsp</h1>

<%
String language="korea";
// request에 쿠키값가져오기
// 쿠키값 있으면
// for 쿠키값 뽑아오기
//		if 뽑아온 쿠키이름 "clang" 비교
//			일치하면 language변수에 쿠키값 저장

Cookie cookies[]=request.getCookies();


	
	if(cookies!=null){
		for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("clang")){
			language=cookies[i].getValue();
		}
	}
}
		out.println(language);
		
		if(language.equals("korea")){
			%><h3>안녕하세요. 이것은 쿠키예제입니다.</h3><%
		}else{
			%><h3>Hello, This is Cookie example.</h3><%
		}
		
%>
<form action="cookiePro.jsp" method="get">
<input type="radio" name="lang" value="korea" <% if(language.equals("korea")){%> checked <%} %> >한국어 설정<br>
<input type="radio" name="lang" value="english" <% if(language.equals("english")){%> checked <%} %> >영어 설정<br>
<input type="submit" value="언어설정">
</form>
</body>
</html>