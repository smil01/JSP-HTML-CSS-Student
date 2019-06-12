package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Hoddy")
public class Hoddy extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String gender = request.getParameter("gender");
		String[] sports = request.getParameterValues("sports");
		
		System.out.println(gender);
		for(String s : sports) {
			System.out.println(s);
		}
	}

}
