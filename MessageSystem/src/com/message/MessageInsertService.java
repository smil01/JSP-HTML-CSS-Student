package com.message;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.CommandService;

public class MessageInsertService implements CommandService {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;

		String send_name = request.getParameter("send_name");
		String recevie_email = request.getParameter("recevie_email");
		String content = request.getParameter("content");

		MessageDAO dao = MessageDAO.getDao();
		MessageDTO dto = new MessageDTO(send_name, recevie_email, content);

		dao.send(dto);

		url = "main.jsp#two";
		return url;
	}

}
