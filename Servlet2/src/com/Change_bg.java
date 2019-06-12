package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Change_bg")
public class Change_bg extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String color = request.getParameter("color");
		
		PrintWriter out = response.getWriter();
		
		
		out.print("<html>");
		out.print("<body bgcolor='"+ color +"'>");
		out.print("</body>");
		out.print("</html>");
	}

}
