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
	String num = (String)application.getAttribute("num");

	int change_num = 0;
	
	if(num != null){
		change_num = Integer.parseInt(num);
	}
	
	change_num++;
	
	application.setAttribute("num", change_num+"");
%>
<h1>현재 방문자 수 : <%=change_num%></h1>
</body>
</html>