<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(){
	if(document.getElementById("idd").value == ""){
		alert("아이디를 입력해주세요");
		document.spy.id.focus();
		return false;
	}if(document.getElementById("pww").value==""){
		alert("비밀번호를 입력해주세요");
		document.spy.pw.focus();
		return false;
	}if(document.spy.intro.value=="자기소개"){
		alert("자기소개를 작성하세요");
		document.spy.intro.select();
		return false;
	}if(document.spy.game.checked == false && document.spy.cafe.checked == false 
			&& document.spy.fl.checked == false && document.spy.pig.checked == false ){
		alert("좋아하는 항목 체크해주세요");
		return false;
	}if(document.spy.gen[0].checked== false && document.spy.gen[1].checked== false){
		alert("성별을 체크해주세요");
		document.spy.gen[0].focus();
		return false;
	}if(document.spy.grade.options[0].selected){
		alert("학년을 선택해주세요");
		document.spy.grade.focus();
		return false;
	}if(document.spy.age.value==""){
		alert("나이를 입력해주세요");
		document.spy.age.focus();
		return false;
	}
}
</script>
</head>
<body>
<h1>WebContent/jsp1/spyform.jsp</h1>
<form action="spypro.jsp" method="post" name="spy" onsubmit="return check()">
아이디:<input type="text" name="id" id="idd"><br>
비밀번호:<input type="password" name="pw" id="pww"> <br>
자기소개:<textarea name="intro" raws="5" cols="10">자기소개</textarea><br>
좋아하는 것:<input type="checkbox" name="game" value="게임">게임
<input type="checkbox" name="cafe" value="커피">커피
<input type="checkbox" name="fl" value="튤립">튤립
<input type="checkbox" name="pig" value="족발">족발<br>
성별:<input type="radio" name="gen" value="남자">남
<input type="radio" name="gen" value="여자">여<br>
학년:<select name="grade">
<option value="학년선택">학년선택</option>
<option value="1">1학년</option>
<option value="2">2학년</option>
<option value="3">3학년</option>
</select>
나이:<input type="text" name="age"><br>
<input type="submit" value="정보전송">
</form>

</body>
</html>