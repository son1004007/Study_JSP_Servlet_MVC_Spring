package bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Y0401_1040_servlet_session_job
 */
@WebServlet("/Y0401_1040_servlet_session_job")
public class Y0401_1040_servlet_session_job extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Y0401_1040_servlet_session_job() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		 response.setContentType("text/html; charset=UTF-8");
		String job=request.getParameter("job");
		String mail=request.getParameter("mail");
		
		HttpSession session = request.getSession();
		session.setAttribute("job", job);
		session.setAttribute("mail", mail);
		
		response.sendRedirect("Y0401_1040_servlet_session_job.jsp");
//		PrintWriter out=response.getWriter();
//		out.print(job);
//		out.print(mail);
//		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		  out.print("post");
		  out.close();
	}

}
