<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link href="css/nav.css" rel="stylesheet"/>
	<script type="text/javascript" src="js/nav.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
</head>
<body>

	<c:if test="${id==null}">
		<div id="navDiv">
			<div id="homeName"><a href="/">홈페이지</a></div>
			<nav id="nav">
				<ul id="menu" >
					<li class="menu"><a onclick="login('login')">로그인</a></li>
					<li class="menu"><a onclick="login('join')">회원가입</a></li>
					<li class="menu"><a href="#!">my</a></li>
					<li class="menu"><a href="#!">wish</a></li>
				</ul>
			</nav>
		</div>
	</c:if>
	<c:if test="${id!=null}">
		<div id="navDiv">
			<div id="homeName"><a href="/">홈페이지</a></div>
			<nav id="nav">
				<ul id="menu" >
					<li class="menu"><a onclick="#">로그아웃</a></li>
					<li class="menu"><a href="#!">my</a></li>
					<li class="menu"><a href="#!">wish</a></li>
				</ul>
			</nav>
		</div>
		<input type="button" value="리뷰쓰기" onclick="review"/>
	</c:if>
	
</body>
</html>
