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
<title>The Club Soccer flat Responsive Sports Category Bootstrap Website Template | Contact :: w3layouts</title>
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
<!---- start-smoth-scrolling---->
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
						<li><a href="/front/gallery">Gallery</a></li>						
						<li><a href="/front/contact" class="active">Contact</a></li>
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
	<!--start-contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h3>CONTACTS</h3>
				<div class="contact-bottom">
					<div class="col-md-6 contact-bottom-left">
						<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d31085.222516274745!2d77.60788050000001!3d13.121167000000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1small+near+Road%2C+Yelahanka+Airforce+Base%2C+Bengaluru%2C+Karnataka!5e0!3m2!1sen!2sin!4v1420458959901" frameborder="0" style="border:0"></iframe>
					</div>
					<div class="col-md-6 contact-bottom-right">
						<div class="contact-txt">
							<input type="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}"/>
							<input type="text" value="Second Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Second Name';}"/>
							<input type="text" value="Email Id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Id';}"/>
						</div>
						<div class="contact-textarea">
							<textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
						</div>
						<div class="contact-but">
							<input type="submit" value="SUBMIT" >
							<input type="submit" value="CLEAR" >
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--end-contact-->
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