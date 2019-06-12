package com.message;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.CommandService;
import com.member.MemberDTO;

public class MessageDeleteAllService implements CommandService {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		MessageDAO dao = MessageDAO.getDao();
		dao.deleteAll(info.getEmail());

		url = "main.jsp#two";
		return url;
	}

}
