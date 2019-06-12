<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">구구단</h1>
	<table border="1" cellspacing="0" align="center" width="800px" height="500px">
		<%for(int i = 1; i<=9; i++){%>
		<tr>
			<%for(int j = 1; j <= 9; j++){
				if(i*j % 2 == 0) {%>
				<td bgcolor="gray"><%=i%> * <%=j%> = <%=i*j%></td>
				<%}else{%>
				<td><%=i%> * <%=j%> = <%=i*j%></td>
			<%}}%>
		</tr>
		<%}%>
	</table>
</body>
</html>