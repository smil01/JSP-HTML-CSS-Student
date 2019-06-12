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
		pageContext.setAttribute("page", "pageOK");
		request.setAttribute("request", "requestOK");
		session.setAttribute("session", "sessionOK");
		application.setAttribute("application", "applicationOk");

		String m_page = (String)pageContext.getAttribute("page");
		String m_request = (String)request.getAttribute("request");
		String m_session = (String)session.getAttribute("session");
		String m_application = (String)application.getAttribute("application");
	%>
	<%=m_page%><br>
	<%=m_request%><br>
	<%=m_session%><br>
	<%=m_application%><br>
	<% RequestDispatcher dispatcher =  request.getRequestDispatcher("page2.jsp"); 
		dispatcher.forward(request, response);%>
</body>
</html>