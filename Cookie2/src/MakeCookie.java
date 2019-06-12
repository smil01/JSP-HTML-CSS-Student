
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MakeCookie")
public class MakeCookie extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] arr = request.getParameterValues("goods");

		if (arr != null) {
			for (String good : arr) {
				Cookie cookie = new Cookie(good, good);
				response.addCookie(cookie);
			}
		}
		
		response.sendRedirect("main.jsp");
	}

}
