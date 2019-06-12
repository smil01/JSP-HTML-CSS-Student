package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* 웹에서 서로 연결을 위해서 */
@WebServlet("/Make")
public class Make extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		int cnum = Integer.parseInt(num);
		
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		
		out.print("<table border = '1 solid black'>");
		out.print("<tr>");
		for(int i = 1; i<=cnum; i++) {
			out.print("<td>"+i+"</td>");
		}
		out.print("</tr>");
		out.print("</table>");

		out.print("</body>");
		out.print("</html>");
	}

}
