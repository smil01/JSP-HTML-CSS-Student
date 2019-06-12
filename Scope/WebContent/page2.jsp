<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>이곳은 page2.jsp</h2>
	<%
		request.setAttribute("request2", "ok");

		String m_page = (String) pageContext.getAttribute("page");
		String m_request = (String) request.getAttribute("request");
		String m_session = (String) session.getAttribute("session");
		String m_application = (String) application.getAttribute("application");
	%>
	<%=m_page%><br>
	<%=m_request%><br>
	<%=m_session%><br>
	<%=m_application%><br>
	<%=request.getAttribute("request2")%>

	<%
		RequestDispatcher dispatcher = request.getRequestDispatcher("page3.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>