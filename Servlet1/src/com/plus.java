package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/plus")
public class plus extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		int a = Integer.parseInt(request.getParameter("plus1"));
		int b = Integer.parseInt(request.getParameter("plus2"));

		response.getWriter().print("<h1>"+ (a+b) + "</h1>");
	}
}
