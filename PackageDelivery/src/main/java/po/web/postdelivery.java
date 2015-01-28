package po.web;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.PortableInterceptor.USER_EXCEPTION;

import po.pojo.delivery;
import po.pojo.signup;

/**
 * Servlet implementation class postdelivery
 */
@WebServlet("*.do")
public class postdelivery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.endsWith("login.do")) {
			response.sendRedirect("loginpage.jsp");
		} else if (uri.endsWith("signup.do")) {

			response.sendRedirect("signuppage.jsp");
		} else if (uri.endsWith("register.do")) {
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String mobile = request.getParameter("mobile");
			String home = request.getParameter("home");
			String office = request.getParameter("office");

			signup user = new signup();
			user.setFname(fname);
			user.setLname(lname);
			user.setEmail(email);
			user.setPassword(password);
			user.setMobile(mobile);
			user.setHomeadd(home);
			user.setOfficeadd(office);

			getServletContext().setAttribute("signup", user);
			response.sendRedirect("login.do");
			System.out.println("signup success");
		} else if (uri.endsWith("landing.do")) {
			signup userlogin = (signup) getServletContext().getAttribute(
					"signup");

			String email1 = request.getParameter("email");
			String password1 = request.getParameter("password");

			if (userlogin.getEmail().equals(email1)
					&& userlogin.getPassword().equals(password1)) {
				response.sendRedirect("landingpage.jsp");
				System.out.println("login success");
			} else {
				response.sendRedirect("login.do");
				System.out.println("login fail");
				System.out.println(email1);
				System.out.println(password1);
			}

		} else if (uri.endsWith("internaltional.do")) {
			HttpSession session = request.getSession();
			response.sendRedirect("delivery.jsp");
		} else if (uri.endsWith("domestic.do")) {
			response.sendRedirect("delivery.jsp");
			HttpSession session = request.getSession(false);
		} else if (uri.endsWith("thankyou.do")) {
			HttpSession session = request.getSession(false);
			String cname = request.getParameter("name");
			String mobile=request.getParameter("mobile");
			String weight = request.getParameter("weight");
			String wesel=request.getParameter("selweight");
			String date = request.getParameter("date");
			String time = request.getParameter("time");
			String sel = request.getParameter("sel");
			String dadd = request.getParameter("add");

			delivery del = new delivery();
			del.setCname(cname);
			del.setMobile(mobile);
			del.setWeight(weight);
			del.setWieghtselect(wesel);
			del.setDate(date);
			del.setTime(time);
			del.setTimeselect(sel);
			del.setAddress(dadd);

			getServletContext().setAttribute("delivery", del);
			response.sendRedirect("display.jsp");
		} else if (uri.endsWith("logout.do")) {
			HttpSession session = request.getSession(false);
			session.invalidate();
			response.sendRedirect("login.do");
		}else if (uri.endsWith("display.jsp")){
			HttpSession session = request.getSession(false);
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
