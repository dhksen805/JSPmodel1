<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>WebContent/jsp1/testPro3.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
String[] hob= request.getParameterValues("hob"); // 값이 여러개일때 모두표시
%>

아이디:<%=request.getParameter("id")%><br>
비밀번호:<%=request.getParameter("pw")%><br>
자기소개:<%=request.getParameter("intro")%><br>
성별:<%=request.getParameter("gen")%><br>
학년:<%=request.getParameter("hak")%><br>
취미:
<table border="1">
<tr>
<td>번호</td><td>취미</td>
</tr>
<%
for(int i = 0; i<hob.length; i++){
	out.println("<tr><td>"+(i+1)+"</td><td>"+hob[i]+"</td></tr>");
}
%>

</table>






</body>
</html>