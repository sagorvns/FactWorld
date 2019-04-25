package Controller;
import Dao.*;
import java.io.IOException;
//import java.io.PrintWriter;
import Model.UserBean;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();

		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		UserBean bean=new UserBean();
		bean.setName(name);
		bean.setEmail(email);
		bean.setPassword(password);
		
		Userdao userdao=new Userdao();
		String userInsert=userdao.insertUser(bean);
		//out.print(userInsert);
		
		if(userInsert.equals("SUCCESS"))
		 {
			response.sendRedirect("login.jsp");  
		 }
		 else
		 {
			 response.sendRedirect("index.jsp");  
		 }
		
		
		
		//out.println(userName+" "+" "+userEmail+" "+userPassword);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
