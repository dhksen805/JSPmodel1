<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
/* UI Pattern Script */
/* //UI Pattern Script */
</script>

<style>


.fixed_img_col ul {
	overflow: hidden;
	position: relative;
	margin: 0;
	padding: 0;
	border: 1px solid #ddd;
	border-left: 0;
	border-right: 0;
	font-size: 12px;
	font-family: Tahoma, Geneva, sans-serif;
	list-style: none;
	*zoom: 1
}


.fixed_img_col ul:after {
	display: block;
	clear: both;
	content: ""
}


.fixed_img_col li {
	overflow: hidden;
	float: left;
	position: relative;
	top: 1px;
	width: 150px;
	height: 210px;
	border-bottom: 1px solid #eee
}


.fixed_img_col .thumb {
	display: block;
	overflow: hidden;
	position: relative;
	width: 120px;
	height: 120px;
	background: #eee;
	color: #666;
	line-height: 120px;
	text-align: center;
	white-space: nowrap
}


.fixed_img_col .thumb img {
	display: block;
	width: 120px;
	height: 120px;
	border: 0
}


.fixed_img_col .thumb em {
	visibility: hidden;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 1px;
	height: 1px;
	background: #000;
	font-weight: bold;
	font-style: normal;
	color: #fff;
	text-align: center;
	opacity: .6;
	filter: alpha(opacity = 60)
}


.fixed_img_col .thumb em {
	_visibility: visible;
	_width: 100%;
	_height: auto;
	_line-height: 20px
}


.fixed_img_col a {
	display: block;
	width: 120px;
	margin: 0 auto;
	padding: 20px 0 0 0;
	text-decoration: none;
	cursor: pointer
}


.fixed_img_col a strong {
	display: inline-block;
	margin: 8px 0 0 0;
	color: #333
}


.fixed_img_col p {
	width: 120px;
	margin: 0 auto;
	font-size: 11px;
	color: #767676
}


.fixed_img_col a:hover strong, .fixed_img_col a:active strong,
	.fixed_img_col a:focus strong {
	text-decoration: underline
}


.fixed_img_col a:hover .thumb, .fixed_img_col a:active .thumb,
	.fixed_img_col a:focus .thumb {
	margin: -3px;
	border: 3px solid #eee;
	-moz-box-shadow: 0 0 5px #666;
	-webkit-box-shadow: 0 0 5px #666
}


.fixed_img_col a:hover .thumb em, .fixed_img_col a:active .thumb em,
	.fixed_img_col a:focus .thumb em {
	visibility: visible;
	width: 100%;
	height: auto
}
</style>


</head>
<body>


	<h1>LIVE List</h1>
	
	<div class="fixed_img_col">

		<ul>
		<%for(int i=0; i<4; i++){ %>
			<li><a href="#"><span class="thumb"><img
						src="img/@thumbSquare.jpg" alt=""> <em>Category</em></span> <strong>이미지
						제목</strong></a><p>분류
				<p>2010-12-24</p></li>
			<li><a href="#"><span class="thumb"><img
						src="img/@thumbSquare.jpg" alt=""> <em>Category</em></span> <strong>이미지
						제목</strong></a>
				<p>2010-12-24</p></li>
			<li><a href="#"><span class="thumb"><img
						src="img/@thumbSquare.jpg" alt=""> <em>Category</em></span> <strong>이미지
						제목</strong></a>
				<p>2010-12-24</p></li>
				<%} %>
			
		</ul>
	</div>


</body>
</html>