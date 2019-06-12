package com.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.CommandService;

public class LoginService implements CommandService {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");

		MemberDTO dto = new MemberDTO(email, pw);
		MemberDAO dao = MemberDAO.getDao();

		MemberDTO result = dao.login(dto);

		if (result != null) {
			HttpSession session = request.getSession();

			session.setAttribute("info", result);
		}

		url = "main.jsp";

		return url;
	}
}
