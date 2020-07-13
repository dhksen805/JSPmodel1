<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="color.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%= col2%>">
<h1>WebContent/jsp1/include.jsp</h1>
<table border="1" width="600" height="600">
<tr><td colspan="2" height="100">
	<jsp:include page="include_top.jsp"/></td></tr>
<tr><td width="100">
	<jsp:include page="include_left.jsp"/></td><td>본문</td></tr>
<tr><td colspan="2" height="100">
	<jsp:include page="include_bottom.jsp"/></td></tr>


</table>
</body>
</html>