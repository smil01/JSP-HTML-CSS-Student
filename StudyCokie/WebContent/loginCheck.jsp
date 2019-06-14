<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if(id.equals("odd01") && pw.equals("1234")){
			Cookie cookie = new Cookie("id", "odd01");
			response.addCookie(cookie);

			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("input.html");
		}
	%>
</body>
</html>