package com.message;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.CommandService;
import com.member.MemberDAO;
import com.member.MemberDTO;

public class UpdateService implements CommandService {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		String email = info.getEmail();
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");

		MemberDAO dao = MemberDAO.getDao();
		MemberDTO dto = new MemberDTO(email, pw, tel, addr);

		int cnt = dao.update(dto);
		if (cnt > 0) {
			info.setTel(tel);
			info.setAddr(addr);

			session.setAttribute("info", info);

			url = "main.jsp";
		} else {
			url = "update.jsp";
		}
		return url;
	}

}
