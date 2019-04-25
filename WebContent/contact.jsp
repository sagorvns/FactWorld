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
<body>
      	<%@include file="header.jsp"%>
      	<div class="col-md-12 main">
	 <div class="contact">
	   <h3 class="tittle">Find Us <i class="glyphicon glyphicon-map-marker"></i></h3>
		<div class="contact-left">
			<iframe src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Purwokerto,+Central+Java,+Indonesia&amp;aq=0&amp;oq=purwo&amp;sll=37.0625,-95.677068&amp;sspn=50.291089,104.238281&amp;ie=UTF8&amp;hq=&amp;hnear=Purwokerto,+Banyumas,+Central+Java,+Indonesia&amp;ll=-7.431391,109.24783&amp;spn=0.031022,0.050898&amp;t=m&amp;z=14&amp;output=embed"></iframe>

		</div>
		<div class="contact-right">
			<p class="phn">+9100 2481 5842</p>
			<p class="phn-bottom">4578 Marmora
					<span>Road, Glasgow D04 89GR</span></p>
			<p class="lom">Nullam ac urna velit. Pellentesque in arcu tortor. 
				Pellentesque nec est et elit varius pulvinar eget vitae sapien. 
				Aenean vehicula accumsan gravida.</p>
		</div>
		<div class="clearfix"> </div>
		<div class="contact-left1">
			<h3>Contact Us With <span>Any questions</span></h3>
			<div class="in-left">
				<form>
					<p class="your-para">Your Name :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Your Mail :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Phone Number:</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">

				</form>
			</div>
			<div class="in-right">
				<form>
					<textarea cols="77" rows="6" onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"></textarea>
					<input type="submit" value="Submit">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="contact-right1">
			<h3><span>Social Websites</span></h3>
			<h4>Nullam ac urna velit pellentesque in <label>arcu tortor 
				Pellentesque nec</label></h4>
			<p>Nullam ac urna velit. Pellentesque in arcu tortor. 
				Pellentesque nec est et elit varius pulvinar eget vitae sapien. 
				Aenean vehicula accumsan gravida. Cum sociis natoque penatibus
				et magnis dis parturient montes, nascetur ridiculus mus. Phasellus 
				et lectus in urna consequat consectetur ut eget risus.</p>
			     <ul class=" side-icons con">
							<li><a class="fb" href="#"></a></li>
							<li><a class="twitt" href="#"></a></li>
							<li><a class="goog" href="#"></a></li>
							<li><a class="drib" href="#"></a></li>
					   </ul>
		</div>
		<div class="clearfix"> </div>
<!-- //contact -->
			</div>
      	</div>
      	
			<div class="clearfix"> </div>
	     	<%@include file="footer.jsp"%>
</body>
</html>