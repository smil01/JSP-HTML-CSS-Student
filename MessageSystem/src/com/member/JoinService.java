package com.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.CommandService;

public class JoinService implements CommandService {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");

		MemberDTO dto = new MemberDTO(email, pw, tel, addr);
		MemberDAO dao = MemberDAO.getDao();

		dao.join(dto);

		url = "main.jsp";

		return url;
	}
}
