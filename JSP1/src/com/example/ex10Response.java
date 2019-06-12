package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex10Response")
public class ex10Response extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if ("odd01".equals(id) && "1234".equals(pw)) {
			response.sendRedirect("ex10X.jsp");
		} else {
			response.sendRedirect("ex10F.jsp");
		}
	}

}
