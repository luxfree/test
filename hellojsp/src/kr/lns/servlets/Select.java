package kr.lns.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Select
 */
@WebServlet("/Select")
public class Select extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ENCODING="utf-8";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Select() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(ENCODING);
		response.setContentType("text/html;charset=utf-8");
		
		String job = request.getParameter("job");
		String[] interests = request.getParameterValues("interest");
		
		PrintWriter out = response.getWriter();
		
		out.println("직업 : " + job);
		out.println("<br />");
		out.println("관심분야 : ");
		
		for(int i=0; i<interests.length; i++) {
			out.println(interests[i]);
		}
		
//		for(String interest : interests) {
//			out.println(interest);
//		}
		
		System.out.println("post");
		out.close();
	}

}
