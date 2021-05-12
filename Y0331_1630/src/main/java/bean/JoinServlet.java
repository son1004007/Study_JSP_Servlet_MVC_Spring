package bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Y0401_1010_servlet_job
 */
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
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
		 
		 String name=request.getParameter("name");
		 String num1 = request.getParameter("sosicalNumber1");
		 String num2 = request.getParameter("sosicalNumber2");
		 String id=request.getParameter("id");
		 String pass1 = request.getParameter("pw");
		 String email=request.getParameter("email");
		 String emailDomain[]=request.getParameterValues("emailDomain");
		 String mail=request.getParameter("mail");
		 String address1=request.getParameter("address1");
		 String address2=request.getParameter("address2");
		 String tel=request.getParameter("tel");
		 String job[]=request.getParameterValues("job");
		 String info[]=request.getParameterValues("info");

		 PrintWriter out=response.getWriter();
		 out.print("<html><head><style>td{border: 1px solid black; padding: 3px;}</style></head><body><table>");
		 out.print("<tr><td>이름</td><td>" + name + "</td></tr>");
		 out.print("<tr><td>주민등록번호</td><td>" + num1 + "-" + num2 + "</td></tr>");
		 out.print("<tr><td>아이디</td><td>" + id + "</td></tr>");
		 out.print("<tr><td>비밀번호</td><td>" + pass1 + "</td></tr>");
		 out.print("<tr><td>이메일</td><td>" + email + "@" + emailDomain + "</td></tr>");
		 out.print("<tr><td>우편번호</td><td>" + mail + "</td></tr>");
		 out.print("<tr><td>주소</td><td>" + address1 + " " + address2 + "</td></tr>");
		 out.print("<tr><td>핸드폰번호</td><td>" + tel + "</td></tr>");
		 out.print("<tr><td>직업</td><td>" + job + "</td></tr>");
		 out.print("<tr><td>메일/SMS 수신 여부</td><td>" + info + "</td></tr>");
		 out.print("</table></body></html>");

		 out.close();
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
		  
		  String name=request.getParameter("name");
			 String num1 = request.getParameter("sosicalNumber1");
			 String num2 = request.getParameter("sosicalNumber2");
			 String id=request.getParameter("id");
			 String pass1 = request.getParameter("pw");
			 String email=request.getParameter("email");
			 String[] emailDomain=request.getParameterValues("emailDomain");
			 String mail=request.getParameter("mail");
			 String address1=request.getParameter("address1");
			 String address2=request.getParameter("address2");
			 String phone=request.getParameter("phone");
			 String job[]=request.getParameterValues("job");
			 String info[]=request.getParameterValues("info");

			 out.print("<html><head><style>td{border: 1px solid black; padding: 3px;}</style></head><body><table>");
			 out.print("<tr><td>이름</td><td>" + name + "</td></tr>");
			 out.print("<tr><td>주민등록번호</td><td>" + num1 + "-" + num2 + "</td></tr>");
			 out.print("<tr><td>아이디</td><td>" + id + "</td></tr>");
			 out.print("<tr><td>비밀번호</td><td>" + pass1 + "</td></tr>");
			 for(int i=0;i<emailDomain.length;i++) {
			 out.print("<tr><td>이메일</td><td>" + email + "@" + emailDomain[i] + "</td></tr>");
			 }
			 out.print("<tr><td>우편번호</td><td>" + mail + "</td></tr>");
			 out.print("<tr><td>주소</td><td>" + address1 + " " + address2 + "</td></tr>");
			 out.print("<tr><td>핸드폰번호</td><td>" + phone + "</td></tr>");
			 for(int i=0;i<job.length;i++) {
			 out.print("<tr><td>직업</td><td>" + job[i] + "</td></tr>");
			 }
			 for(int i=0;i<info.length;i++) {
			 out.print("<tr><td>메일/SMS 수신 여부</td><td>" + info[i] + "</td></tr>");
			 }
			 out.print("</table></body></html>");
		  out.close();
	}

}
