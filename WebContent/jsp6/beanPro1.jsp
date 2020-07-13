<%@page import="jsp6.DAOTest1"%>
<%@page import="jsp6.BeanTest1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp6/beanPro.jsp</h1>
<%
//request 한글처리
request.setCharacterEncoding("utf-8");
//id 파라미터 가져오기
String id = request.getParameter("id");
//id,pass,name,reg_date => 자바파일 insert(id,pass,name,reg_date,...) 데이터 전달
//id,pass,name,reg_date 내용을 한군데 담아서 => insert메서드(한군데 담은 것)
// 파라미터 한군데 담는것을 자바파일로 준비
// JavaResources src 폴더 패키지 jsp - class BeanTest1
// BeanTest1 => 기억장소 할당, 객체생성 
BeanTest1 bt1 = new BeanTest1();

// setId() 메서드 호출 id변수 내용을 BeanTest1 멤버변수 id에 값 저장
bt1.setId(id);
out.println("자바빈에 저장된 id값 : "+bt1.getId());



//디비연결 insert id,pass,name,reg_date... => 자바파일 insert메서드()
//자바 패키지 jsp6 DAOTest1	자바파일	insert() 메서드()
//DAoTest1 기억장소 할당, 객체생성 insert() 호출
DAOTest1 dt1 = new DAOTest1(); 
dt1.insert(bt1);


%>
</body>
</html>