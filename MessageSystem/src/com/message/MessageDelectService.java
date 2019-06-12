package com.message;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.CommandService;

public class MessageDelectService implements CommandService {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;

		String num = request.getParameter("num");
		int c_num = Integer.parseInt(num);

		MessageDAO dao = MessageDAO.getDao();
		dao.delete(c_num);

		url = "main.jsp#two";
		return url;
	}

}
