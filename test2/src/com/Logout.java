package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO: request 스코프는 forward를 하지 않으면 값이 자동으로 삭제 되지만, 문제에 명시되어 있어서 확인적으로 삭제 하여 주었습니다.
		request.removeAttribute("id");
		
		response.sendRedirect("loginForm.html");
	}

}
