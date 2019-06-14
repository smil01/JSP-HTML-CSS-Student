package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input")
public class input extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDTO m1 = new MemberDTO("영윤이누나", "29"), m2 = new MemberDTO("은진씨", "27"), m3 = new MemberDTO("수빈이", "25"),
				m4 = new MemberDTO("나", "28"), m5 = new MemberDTO("승경이", "28"), m6 = new MemberDTO("정우형", "?");

		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		list.add(m5);
		list.add(m6);

		request.setAttribute("member", list);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/result.jsp");
		dispatcher.forward(request, response);
	}
}
