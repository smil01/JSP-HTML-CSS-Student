
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Check")
public class Check extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if (id.equals("odd01") && pw.equals("1234")) {
			session.setAttribute("id", id);

			request.setAttribute("id", "111111");
			ServletContext context = request.getServletContext();
			RequestDispatcher dispatcher = context.getRequestDispatcher("/result.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("input.jsp");
		}
	}
}
