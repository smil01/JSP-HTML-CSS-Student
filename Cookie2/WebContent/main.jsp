<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<style type="text/css">
img {
	width: 300px;
	height: 150px;
}

td {
	text-align: center;
}

table {
	background-color: rgba(204, 00, 255, 0.1);
	margin: 0px auto;
	margin-top: 150px;
	border: 2px solid;
	border-color: white;
}

body {
	background-image: url("img/_bg.jpg");
	background-size: cover;
}

input[type="submit"] {
	margin-bottom: 5px;
}

div {
	border-color: white;
	border: 2px solid;
	width: 320px;
	height: 500px;
	background-color: red;
	color: white;
	position: fixed;
	right: 10px;
	top: 150px;
	text-align: center;
	overflow: auto;
	width: 320px;
}
</style>
</head>
<body>
	<form action="MakeCookie" method="get">
		<table>
			<thead>
				<tr>
					<td colspan="4"><h1>설맞이 세트</h1></td>
				</tr>
			</thead>
			<tr>
				<td><img src="img/_1.jpg"></td>
				<td><img src="img/_2.jpg"></td>
				<td><img src="img/_3.jpg"></td>
				<td><img src="img/_4.jpg"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="goods" value="_1"></td>
				<td><input type="checkbox" name="goods" value="_2"></td>
				<td><input type="checkbox" name="goods" value="_3"></td>
				<td><input type="checkbox" name="goods" value="_4"></td>
			</tr>
			<tr>
				<td>어른용 장영란법 세트</td>
				<td>아이용 장영란법 세트</td>
				<td>초딩용 장영란법 세트</td>
				<td>일본인용 장영란법 세트</td>
			</tr>
			<tr>
				<td><img src="img/_5.jpg"></td>
				<td><img src="img/_6.jpg"></td>
				<td><img src="img/_7.jpg"></td>
				<td><img src="img/_8.jpg"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="goods" value="_5"></td>
				<td><input type="checkbox" name="goods" value="_6"></td>
				<td><input type="checkbox" name="goods" value="_7"></td>
				<td><input type="checkbox" name="goods" value="_8"></td>
			</tr>
			<tr>
				<td>존맛세트</td>
				<td>주정뱅이세트</td>
				<td>안주1</td>
				<td>안주2</td>
			</tr>
			<tr>
				<td colspan="4"><input class="btn btn-primary btn-lg"
					type="submit" value="장바구니로"></td>
			</tr>
		</table>
	</form>
	<div>
		<h3>장바구니 목록</h3>
		<%
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(Cookie cookie : cookies){
					if(!cookie.getName().equals("JSESSIONID")){
						out.print("<img src='img/"+cookie.getValue()+".jpg'>");
						out.print("<br>");
					}
				}
			}
		%>
	</div>
</body>
</html>