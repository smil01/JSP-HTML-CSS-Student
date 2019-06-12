package com.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.CommandService;

public class LogoutService implements CommandService {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;

		HttpSession session = request.getSession();

		session.removeAttribute("info");

		url = "main.jsp";
		return url;
	}

}
