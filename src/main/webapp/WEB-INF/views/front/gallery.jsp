<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>   
<sec:authentication var="principal" property="principal"/> 
<!DOCTYPE html>
<html>
<head>
<title>The Club Soccer flat Responsive Sports Category Bootstrap Website Template | Gallery :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">	
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Bootstrap Responsive Templates, Iphone Compatible Templates, Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link href="../../../resources/front/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="../../../resources/front/css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic' rel='stylesheet' type='text/css'> 
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'> 
<script src="../../../resources/front/js/jquery-1.11.0.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="../../../resources/front/js/move-top.js"></script>
<script type="text/javascript" src="../../../resources/front/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
<!--end-smoth-scrolling-->
<!--start-gallery-->
<script type="text/javascript" src="../../../resources/front/js/jquery.fancybox.js"></script>
	<link rel="stylesheet" type="text/css" href="../../../resources/front/css/jquery.fancybox.css" media="screen" />
   <script type="text/javascript">
		$(document).ready(function() {
			/*
			 *  Simple image gallery. Uses default settings
			 */

			$('.fancybox').fancybox();

		});
	</script>
<!--end-gallery-->
</head>
<body>
	<div class="head" id="home">
		<div class="container">
			<div class="logo">
				<a href="/"><img src="../../resources/images/logo.png" alt=""></a>
				<sec:authorize access="isAuthenticated()">
				    <b>${principal.username}님, 반갑습니다!</b>	
					<a href="/front/logout"> Logout</a>
					
					</sec:authorize>
				
		<sec:authorize access="isAnonymous()">		
		<li><a href="/customLogin"><i class="fa fa-sign-out fa-fw"></i>
		    Login</a></li>
		</sec:authorize>
			</div>
			<div class="header">
				<div class="menu">
                    <a class="toggleMenu" href="#"><img src="../../resources/images/menu-icon.png" alt="" /> </a>
					<ul class="nav" id="nav">
						<li><a href="/">Home</a></li>
						<li><a href="/front/about">About</a></li>						
						<li><a href="/front/blogs">Free_Board</a></li>
						<li><a href="/front/gallery" class="active">Gallery</a></li>
						<li><a href="/front/contact">Contact</a></li>
					</ul>
                    <!----start-top-nav-script---->
		            <script type="text/javascript" src="../../../resources/front/js/responsive-nav.js"></script>
					<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
							
						});
					});
					</script>
		<!----//End-top-nav-script---->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--Work-Starts-Here-->
	 <!-- content-section-starts -->
	 <div class="gallery-content">
	 <div class="container">
		<div class="gallery-content-head text-left">
			<h3>Our Gallery</h3>
			<p>Eum cu tantas legere complectitur, hinc utamur ea eam. Eum patrioque mnesarchum eu, diam erant convenire et vis. Et essent evertitur sea, vis cu ubique referrentur, sed eu dicant expetendis.</p>
		</div>
			<div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a class="fancybox" href="../../resources/images/chelsea.jpg" data-fancybox-group="gallery" title="Chelsea F.C."><img src="../../resources/images/chelsea.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/tot.jpg" data-fancybox-group="gallery" title="Tottenham Hotspur F.C."><img src="../../resources/images/tot.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/mc.jpg" data-fancybox-group="gallery" title="Manchester City F.C."><img src="../../resources/images/mc.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>		
				
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/liverpool.jpg" data-fancybox-group="gallery" title="Liverpool F.C."><img src="../../resources/images/liverpool.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				
			</div> 	
			<div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a class="fancybox" href="../../resources/images/bar.jpg" data-fancybox-group="gallery" title="F.C. Barcelona"><img src="../../resources/images/bar.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/real.jpg" data-fancybox-group="gallery" title="Real Madrid C.F."><img src="../../resources/images/real.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/at.jpg" data-fancybox-group="gallery" title="Atlético Madrid"><img src="../../resources/images/at.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/sevilla.jpg" data-fancybox-group="gallery" title="Sevilla F.C."><img src="../../resources/images/sevilla.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
			</div>
			<div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a class="fancybox" href="../../resources/images/munchen.jpg" data-fancybox-group="gallery" title="F.C. Bayern München"><img src="../../resources/images/munchen.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/bvb.jpg" data-fancybox-group="gallery" title="Borussia Dortmund"><img src="../../resources/images/bvb.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/rb.jpg" data-fancybox-group="gallery" title="RB Leipzig"><img src="../../resources/images/rb.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/psg.jpg" data-fancybox-group="gallery" title="Paris Saint-Germain F.C."><img src="../../resources/images/psg.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
			</div> 				
			
			<div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a class="fancybox" href="../../resources/images/juven.jpg" data-fancybox-group="gallery" title="Juventus F.C."><img src="../../resources/images/juven.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/inter.jpg" data-fancybox-group="gallery" title="F.C. Internazionale Milano"><img src="../../resources/images/inter.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/asroma.jpg" data-fancybox-group="gallery" title="A.S. Roma"><img src="../../resources/images/asroma.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					  <a class="fancybox" href="../../resources/images/ajax.jpg" data-fancybox-group="gallery" title="A.F.C. Ajax"><img src="../../resources/images/ajax.jpg" class="img-style row6" alt=""><span> </span></a>
				</div>
			</div> 	
   </div>
</div>
	 <!-- content-section-ends -->
	<!--Work-Ends-Here-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<h3>SUBSCRIBE TO NEWSLETTER</h3>
				<div class="footer-bottom">
					<div class="col-md-4 footer-bottom-left">
						<img src="../../resources/images/msg.png" alt="">
					</div>
					<div class="col-md-8 footer-bottom-right">
						<small>Enter Your Email here</small>
						<div class="contact-text">
							<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"/>
							<input type="submit" value="SUBMIT" >
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="ftr">
						<p>DESIGN BY <a href="http://w3layouts.com/"> W3LAYOUTS</a></p>
					</div>
				</div>
			</div>
		</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-->
</body>
</html>