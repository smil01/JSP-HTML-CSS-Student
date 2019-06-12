package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Gugudan")
public class Gugudan extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String gugu = request.getParameter("gugu");
		int c_gugu = Integer.parseInt(gugu);

		PrintWriter out = response.getWriter();

		out.print("<html>");
		out.print("<body>");
		out.print("<table border='1'>");

		for (int i = 1; i <= 9; i++) {
			out.print("<tr>");
			out.print("<td>");
			out.print(c_gugu + "*" + i + "=" + c_gugu * i);
			out.print("</td>");
			out.print("</tr>");
		}

		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
