<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr {
	height: 40px;
	text-align: center;
}

table {
	margin: 0 auto;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");
		String java = request.getParameter("java");
		String web = request.getParameter("web");
		String iot = request.getParameter("iot");
		String android = request.getParameter("android");
		
		int sum = Integer.parseInt(java) + Integer.parseInt(web) + Integer.parseInt(iot) + Integer.parseInt(android);
		int avg = sum / 4;
		String score = (avg >= 95) ? "A+":(avg >= 85) ? "A" : (avg >= 80) ? "B+" : (avg >= 70) ? "C" : "F";
	%>

	<fieldset>
		<legend>성적확인프로그램</legend>
		<table width="500">
			<tr>
				<td>이름</td>
				<td><%=name%></td>
			</tr>
			<tr>
				<td>JAVA점수</td>
				<td><%=java%></td>
			</tr>
			<tr>
				<td>WEB점수</td>
				<td><%=web%></td>
			</tr>
			<tr>
				<td>IOT점수</td>
				<td><%=iot%></td>
			</tr>
			<tr>
				<td>ANDROID점수</td>
				<td><%=android%></td>
			</tr>
			<tr>
				<td>학점</td>
				<td><%=avg%></td>
			</tr>
			<tr>
				<td>평균</td>
				<td><h2><%=score%></h2></td>
			</tr>
		</table>
	</fieldset>
</body>
</html>