package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DataSend")
public class DataSend extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("EUC-KR");

		String result = request.getParameter("number");

		int changeNumber = Integer.parseInt(result);

		response.getWriter().print("<h1> 입력한 숫자는 "+changeNumber+" 입니다.</h1>");
	}

}
