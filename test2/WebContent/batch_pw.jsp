<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
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
	GregorianCalendar gr = new GregorianCalendar();
	int year = gr.get(Calendar.YEAR);
	int month = gr.get(Calendar.MONTH)+1;
	int day = gr.get(Calendar.DATE);
	
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	String joinDate = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url = "jdbc:oracle:thin:@192.168.0.20:1521:xe";
		String user = "hr";
		String password = "hr";

		conn = DriverManager.getConnection(url, user, password);
		
		String sql = "select JOINDATE from Join where ID = 'jason'";
		
		pst = conn.prepareStatement(sql);
		
		rs = pst.executeQuery();
		
		if(rs.next()){
			joinDate = rs.getString(1);
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null) {
				rs.close();
			}

			if (pst != null) {
				pst.close();
			}

			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	int joinYear = Integer.parseInt("20" + joinDate.substring(0, 2));
	int joinMonth = Integer.parseInt(joinDate.substring(2, 4));
	int joinDay = Integer.parseInt(joinDate.substring(4, 6));
	//int joinDay = 6; // 7일 경과 테스트용
	
	int today = (joinYear * 365) + (joinMonth * 30) + joinDay;
	int joinday = (year * 365) + (month * 30) + day;

 	if(joinday - today > 7){
		response.sendRedirect("Change_pw.jsp");
	}
%>
</body>
</html>