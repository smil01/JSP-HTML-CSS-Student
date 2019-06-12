<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요!</h1>
	
	<!-- 선언식 -->
	<%!
		int num1 = 10;
		int num2 = 5;
		
		int sum;
	%>
						   <!-- 표현식 -->
	num1변수화 num2변수의 합은 : <%=num1+num2%>
	
	<%
		for(int i = 0; i<100; i++){
			sum+=i+1;
		}
	%>
	<br>
	1부터 100까지의 합은 : <%=sum%>
	<br>
	<table border="1">
		<tr>
		<%
			for(int i = 1; i <= 10; i++){
				%>
					<td><%=i%></td>
				<%
			}
		%>
		</tr>
	</table>
</body>
</html>