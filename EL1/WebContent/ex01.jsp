<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	request.setAttribute("name", "박병관");
		request.setAttribute("num", 1000);
		request.setAttribute("num1", 10);
		request.setAttribute("num2", 20);	%>
		
	<h1><%=request.getAttribute("name") %></h1>
	<h1>${name}</h1>
	
	<h1>${num + 100}</h1>
	<h1>${num > 100 ? true : false}</h1>
	
	<h1><%=request.getAttribute("age") %></h1>
	<h1>${age}</h1>
	<h1>${!empty age}</h1>
	
	<h1>${num1 > 5 && num2 > 10}</h1>
	<h1>${num1 > 5 || num2 < 10}</h1>
	
	
</body>
</html>