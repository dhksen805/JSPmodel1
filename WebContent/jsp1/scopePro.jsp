<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp1/scopePro.jsp</h1>

<%
// 유지영역         영역객체         유지범위
// page         pageContext      현페이지 내
// request         request         요청정보 유지
// session         session         페이지 상관없이 연결중이면 유지
// application      application      서버가 동작하는 동안

// 내장객체에 이름(String),속성값(모든형) 저장
pageContext.setAttribute("page", "pageContext");
request.setAttribute("req", "request Value");
session.setAttribute("ses", "session Value");
application.setAttribute("app", "application Value");

request.setCharacterEncoding("utf-8");
//id 파라미터 request에서 가져오기
String id = request.getParameter("id");
String pass = request.getParameter("pass");

%>


아이디:<%=id %><br>
비밀번호:<%=pass %><br>
pageContext 값:<%=pageContext.getAttribute("page") %><br>
request 값:<%=request.getAttribute("req") %><br>
session 값:<%=session.getAttribute("ses") %><br>
application 값:<%=application.getAttribute("app") %><br>
<a href = "scopeProPro.jsp?id=<%=id%>&pass=<%=pass%>">scopeProPro.jsp</a>
<script type="text/javascript">
  //이동
  //alert("scopeProPor.jsp이동")
<%--   location.href = "scopeProPro.jsp?id=<%=id%>&pass=<%=pass%>" --%>
</script>
<%
//response.sendRedirect("scopeProPro.jsp?id="+id+"&pass="+pass);

// forworf 액션태그 : jsp문법 태그처럼 사용 가능 이동
//	1. scopePro.jsp => scopeProPro.jsp : 주소줄 scopePro.jsp 유지
//	2. scopePro.jsp 모든 request정보를 가지고 이동
%>

<%-- <jsp:forward page="scopeProPro.jsp"/> --%>







</body>
</html>