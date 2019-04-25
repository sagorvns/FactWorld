<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
	<link href="css/style.css" rel='stylesheet' type='text/css' />	
	<script src="js/jquery.min.js"> </script>
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
			<div class="sign-up-form">
				 <h3 class="tittle">About Fact <i class="glyphicon glyphicon-file"></i></h3>
					<p>
					Facts are central to building scientific theories. ... In the most basic sense, a scientific fact is an objective and verifiable observation, in contrast with a 
					hypothesis or theory, which is intended to explain or interpret facts. Various scholars have offered significant refinements to this basic formulation.
					</p>

			
		<form  method="post"  action="FactController" enctype="multipart/form-data">
		<div class="sign-up">
					 <h3 class="tittle reg">Article<i class="glyphicon glyphicon-user"></i></h3>
			<div class="sign-u">
			
						<div class="sign-up1">
							<h4 class="a">Title of the Fact :</h4>
						</div>
						<div class="sign-up2">
					<input type="text" class="form-control" name="title" placeholder="Title" maxlength="500" />			
						</div>
						<div class="clearfix"> </div>
			</div>
					
						<div class="sign-up1">
							<h4 class="a">Category of the fact :</h4>
						</div>
						<div class="sign-up2">
							
							<select name="category" class="form-control">
							<option value="0">Choose a Category </option>
							<option value="random">Random</option>
							<option value="indian">Indian</option>
							<option value="god">Indian God</option>
							</select>
						
						</div>
						<div class="clearfix"> </div>
					
					
						<div class="sign-up1">
							<h4 class="b">Upload an Image:</h4>
						</div>						
						<div class="sign-up2">
							 <input type="file" class="form-control" name="file"  maxlength="5000"></input>		
						</div>
			
						<div class="clearfix"> </div>
					
					
						<div class="sign-up1">
							<h4 class="b">Discription of the Fact:</h4>
						</div>						
						<div class="sign-up2">
							 <textarea class="form-control" name="description"  rows="7" cols="50"></textarea>	
						
						</div>
					<div class="clearfix"></div>
					
							<input type="submit" value="Submit"	>		
							<div class="clearfix"></div>
							<br/>	
				</div>			
					</form>
			</div>
				</div>
			<div class="clearfix"> </div>
	
	    	<%@include file="footer.jsp"%>	
</body>
</html>