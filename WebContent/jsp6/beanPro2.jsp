<%@page import="jsp6.DAOTest2"%>
<%@page import="jsp6.BeanTest2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp6/beanPro2.jsp</h1>
<%
//request 한글처리
request.setCharacterEncoding("utf-8");
//액션태그jsp 파일에서만 사용가능
//객체생성 jsp:userBean set메서드 호출 jsp:setProperty
%>
<jsp:useBean id="bt22" class="jsp6.BeanTest2"/>
<%-- <jsp:setProperty property="name" name="bt22" param="name"/> --%>
<%-- <jsp.setProperty property="age" name="bt22" param="age"/> --%>
<jsp:setProperty property="*" name="bt22"/>
<%
//name age 파라미터 가져오기
String name = request.getParameter("name");
String age = request.getParameter("age");

// 패키지 jsp6 파일 BeanTest2
// BeanTest2 객체생성
// 멤버변수 name, age <= name age 파라미터 가져온값 저장
BeanTest2 bt2 = new BeanTest2();
bt2.setName(name);
bt2.setAge(age);
out.println("자바빈에 저장된 name값 : "+bt2.getName());%><br><%
out.println("자바빈에 저장된 age값 : "+bt2.getAge());
// 패키지 jsp6 파일 DAOTest2 insert()메서드 만들기
// DAOTest2 객체생성
// insert()메서드 호출
DAOTest2 dt2 = new DAOTest2();
dt2.insert(bt2);
// 액션태그로 객체생성한 bt22
dt2.insert(bt22);

%>
</body>
</html>