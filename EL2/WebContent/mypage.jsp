<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<style type="text/css">
	h1{
		font-size: 100px;
	}
</style>
</head>
<body>
	ID : ${param.id}<br>
	NAME : ${param.name}<br>
	GENDER : ${param.gender}<br>
	HOBBY : ${paramValues.hobby[0]}${paramValues.hobby[1]}${paramValues.hobby[2]}<br>
	STORY : <h1>${param.story}</h1><br>
	<%
		request.setAttribute("pw", 5555);
		session.setAttribute("pw", 1234);
	%>
	비밀번호 : ${sessionScope.pw}
</body>
</html>