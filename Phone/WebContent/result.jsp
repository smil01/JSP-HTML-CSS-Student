<%@page import="com.PhoneDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>순번</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>나이</td>
			<td>성별</td>
			<td>주소</td>
		</tr>

		<%
			ArrayList<PhoneDTO> list = (ArrayList<PhoneDTO>) session.getAttribute("list");
			for (int i = 0; i < list.size(); i++) {
				out.print("<tr>");
				out.print("<td>" + i + 1 + "</td>");
				out.print("<td>" + list.get(i).getName() + "</td>");
				out.print("<td>" + list.get(i).getPhone() + "</td>");
				out.print("<td>" + list.get(i).getAge() + "</td>");
				out.print("<td>" + list.get(i).getGender() + "</td>");
				out.print("<td>" + list.get(i).getAddr() + "</td>");
				out.print("</tr>");
			}
		%>
	</table>
</body>
</html>