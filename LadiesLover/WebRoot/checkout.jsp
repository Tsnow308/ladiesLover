<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="UTF-8">

  <meta name="description" content="">
  <meta name="keywords" content="">

  <title>Proceed to checkout</title>

  <link rel="shortcut icon" href="favicon.ico">
  <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
  <link href="css/grid.css" media="screen" rel="stylesheet" type="text/css">
 
  <script src="js/jquery-1.7.2.min.js" ></script>
  <script src="js/html5.js" ></script>
  <script src="js/jflow.plus.js"></script>
  <script src="js/jquery.carouFredSel-5.2.2-packed.js"></script>
  <script src="js/checkbox.js"></script>
  <script src="js/radio.js"></script>
  <script src="js/selectBox.js"></script>

  <script>
	$(document).ready(function() {
		$("select").selectBox();
	});
  </script>

  <script>
	$(document).ready(function(){
	    $("#myController").jFlow({
			controller: ".control", // must be class, use . sign
			slideWrapper : "#jFlowSlider", // must be id, use # sign
			slides: "#slider",  // the div where all your sliding divs are nested in
			selectedWrapper: "jFlowSelected",  // just pure text, no sign
			width: "984px",  // this is the width for the content-slider
			height: "480px",  // this is the height for the content-slider
			duration: 400,  // time in miliseconds to transition one slide
			prev: ".slidprev", // must be class, use . sign
			next: ".slidnext", // must be class, use . sign
			auto: true	
		});
	});
  </script>
  <script>
	$(function() {
	  $('#list_product').carouFredSel({
		prev: '#prev_c1',
		next: '#next_c1',
		auto: false
	  });
          $('#list_product2').carouFredSel({
		prev: '#prev_c2',
		next: '#next_c2',
		auto: false
	  });
	  $('#list_banners').carouFredSel({
		prev: '#ban_prev',
		next: '#ban_next',
		scroll: 1,
		auto: false
	  });
	  $(window).resize();
	});
  </script>
  <script>
       $(document).ready(function(){
	      $("button").click(function(){
		     $(this).addClass('click')
	      });             
       })
  </script>
    
</head>
<body>
  <div class="container_12">
   <jsp:include page="header.jsp" flush="true"/>
  
  <section id="main" class="entire_width">
    <div class="container_12">      
       <div id="content">
		<div class="grid_12">
			<h1 class="page_title">Checkout</h1>
		</div><!-- .grid_12 -->
		
		<div class="grid_9" id="checkout_info">
			<ul class="checkout_list">
				<li class="active">
					<div class="list_header">Checkout Method<div class="number">1</div></div>
					<div class="list_body">
						<form class="checkout_or">
							<h3>Checkout as a Guest or Register</h3>
							<p>Register with us for future convenience:</p>
							<ul class="radio">
								<li><input class="niceRadio" type="radio" name="register"/> Checkout as Guest</li>
								<li><input class="niceRadio" type="radio" name="register"/> Register</li>
							</ul>
							<p><strong>Register and save time!</strong><br/>
							Register with us for future convenience:</p>
							<ul>
								<li>Fast and easy check out</li>
								<li>Easy access to your order history and status</li>
							</ul>
							<input type="submit" value="Continue" />
						</form>
						<form class="login">
							<h3>Login</h3>
							<p>If you have an account with us, please log in.</p>
							
							<div class="email">
								<strong>Email Adress:</strong><sup class="surely">*</sup><br/>
								<input type="email" name="" class="" value="" />
							</div><!-- .email -->
							
							<div class="password">
								<strong>Password:</strong><sup class="surely">*</sup><br/>
								<input type="text" name="" class="" value="" />
							</div><!-- .password -->
				
							<div class="remember">
								<a class="forgot" href="#">Forgot Your Password?</a>
								<input class="niceCheck" type="checkbox" name="Remember_password" />
								<span>Remember password</span>
							</div><!-- .remember -->
				
							<div class="submit">										
								<input type="submit" value="Login" />
								<sup class="surely">*</sup><span>Required Field</span>
							</div><!-- .submit -->
						</form>
						<div class="clear"></div>
					</div>
				</li>
				<li>
					<a href="#" class="list_header">Billing Information<div class="number">2</div></a>
				</li>
				<li>
					<div class="list_header">Shipping Information<div class="number">3</div></div>
				</li>
				<li>
					<div class="list_header">Shipping Method<div class="number">4</div></div>
				</li>
				<li>
					<div class="list_header">Payment Information<div class="number">5</div></div>
				</li>
				<li>
					<div class="list_header">Order Review<div class="number">6</div></div>
				</li>
			</ul>
                </div><!-- .grid_9 -->
		
		<div class="grid_3" id="sidebar_right">
			<aside id="checkout_progress">
				<h3>Your Checkout Progress</h3>
				<ul>
					<li>Billing Address<a title="Edit" href="#">Edit</a></li>
					<li>Shipping Address<a title="Edit" href="#">Edit</a></li>
					<li>Shipping Method<a title="Edit" href="#">Edit</a></li>
					<li>Payment Method<a title="Edit" href="#">Edit</a></li>
				</ul>
			</aside>
                </div><!-- #sidebar_right -->
       </div><!-- #content -->
       
      <div class="clear"></div>
    </div><!-- .container_12 -->
  </section><!-- #main -->
  
  <div class="clear"></div>
    
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>