package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Result")
public class Result extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("EUC-KR");

		PrintWriter out = response.getWriter();
		
		String result = request.getParameter("text");

		out.print("<html>");
		out.print("<body>");
		out.print("<h1>"+result+"</h1>");
		out.print("</body>");
		out.print("</html>");
	}
}
