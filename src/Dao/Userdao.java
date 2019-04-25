package Dao;

import java.sql.Connection;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;

//import com.mysql.jdbc.PreparedStatement;

import Model.UserBean;
 import Connection.DBConnection;
 
 public class Userdao {
	 
 Connection con = null;
 Statement statement = null;
 
  public String insertUser(UserBean bean)
 {
	     String userName = bean.getName(); 
		 String userEmail = bean.getEmail(); 
		 String userPassword = bean.getPassword();
 
try
 {
 con = DBConnection.createConnection(); 
 statement = con.createStatement(); 
 
int i=statement.executeUpdate("insert into signup (name,email,password) values ('"+userName +"','"+userEmail +"','"+userPassword +"')");

 if(i>0)
 {
 	return "SUCCESS";
 }else
 {
 	return "ERROR";	
 }

 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 return "Invalid user credentials"; 
 }
  
  public boolean userLogin(UserBean b)
  {
	  boolean status=false; 
	  String userName = b.getName(); 
		 String userPassword = b.getPassword();
		 
		 try{  
			 con = DBConnection.createConnection();               
			 
			 java.sql.PreparedStatement ps=con.prepareStatement("select * from signup where name=? and password=?");  
			   
			 ps.setString(1,userName);  
			 ps.setString(2,userPassword);  
			               
			 ResultSet rs=ps.executeQuery();  
			 status=rs.next();  
			               
			 }catch(Exception e){}  
			   
			 return status;  
  }
}

