<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<!-- 웹 폰트 사이트 : fonts.google.com -->
</head>
<body>
	<!-- 초기화 -->
	<style>
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: sans-serif;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
}

img {
	border: 0; /* img 테두리 선 없음 */
}
</style>

	<!-- 헤더 -->
	<style>
#main_header {
	width: 960px;
	margin: 0 auto; /* 중잉 정렬 */
	height: 160px;
	position: relative; /* 절대 좌표 */
}

#main_header>#title {
	position: absolute;
	left: 20px;
	top: 30px;
}

#main_header>#main_gnb {
	position: absolute;
	right: 0;
	top: 0;
}

#main_header>#sub_gnb {
	position: absolute;
	right: 0;
	bottom: 10px;
}
</style>

	<!-- 타이틀 -->
	<style>
#title {
	font-family: 'Edu SA Beginner', cursive;
}
</style>

	<!-- 메뉴(1) -->
	<style>
#main_gnb>ul {
	overflow: hidden;
}

#main_gnb>ul>li {
	float: left;
}

#main_gnb>ul>li>a {
	display: block;
	padding: 2px 10px;
	border: 1px solid black;
}

#main_gnb>ul>li>a:hover {
	background-color: skyblue;
}

#main_gnb>ul>li:first-child>a {
	border-radius: 10px 0 0 10px; /* 테두리 10px 만큼 둥글게 지정 */
}

#main_gnb>ul>li:last-child>a {
	border-radius: 0 10px 10px 0;
}
</style>

	<!-- 메뉴(2) -->
	<style>
#sub_gnb>ul {
	overflow: hidden;
}

#sub_gnb>ul>li {
	float: left;
}

#sub_gnb>ul>li>a {
	display: block;
	padding: 2px 10px;
	border: 1px solid black;
}

#sub_gnb>ul>li>a:hover {
	background-color: skyblue;
}

#sub_gnb>ul>li:first-child>a {
	border-radius: 10px 0 0 10px; /* 테두리 10px 만큼 둥글게 지정 */
}

#sub_gnb>ul>li:last-child>a {
	border-radius: 0 10px 10px 0;
}
</style>

	<!-- 콘텐츠 -->
	<style>
#content {
	width: 960px;
	margin: 0 auto;
	overflow: hidden; /* 수평 레이아웃 */
}

#content>#main_section {
	width: 570px;
	float: left;
}

#content>#main_aside {
	width: 200px;
	float: right;
}
</style>

	<!-- 본문 -->
	<style>
#main_section>article.main_article {
	margin-bottom: 10px;
	padding: 20px;
	border: 1px solid black;
}
</style>

	<!-- 사이드 -->
	<style>
/* 첫번째 탭(first)*/
input:nth-of-type(1) {
	display: none;
}

input:nth-of-type(1) ~ div:nth-of-type(1) {
	display: none;
}

input:nth-of-type(1):checked ~ div:nth-of-type(1) {
	display: block;
}

/* 두번째 탭(second)*/
input:nth-of-type(2) {
	display: none;
}

input:nth-of-type(2) ~ div:nth-of-type(2) {
	display: none;
}

input:nth-of-type(2):checked ~ div:nth-of-type(2) {
	display: block;
}

/* 탭 모양 구성 */
section.buttons {
	overflow: hidden;
}

section.buttons>label {
	/* 수평 정렬 */
	display: block;
	float: left;
	/* 크기 및 글자 위치 지정 */
	width: 100px;
	height: 30px;
	line-height: 30px;
	text-align: center;
	/* 테두리 지정 */
	box-sizing: border-box;
	border: 1px solid black;
	/* 색상 설정 */
	background: white;
	color: black;
}

/* 선택했을 때 background 색상을 black으로 지정*/
input:nth-of-type(1):checked ~ section.buttons>label:nth-of-type(1) {
	background: black;
	color: gray;
}

input:nth-of-type(2):checked ~ section.buttons>label:nth-of-type(2) {
	background: black;
	color: gray;
}
</style>

	<!-- 목록 -->
	<style>
.item {
	overflow: hidden;
	padding: 10px;
	border: 1px solid black;
	border-top: none;
}

.thumnail {
	float: left;
}

.description {
	float: left;
	margin-left: 10px;
}

.description>strong {
	display: block;
	width: 120px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>


	<!-- 푸터 -->
	<style>
#main_footer {
	width: 960px;
	margin: 0 auto;
	margin-bottom: 10px;
	box-sizing: border-box;
	padding: 10px;
	border: 1px solid black;
	/* 글자 정렬 */
	text-align: center;
}
</style>

</body>

<header id="main_header">
	<div id="title">
		<h1>LOGIN</h1>
		<h2>test1</h2>
	</div>
	<nav id="main_gnb">
		<ul>
			<li><a href="#"> HOME </a></li>
			<li><a href="#"> 로그인 </a></li>
			<li><a href="#"> 게시판 </a></li>
			<li><a href="#"> 마이페이지 </a></li>
		</ul>
	</nav>

	<nav id="sub_gnb">
		<ul>
			<li><a href="#"> 회원가입 </a></li>
			<li><a href="#"> 아이디 찾기 </a></li>
			<li><a href="#"> 비밀번호 찾기 </a></li>
			<li><a href="#"> Q & A </a></li>
			<li><a href="#"> 게시판 목록 </a></li>
			<li><a href="#"> 글쓰기 </a></li>
		</ul>
	</nav>
</header>

<div id="content">
	<section id="main_section">
		<article class="main_article">
			<h1>Main Section</h1>
			<p>
				2022/07/13 test1 <br> 동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 무궁화
				삼천리 화려 강산 대한 사람 대한으로 길이 보전하세
			</p>
		</article>
		<article class="main_article">
			<h1>Main Section</h1>
			<p>
				2022/07/13 test1 <br> 동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 무궁화
				삼천리 화려 강산 대한 사람 대한으로 길이 보전하세
			</p>
		</article>
	</section>

	<aside id="main_aside">
		<input id="first" type="radio" name="tab" checked="checked"> <input
			id="second" type="radio" name="tab">
		<section class="buttons">
			<label for="first"> First</label> <label for="second"> Second</label>
		</section>

		<div class="tab_item">
			<ul>
				<li class="item"><a href="#">
						<div class="thumnail">
							<img src="http://via.placeholder.com/45">
						</div>
						<div class="description">
							<strong> HTML5 </strong>
							<p>2022-07-13</p>
						</div>
				</a></li>
				
				<li class="item"><a href="#">
						<div class="thumnail">
							<img src="http://via.placeholder.com/45">
						</div>
						<div class="description">
							<strong> HTML5 </strong>
							<p>2022-07-13</p>
						</div>
				</a></li>

				<li class="item"><a href="#">
						<div class="thumnail">
							<img src="http://via.placeholder.com/45">
						</div>
						<div class="description">
							<strong> HTML5 </strong>
							<p>2022-07-13</p>
						</div>
				</a></li>
			</ul>
		</div>

		<div class="tab_item">
			<ul>
				<li class="item"><a href="#">
						<div class="thumnail">
							<img src="http://via.placeholder.com/45">
						</div>
						<div class="description">
							<strong> HTML5 </strong>
							<p>2022-07-13</p>
						</div>
				</a></li>

				<li class="item"><a href="#">
						<div class="thumnail">
							<img src="http://via.placeholder.com/45">
						</div>
						<div class="description">
							<strong> HTML5 </strong>
							<p>2022-07-13</p>
						</div>
				</a></li>
			</ul>
		</div>

		<!-- 		<h1>Main Aside</h1> -->
		<!-- 		<p> -->
		<!-- 			2022/07/13 test1 <br> 동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 무궁화 -->
		<!-- 			삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 남산 위에 저 소나무 철갑을 두른 듯 바람 서리 불변함은 우리 기상일세 -->
		<!-- 			무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 -->
		<!-- 		</p> -->
	</aside>
</div>

<footer id="main_footer">
	<h3> 홈페이지 제작 </h3>
	<address> chlruddms135@naver.com </address>
</footer>

</html>
