<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@include file="connection.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="en">
    <head>
    <!--  
<meta charset="UTF-8">
-->
<title>Hindu Gods Facts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="Hindu Gods Facts,Bhajan, Bhakti Songs, Bhakti, Chaalisa, Satsang, Gaana, Bhagwan, Shri, Sri, Sri Ganesh,Sri Ram, 
Bhagwan Vishnu, Sri Krishna, Bhagwan Shiv, Bhagwan Sri Hanuman, Durga Mata, Ramayan, Gita, Puran, ved, Stuti, Aarti, Temples, Mahadev, Kashi Vishwanath, 
Shankar, Rameshwar, Nageshwar, Vaidyanath, Kedarnath, Trayambkeshwar, Omkareshwar, Mahakaleshwar, Mallikarjun, Somnath, Bhimashankar, Bhole nath,
 Har Har Mahadev ">
<meta name="Description" content="Bhajans, Chalisa, Mantra and Wallpaper with content to read and learn about Bhagwan.">
 
 <!-----------------Follow Link ------>
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
 <!-- BLOG POST BODY SECTION START -->
<body>
<!-- HEADER -->
<%@include file="header.jsp"%>
		 <!-- MAIN CONTAINER -->
		<div class="col-md-12">
		<!--banner-section-->
		<div class="banner-section">
		   <h3 class="tittle">General Facts <i class="glyphicon glyphicon-picture"></i></h3>
			<div class="banner">
                 <div  class="callbacks_container">
					<ul class="rslides" id="slider4">
					       <li>
							  <img src="images/1.jpg"  class="img-responsive" alt="" />

							</li>
							<li>
								 <img src="images/2.jpg" class="img-responsive" alt="" />


							</li>
							<li>
							 <img src="images/3.jpg" class="img-responsive" alt="" />

							
							
						</ul>
					</div>
				
			   <!-- .col-md-12 -->
					<!--banner-->
	  			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager:true,
			        nav:true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
		 <div class="clearfix"> </div>
			    <div class="b-bottom"> 
			      <h5 class="top"><a href="list.jsp?name=random">More Random Facts</a></h5>
			      </div>
		</div>
	<!--//banner-->
	
 <div class="clearfix"> </div>
 
 <section class="col-md-12">
 
 <!--Hindu Gods Facts php Start-->
 <% 
Connection connection = null;	
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String value="random";
String sql ="select * from fact WHERE category='"+value+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	%>
 
					<div class="col-md-6 top-text">
					<div style="padding:15px;margin:5px;box-shadow:0px 0px 4px #ccc;">
					 <a href=""><img src="images/Hindus.jpg" style="height:310px;" alt="Hindu god Facts"></a>
<h5 class="top"><a href="single.jsp?id=<%=resultSet.getString("id")  %>"><%=resultSet.getString("title") %></a></h5>
							 <p><%=resultSet.getString("category") %></p>
				    <p>On 12/05/2018<a class="span_link" href="single.jsp"><span class="glyphicon glyphicon-comment"></span>0 </a>
					<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="">
					<span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					
					</div>
					 </div>
					 
					 <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<!--Hindu Gods Facts php End-->
				 
</section>
<!--Hindu Gods Facts Nav Start-->
	<%@include file="facts-nav-right.jsp"%>	
<!--Hindu Gods Facts Nav End-->	
	</div>	
	</div>
				
	<div class="clearfix"> </div>
	<!--Hindu Gods Facts Footer Start-->		
	<%@include file="footer.jsp"%>
	<!--Hindu Gods Facts Footer End-->
</body>
 <!--BLOG POST BODY SECTION END -->
</html>