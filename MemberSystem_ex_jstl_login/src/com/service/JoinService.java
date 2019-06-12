package com.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		MemberDTO dto = new MemberDTO(id, pw, name);
		MemberDAO dao = MemberDAO.getDao();
		
		int cnt = dao.join(dto);

		if (cnt > 0) {
			response.sendRedirect("main.jsp");
		} else {
			response.sendRedirect("join.jsp");
		}
	}
}
