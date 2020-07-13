<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/for.jsp</h1>
<table border="1">
<tr><td>번호</td><td>제목</td></tr>
<tr><td>1</td><td>제목1</td></tr>
<tr><td>2</td><td>제목2</td></tr>
<tr><td>3</td><td>제목3</td></tr>
<tr><td>4</td><td>제목4</td></tr>
<tr><td>5</td><td>제목5</td></tr>
</table>

<%
//for 1~5출력
for(int num=1; num<=5; num++){
	out.println(num);
}
out.println("<br>");
%><br><%
for(int num=1; num<=5; num++){
	%><%=num %> <%
}
%>
<br>
<table border="1">
<tr><td>번호</td><td>제목</td></tr>
<%
for(int num=1; num<=5; num++){
	out.println("<tr><td>"+num+"</td><td>제목"+num+"</td></tr>");
}

%>
</table>

<br>
<table border="1">
<tr><td>번호</td><td>제목</td></tr>
<%
for(int num=1; num<=5; num++){
	%><tr><td><%=num %></td><td>제목<%=num %></td></tr><%
}
%>

</table>
<br>
<%
int a = 10;
out.println(a+"변수출력");
%>

<%!
// 변수 선언 모든 명령중에 가장 먼저 실행
// 전역변수 선언
int a=10;
// 함수 선언 가능
%>


</body>
</html>