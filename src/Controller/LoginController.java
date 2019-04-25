package Controller;
import Dao.*;
import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.UserBean;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginController() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();

		String name= request.getParameter("name");
		String password= request.getParameter("password");
		//out.print(name+" "+password);
		
		UserBean bean=new UserBean();
		bean.setName(name);
		bean.setPassword(password);
		
		Userdao userdao=new Userdao();
		
		boolean status=userdao.userLogin(bean);
		
		if(status)
		 {
			HttpSession sessions=request.getSession();  
			 sessions.setAttribute("name",name);
			
			request.getRequestDispatcher("index.jsp").include(request, response); 
			
		 }
		 else
		 {
			 response.sendRedirect("signup.jsp");  
		 }
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
