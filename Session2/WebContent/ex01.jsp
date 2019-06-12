<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("a", "123");
		session.setAttribute("b", "456");
		session.setAttribute("c", "789");

		Enumeration<String> emu = session.getAttributeNames();
		while (emu.hasMoreElements()) {
			String id = emu.nextElement();
			String val = (String) session.getAttribute(id);

			System.out.println(id + ":" + val);
		}
	%>
</body>
</html>