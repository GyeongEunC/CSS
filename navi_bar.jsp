<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.navi > li {
	float: left;
}

.navi > li > a {
	padding: 10px 50px;
}

li a {
	background-color: #39f;
    text-decoration: none;
    font-weight: bold;
    color: #000000;
    display: block;
    text-align: center;
    padding: 10px;
}

li a:hover {
	background-color:#33f;
	color: white;
}

/* 하위메뉴 감추기 */
.navi li ul {
	display: none;
}

/* 마우스 위치에 따라 하위메뉴 나타냄 */
.navi li:hover ul {
	display: block;
}

/* 투명도 */
.navi li ul {
	opacity: 50;
}

/* 변경 시간 1초 */
.navi li:hover ul {
	opacity: 1;
    transition: all 1s;
}

/* a태그 트랜지션 설정 */
.navi li a{
	transition: all 0.5s;
}

</style>

<body>

</body>

<nav>
	<ul class="navi">
		<li><a href="#"> HOME </a></li>
		<li><a href="#"> 로그인 </a>
			<ul>
				<li><a href="#"> 회원가입 </a></li>
				<li><a href="#"> 아이디 찾기 </a></li>
				<li><a href="#"> 비밀번호 찾기 </a></li>
			</ul>
		</li>
		<li><a href="#"> 게시판 </a>
			<ul>
				<li><a href="#"> Q & A </a></li>
				<li><a href="#"> 게시판 목록 </a></li>
				<li><a href="#"> 글쓰기 </a></li>
			</ul>
		</li>
		<li><a href="#"> 마이페이지 </a></li>
	</ul>
</nav>


</html>
