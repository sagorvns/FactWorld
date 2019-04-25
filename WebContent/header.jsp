<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>      
<!DOCTYPE HTML>
<html  lang="en">
	<head>
<meta charset="UTF-8">
<title>Hindu Gods Facts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="Hindu Gods Facts,Bhajan, Bhakti Songs, Bhakti, Chaalisa, Satsang, Gaana, Bhagwan, Shri, Sri, Sri Ganesh,Sri Ram, 
Bhagwan Vishnu, Sri Krishna, Bhagwan Shiv, Bhagwan Sri Hanuman, Durga Mata, Ramayan, Gita, Puran, ved, Stuti, Aarti, Temples, Mahadev, Kashi Vishwanath, 
Shankar, Rameshwar, Nageshwar, Vaidyanath, Kedarnath, Trayambkeshwar, Omkareshwar, Mahakaleshwar, Mallikarjun, Somnath, Bhimashankar, Bhole nath,
 Har Har Mahadev ">
<meta name="Description" content="Bhajans, Chalisa, Mantra and Wallpaper with content to read and learn about Bhagwan.">
 </head>
 
 <!-- BLOG POST HINDU GOD FACTS BODY SECTION START -->
<body>
	<!-- header-section-starts -->
      <div class="h-top" id="home">
		   <div class="top-header">
				  <ul class="cl-effect-16 top-nag">
				  <li><img src="images/india.jpg" alt="Logo" width="200" height="50"></li>
						<li><a href="index.jsp" data-hover="HOME">HOME</a></li> 
						<li><a href="list.jsp?name=god" data-hover="HINDU GODS">HINDU GODS</a></li>
						<li><a href="list.jsp?name=indian" data-hover="INDIA">INDIAN</a></li>
						
						
						
						<% 
response.setContentType("text/html");  
  
			HttpSession sessions=request.getSession(false);  

 String name=(String)sessions.getAttribute("name");  
 
        if(sessions!=null&&name!=null){  
          
        
%>        
       <li><a href="#" data-hover="SAGOR">HELLO <%= name %></a></li>
	   <li><a href="registration.jsp" data-hover="ADD FACT">ADD FACT</a></li>
	  <li><a href="logout.jsp" data-hover="LOGOUT">LOGOUT</a></li>
						
 <% 
        } 
        else
        {%>
       
						<li><a href="login.jsp" data-hover="LOGIN">LOGIN</a></li>
						<li><a href="contact.jsp" data-hover="ABOUT US">ABOUT US</a></li>
						
       
       <% }
%>
						
						
						
						
					</ul>
					
					<!-- log in -->
					<div>
					
					</div>
					
					<div class="search-box">
					    <div class="b-search">
								<form action="list.jsp" method="get">
										<input type="text" value="Search" name="search_query" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
										<input type="submit" value="">
								</form>
							</div>
						</div>

					<div class="clearfix"></div>
				</div>
				</div>
</body>				
<!-- BLOG POST HINDU GOD FACTS BODY SECTION START -->
      
</html>	   
