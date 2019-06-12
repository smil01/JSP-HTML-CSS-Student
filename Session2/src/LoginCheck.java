
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if (id.equals("odd01") && pw.equals("1234")) {
			HttpSession session = request.getSession();

			session.setAttribute("id", id);
			session.setMaxInactiveInterval(10);

			response.sendRedirect("result.jsp");
		} else {
			response.sendRedirect("input.jsp");
		}
	}
}
