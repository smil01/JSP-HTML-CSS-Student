<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<fmt:requestEncoding value="UTF-8"/>
<title>Insert title here</title>
</head>
<body>
<%-- <%request.setAttribute("num", 12345); %> --%>
<c:set var="num" value="100" scope="page"/>
<c:set var="num" value="${pageScope.num + 100}" scope="request"/>
<c:set var="num" value="${requestScope.num + 100}" scope="session"/>
${pageScope.num}<br>
${requestScope.num}<br>
${sessionScope.num}<br>
<a href="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=${num}">네이버 ${num}검색</a><br>
</body>
</html>