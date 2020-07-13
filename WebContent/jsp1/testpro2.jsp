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

String fid = request.getParameter("id");
String fage = request.getParameter("age");

int a = Integer.parseInt(fage);

%>
<h1>WebContent/jsp1/testpro2.jsp</h1>
아이디:<%=fid %><br>
나이:<%=fage %><br>
<%
// 나이를 숫자로 변경해서 나이가 20세 이상이면"성인입니다." 아니면 "미성년입니다."
if(a >= 20){
out.println("성인입니다");
}else{
	out.println("미성년입니다");
}
System.out.println("콘솔출력");

String s1="성인입니다";
String s2="미성년입니다";

if(a>=20){
 	%><%=s1 %>성인입니다.<%
}else{
 	%><%=s2 %>미성년입니다.<%
}
%>
<br><br><br>
아이디는 <%=fid %>이고<br>나이는 <%=fage %>입니다.<br><br><br>
<%
out.println("아이디는" + fid+"이고<br>나이는"+fage+"입니다.<br>");
%>


</body>
</html>