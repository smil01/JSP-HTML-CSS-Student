package com;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PhoneList")
public class PhoneList extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<PhoneDTO> list = new ArrayList<PhoneDTO>();
		list.add(new PhoneDTO("오대근", "010-7552-0440", 28, "남자", "광주"));
		list.add(new PhoneDTO("김수빈", "010-7552-0440", 25, "남자", "광주"));
		list.add(new PhoneDTO("고영윤", "010-7552-0440", 29, "남자", "광주"));
		list.add(new PhoneDTO("손은진", "010-7552-0440", 27, "남자", "광주"));
		
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		response.sendRedirect("result.jsp");
	}
}
