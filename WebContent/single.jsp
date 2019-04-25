<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="connection.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Hindu Gods Facts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="Hindu Gods Facts,Bhajan, Bhakti Songs, Bhakti, Chaalisa, Satsang, Gaana, Bhagwan, Shri, Sri, Sri Ganesh,Sri Ram, 
Bhagwan Vishnu, Sri Krishna, Bhagwan Shiv, Bhagwan Sri Hanuman, Durga Mata, Ramayan, Gita, Puran, ved, Stuti, Aarti, Temples, Mahadev, Kashi Vishwanath, 
Shankar, Rameshwar, Nageshwar, Vaidyanath, Kedarnath, Trayambkeshwar, Omkareshwar, Mahakaleshwar, Mallikarjun, Somnath, Bhimashankar, Bhole nath,
 Har Har Mahadev ">
<meta name="Description" content="Bhajans, Chalisa, Mantra and Wallpaper with content to read and learn about Bhagwan.">
 
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
<!--Custom-Theme-files-->
	<link href="css/style.css" rel='stylesheet' type='text/css' />	
	<script src="js/jquery.min.js"> </script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

</head>
<!-- BLOG POST HINDU GOD FACTS BODY SECTION START -->
<body>
	<!-- header-section-starts -->
      	<%@include file="header.jsp"%>
		<div class="col-md-12">
		<!--banner-section-->

<!-- BLOG POST HINDU GOD FACTS jsp SECTION START -->


		
<div class="banner-section">
		   <h3 class="tittle">More About The Fact<i class="glyphicon glyphicon-file"></i></h3>
	<% 
Connection connection = null;	
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String value=request.getParameter("id");
String sql ="select * from fact WHERE id='"+value+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	%>	   
		   
		   
		   
			<div class="single">
			   <img src="images/Hindus.jpg" class="img-responsive" alt="" style="height:600px"; />
			    <div class="b-bottom"> 
			      <h5 class="top"><a href="#"><%=resultSet.getString("title")  %></a></h5>
				   <p class="sub"><%=resultSet.getString("description")  %></p> 
				</div>
			 </div>	 
			 
		<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>				
			 
			 
			 
 <!-- BLOG POST HINDU GOD FACTS jsp SECTION END-->
			  <div class="single-bottom">
								<div class="single-middle">
								<ul class="social-share">
									<li><span>SHARE</span></li>
									<li><a href="#"><i> </i></a></li>						
									<li><a href="#"><i class="tin"> </i></a></li>
									<li><a href="#"><i class="message"> </i></a></li>				
								</ul>
								<a href="#"><i class="arrow"> </i></a>
								<div class="clearfix"> </div>
						   </div>

					    </div>
							
				<div class="coment-form">
					<h4>Leave your comment</h4>
					<form>
						<input type="text" value="Name " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
						<input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email (will not be published)*';}" required="">
						<input type="text" value="Website" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Website';}" required="">
						<textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Comment...';}" required="">Your Comment...</textarea>
						<input type="submit" value="Submit Comment" >
					</form>
				</div>	
				<!-- BLOG POST HINDU GOD FACTS NAV SECTION START -->
		<%@include file="facts-nav-right.jsp"%>	
		<!-- BLOG POST HINDU GOD FACTS NAV SECTION END -->
			</div>
		
		 </div>
			<div class="clearfix"> </div>
	<!--/footer-->
	<!-- BLOG POST HINDU GOD FACTS FOOTER SECTION START -->
	     	<%@include file="footer.jsp"%>
			<!-- BLOG POST HINDU GOD FACTS  FOOTER SECTION END -->
</body>
<!-- BLOG POST HINDU GOD FACTS BODY SECTION START -->
</html>