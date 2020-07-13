<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/testForm3.jsp</h1>
<form action="testPro3.jsp" method="get" name="fr" > 
아이디 : <input type="text" name="id" ><br>
비밀번호 : <input type="password" name="pw" ><br>
자기소개 : <textarea name="intro" rows="5" cols="10">자기소개를 입력하세요</textarea><br>
취미 선택하세요 : <input type="checkbox" name="hob" value="여행">여행
		  	 <input type="checkbox" name="hob" value="게임">게임
		  	 <input type="checkbox" name="hob" value="독서">독서<br>
성별 :   <input type="radio" name="gen" value="남">남
	   <input type="radio" name="gen" value="여">여<br>
학년 선택하세요 : <select name="hak">
<option value="">학년 선택하세요</option>
<option value="1">1학년</option>
<option value="2">2학년</option>
<option value="3">3학년</option>
</select><br>
<input type="submit" value="회원가입">

</form>
</body>
</html>