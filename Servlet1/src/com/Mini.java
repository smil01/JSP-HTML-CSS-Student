package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Mini")
public class Mini extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("EUC-KR");
		
		response.getWriter().print("<html>");
		response.getWriter().print("<body>");
		String mini = request.getParameter("select");
			response.getWriter().print("<img src=\"http://img77.dreamwiz.net/20180904/7/C/k/7CkqTcB_o.jpg\" width=\"100%\" height=\"900px\">");
		if(mini==null || mini.equals(" ") || mini.equals("one")) {
		} else if(mini.equals("two")) {
			response.getWriter().print("<img src=\"https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F113A20454E8DEB9109\" width=\"100%\" height=\"900px\">");			
		}
		response.getWriter().print("</body>");
		response.getWriter().print("</html>");
	}

}
