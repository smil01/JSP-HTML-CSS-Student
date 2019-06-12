package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.CycleRecoverable.Context;

@WebServlet("/ex10join")
public class ex10join extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String birthday = request.getParameter("birthday");
		String color = request.getParameter("color");
		String country = request.getParameter("country");
		String talk = request.getParameter("talk");

		response.setContentType("text/HTML;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("<br>ID : " + id);
		out.print("<br>NAME : " + name);
		out.print("<br>EMAIL : " + email);
		out.print("<br>TEL : " + tel);
		out.print("<br>GENDER : " + gender);
		out.print("<br>COUNTRY : " + country);
		out.print("<br>BIRTHDAY : " + birthday);
		out.print("<br>COLOR : " + color);
		out.print("<br>HOBBY :");
		for (String h : hobby) {
			out.print(h + " ");
		}
		out.print("<br>TALK : " + talk);
		out.print("</body></html>");		
	}

}
