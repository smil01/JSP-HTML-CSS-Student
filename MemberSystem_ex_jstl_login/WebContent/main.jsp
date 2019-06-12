<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<style type="text/css">
	div{
		width: 200px;
		height: 200px;
		border: 3px;
		border-color: black;
		border-style: dashed;
		background-color: yellow;
		padding-top:45px;
		margin: 0px auto;
		text-align: center;
	}

	a{
		width: 150px;
	}
</style>
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>
	<div>
		<a class="btn btn-primary btn-lg" href="login.jsp" role="button">로그인</a>
		<br>
		<br>
		<a class="btn btn-primary btn-lg" href="join.jsp" role="button">회원가입</a>
	</div>
</body>
</html>