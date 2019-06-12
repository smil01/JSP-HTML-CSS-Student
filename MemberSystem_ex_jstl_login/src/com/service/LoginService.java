package com.service;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDTO dto = new MemberDTO(id, pw);
		MemberDAO dao = MemberDAO.getDao();

		String name = dao.login(dto);

		if (name != null) {
			request.setAttribute("name", name);
			request.setAttribute("dto", dto);

			ServletContext context = getServletContext();
			RequestDispatcher dispatcher = context.getRequestDispatcher("/loginSuccess.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("error.jsp");
		}
	}
}
