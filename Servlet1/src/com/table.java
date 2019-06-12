package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/table")
public class table extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("EUC-KR"); //리스폰 인코딩 셋
		
		String num = request.getParameter("num"); // table.html(요청자)의 인풋중 이름이 num인 친구의 값을 받기
		int cnum = Integer.parseInt(num); // 파라미터값을 받을때는 무조건 문자로 반환하기 때문에 숫자로 변경
		
		PrintWriter out = response.getWriter(); // 서블릿에서 화면에 값을 뿌리기 위해서 PrintWriter를 생성
		
		out.print("<html>"); // html 구성
		out.print("<body>");
		out.print("<table border=\"1\">");
		out.print("<tr>");
		for(int i = 1; i<=cnum; i++) {
			out.print("<td>"); // 받은 수 만큼 td를 만들고 값을 출력
			out.print(i);
			out.print("</td>");
		}
		out.print("</tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
