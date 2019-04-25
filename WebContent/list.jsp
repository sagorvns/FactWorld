<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connection.jsp"%>
<!DOCTYPE HTML>
<html>
    <head>
<title>Hindu Gods Facts</title>
<meta charset="UTF-8">
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
<body>
 <%@include file="header.jsp"%>

<div class="col-md-12">
<br>
<h3 class="tittle">More About Facts <i class="glyphicon glyphicon-picture"></i></h3>

<% 
Connection connection = null;	
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String value=request.getParameter("name");
String sql ="select * from fact WHERE category='"+value+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	%>
	
	<section class="col-md-12">
 					<div class="col-md-4 top-text">
					<div style="padding:15px;margin:5px;box-shadow:0px 0px 4px #ccc;">
					 <a href=""><img src="images/<%=resultSet.getString("image") %>" style="height:310px;" alt="Hindu god Facts"></a>
					<h5 class="top"><a href="single.jsp?id=<%=resultSet.getString("id")  %>"><%=resultSet.getString("title") %></a></h5>
							<p>Category: <%=resultSet.getString("category") %></p>
				    <p>On 12/05/2018<a class="span_link" href="single.jsp"><span class="glyphicon glyphicon-comment"></span>0 </a>
					<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="">
					<span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					
					</div>
					 </div>
				 
</section>						
					
<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>				




 	<!-- 
			$con=mysqli_connect("localhost","root","","about-fact");
	
			if(isset($_GET['search_query']))
			{
				$search_query=$_GET['search_query'];
				//echo $search_query;
				
				$query="SELECT * FROM facts WHERE title LIKE '%$search_query%' LIMIT 0,9";
				$run=mysqli_query($con,$query);
				
						while($row=mysqli_fetch_array($run))
						{
						echo' 
					<div class="col-md-4 top-text">
					<div style="padding:15px;margin:5px;box-shadow:0px 0px 4px #ccc;">
					 <a href="single.php?id='.$row['url'].'"><img src="images/'.$row['doc_image'].'" style="height:310px;" alt="Hindu god Facts"></a>
			  <h5 class="top"><a href="single.php?id='.$row['url'].'">'.$row['title'].'</a></h5>
							 <p>'.$row['short'].'</p>
				    <p>On '.$row['date'].'<a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a>
					<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.phpl">
					<span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					
					</div>
					 </div>
				';
 
						}
			}
		  		
elseif(isset($_GET['indian']))
{
				$indian=$_GET['indian'];
				
				$query="SELECT * FROM facts WHERE topic='indian' LIMIT 0,9";
				$run=mysqli_query($con,$query);
				
						while($row=mysqli_fetch_array($run))
						{
						echo' 
					<div class="col-md-4 top-text">
					<div style="padding:15px;margin:5px;box-shadow:0px 0px 4px #ccc;">
					 <a href="single.php?id='.$row['url'].'"><img src="images/'.$row['doc_image'].'" style="height:310px;" alt="Hindu god Facts"></a>
			  <h5 class="top"><a href="single.php?id='.$row['url'].'">'.$row['title'].'</a></h5>
							 <p>'.$row['short'].'</p>
				    <p>On '.$row['date'].' <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span> </a>
					<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.phpl">
					<span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					
					</div>
					 </div>
				';

						}
}	

			
elseif(isset($_GET['god']))
{
				$god=$_GET['god'];
				echo $god;
				
				$query="SELECT * FROM facts WHERE topic='god' LIMIT 0,9";
				$run=mysqli_query($con,$query);
				
						while($row=mysqli_fetch_array($run))
						{
						echo' 
					<div class="col-md-4 top-text">
					<div style="padding:15px;margin:5px;box-shadow:0px 0px 4px #ccc;">
					 <a href="single.php?id='.$row['url'].'"><img src="images/'.$row['doc_image'].'" style="height:310px;" alt="Hindu god Facts"></a>
			  <h5 class="top"><a href="single.php?id='.$row['url'].'">'.$row['title'].'</a></h5>
							 <p>'.$row['short'].'</p>
				    <p>On '.$row['date'].' <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a>
					<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.phpl">
					<span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					
					</div>
					 </div>
				';
	 
						}
}	

elseif(isset($_GET['random']))
{
				$random=$_GET['random'];
				
				$query="SELECT * FROM facts LIMIT 0,9";
				$run=mysqli_query($con,$query);
				
						while($row=mysqli_fetch_array($run))
						{
						echo' 
					<div class="col-md-4 top-text">
					<div style="padding:15px;margin:5px;box-shadow:0px 0px 4px #ccc;">
					 <a href="single.php?id='.$row['url'].'"><img src="images/'.$row['doc_image'].'" style="height:310px;" alt="Hindu god Facts"></a>
			  <h5 class="top"><a href="single.php?id='.$row['url'].'">'.$row['title'].'</a></h5>
							 <p>'.$row['short'].'</p>
				    <p>On '.$row['date'].' <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a>
					<a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.phpl">
					<span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					
					</div>
					 </div>
				';
	 
						}
}	

		
?>							
 -->
	
</div>							
	<div class="clearfix"> </div>
	<%@include file="footer.jsp"%>
</body>
</html>