package Dao;

import Model.FactBean;
//import Model.UserBean;

import java.sql.Connection;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//import Model.FactBean;
import Connection.DBConnection;


public class FactDao {

	Connection con = null;
	 Statement statement = null;
	 
	  public String insertFact(FactBean bean)
	 {
		     String title = bean.getTitle(); 
			 String category = bean.getCategory(); 
			 String description = bean.getDescription();
			 String image= bean.getImage(); 
	 
	try
	 {
	 con = DBConnection.createConnection(); 
	 statement = con.createStatement(); 
	 
	int i=statement.executeUpdate("insert into fact (title,category,description,image) values ('"+title+"','"+category +"','"+description +"','"+image+"')");

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
	 return "Not insert Fact"; 
	 }
	  
	  
	
}
