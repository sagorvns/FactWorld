package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import org.apache.commons.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Dao.FactDao;
//import Dao.Userdao;
import Model.FactBean;
//import Model.UserBean;

@WebServlet("/FactController")
public class FactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FactController() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		 FactBean bean=new FactBean();
		//String title= request.getParameter("title");
		//String category= request.getParameter("category");
		//String description= request.getParameter("description");
		//out.println(title+" "+" "+category+" "+description);
		File file ;
		int maxFileSize = 5000 * 1024;
		int maxMemSize = 5000 * 1024;
		String filePath = "C:\\Users\\Dell\\eclipse-workspace\\FactWorld\\WebContent\\images\\";

		String contentType = request.getContentType();

		if ((contentType.indexOf("multipart/form-data") >= 0))
		{
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(maxMemSize);
		factory.setRepository(new File("e:\\data"));
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setSizeMax( maxFileSize );

			try
			{ 
				
				//out.print(request.getAttributeNames().toString());  
			//List<FileItem> fileItems = upload.parseRequest(request);
				List fileItems = upload.parseRequest(request); 
				Iterator i = fileItems.iterator();
					while ( i.hasNext () ) 
					{
					FileItem fi = (FileItem)i.next();
						if ( !fi.isFormField () ) 
						{
						String fieldName = fi.getFieldName();
						String fileName = fi.getName();
						boolean isInMemory = fi.isInMemory();
						long sizeInBytes = fi.getSize();
						file = new File( filePath + fileName) ;
						fi.write( file ) ;
						out.println("Uploaded Filename: "+ fileName +"<br>");
						bean.setImage(fileName);
						}
						else{	
							
							
							if(fi.getFieldName().equals("title")) { 
			                     	 String title = fi.getString();
									    					    
									    out.print(title+"\n");

											bean.setTitle(title);
										
							}
							
							if(fi.getFieldName().equals("category")) { 
		                     	 String category = fi.getString();
								    					    
								    out.print(category+"\n");
								    bean.setCategory(category);
		                }
							    if(fi.getFieldName().equals("description")) { 
			                    	 String description = fi.getString();
									    					    
									    out.print(description+"\n");
									    bean.setDescription(description);
			                }
							    
						}
						
					}
			}catch(Exception ex){System.out.println(ex);}

		}else{
		out.println("Error in file upload.");
		}
		
		FactDao factdao=new FactDao();
		String factInsert=factdao.insertFact(bean);
		if(factInsert.equals("SUCCESS"))
		 {
			response.sendRedirect("index.jsp");  
		 }
		 else
		 {
			 response.sendRedirect("registration.jsp");  
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
