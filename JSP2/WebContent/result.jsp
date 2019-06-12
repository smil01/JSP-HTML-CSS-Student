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
	String bang = request.getParameter("bang");
	int c_bang = Integer.parseInt(bang);
%>

<table border="1">
	<tr>
	<%for(int i = 1; i<=c_bang; i++){
		out.print("<td>"+ i +"</td>");
	}%>
	</tr>
</table>
</body>
</html>