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
request.setCharacterEncoding("utf-8");
String sid=request.getParameter("id");
String spw=request.getParameter("pw");
String sin=request.getParameter("intro");
String sgame=request.getParameter("game");
String scafe=request.getParameter("cafe");
String sfl=request.getParameter("fl");
String spig=request.getParameter("pig");
String sgen=request.getParameter("gen");
String sgr=request.getParameter("grade");
String sage=request.getParameter("age");

int nai = Integer.parseInt(sage);
%>
<h1>WebContent/jsp1/spypro.jsp</h1>
아이디:<%=sid %><br>
비밀번호:<%=spw %><br>
자기소개:<%=sin %><br>
좋아하는것:<%=sgame %><%=scafe %><%=sfl %><%=spig %><br>
성별:<%=sgen %><br>
학년:<%=sgr %><br>
나이:<%=sage %><br>

<%
if(nai>=20){
out.println("성인입니다.");
}else{
out.println("미성년자입니다.");
}

%>
</body>
</html>