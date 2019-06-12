package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Gugudan2")
public class Gugudan2 extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String color = request.getParameter("color");
		
		String gugu_stat = request.getParameter("gugu_stat");
		String gugu_end = request.getParameter("gugu_end");
		
		int c_gugu_stat = Integer.parseInt(gugu_stat);
		int c_gugu_end = Integer.parseInt(gugu_end);


		PrintWriter out = response.getWriter();

		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset='UTF-8'>");
		out.print("<style type=\"text/css\">\r\n" + 
				"table {\r\n" + 
				"background-color: "+ color +";\r\n" + 
				"}\r\n" + 
				"</style>");
		out.print("</head>");
		
		out.print("<body>");
		out.print("<table border='1'>");
		for (int i = c_gugu_stat; i <= c_gugu_end; i++) {
			out.print("<tr>");
			for(int j = 1; j<=9; j++) {
				out.print("<td>");
				out.print(i + "*" + j + "=" + i * j);
				out.print("</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		
		out.print("</html>");
	}

}
