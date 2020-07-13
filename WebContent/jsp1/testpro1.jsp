<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// post방식으로 넘어온 한글처리 /request.getParameter하기전에 해줘야함
request.setCharacterEncoding("utf-8");

// 문자열 변수 = 폼에서 입력한 파라미터 값 가져와서 저장
// 폼에서 입력한 파라미터 값은 문자열이다.
String fname=request.getParameter("name");
String fnum=request.getParameter("num");
// 문자열을 정수형으로 바꾸기
int n = Integer.parseInt(fnum);
int n2 = Integer.parseInt(request.getParameter("num"));
%>
<h1>WebContent/jsp1/testpro1.jsp</h1>
이름: <%=fname%><br>
좋아하는숫자: <%=fnum%><br>
좋아하는 숫자 +100: <%=fnum+100 %><br>
좋아하는 숫자 정수형 변경 +100: <%=n+100 %><br>
</body>
</html>