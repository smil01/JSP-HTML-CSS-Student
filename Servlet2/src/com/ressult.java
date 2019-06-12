package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ressult")
public class ressult extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		
		System.out.println("doGet 실행");
		System.out.println(name + "을 검색하였습니다.");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("doPost 실행");
		if("odd01".equals(id) && "1234".equals(pw)) {
			System.out.println("로그인에 성공 하였습니다.");
		} else {
			System.out.println("로그인에 실패 하였습니다.");
		}
	}
}
