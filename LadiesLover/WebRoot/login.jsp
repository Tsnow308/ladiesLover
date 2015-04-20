<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="UTF-8">

  <meta name="description" content="">
  <meta name="keywords" content="">

  <title>Ladies' Love - 注册登录</title>

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
			<h1 class="page_title">注册或登录已有账户</h1>
		</div>
		
    <div id="blank_div"></div>

    <div class="grid_register">
      <form class="registed">
        <h2>未注册用户</h2>
              
        <p>如果您尚未拥有一个账户，快速注册：</p>
              
        <div class="email">
          <strong>邮箱地址:</strong><sup class="surely">*</sup><br/>
          <input type="email" name="" class="" value="" />
        </div>
              
        <div class="password">
          <strong>密码:</strong><sup class="surely">*</sup><br/>
          <input id="password_reg" type="password" name="pwd" class="" value="" />
        </div>

        <div class="password">
          <strong>重复密码:</strong><sup class="surely">*</sup><br/>
          <input id="password_reg_repeat" type="password" name="pwd_repeat"/>
        </div>

        <div class="email">
          <strong>验证码:</strong><sup class="surely">*</sup><br/>
          <input type="text" name="" class="" value="" />
        </div>
        
        <!-- <div class="remember">
          <input class="niceCheck" type="checkbox" name="Remember_password" />
          <span class="rem">Remember password</span>
        </div>-->
        
        <div class="submit">                    
          <input type="submit" value="注册" />
          <sup class="surely">*</sup><span>不能为空</span>
        </div>
      </form>
  </div>

		<div class="grid_login">
			<form action="login.action" class="registed"  method="post" enctype="multipart/form-data">
				<h2>已注册用户</h2>
							
				<p>如果您已经拥有一个账户，请登录：</p>
							
				<div class="email">
					<strong>邮箱地址:</strong><sup class="surely">*</sup><br/>
					<input type="email" name="username" class="" value="" />
				</div><!-- .email -->
							
				<div class="password">
					<strong>密码:</strong><sup class="surely">*</sup><br/>
					<input type="password" name="password" class="" value="" />
					<a class="forgot" href="#">忘记密码?</a>
				</div><!-- .password -->
				
				<div class="remember">
					<input class="niceCheck" type="checkbox" name="Remember_password" />
					<span class="rem">记住我</span>
				</div><!-- .remember -->
				
				<div class="submit">										
					<input type="submit" value="登录" />
					<sup class="surely">*</sup><span>不能为空</span>
				</div><!-- .submit -->
			</form><!-- .registed -->
  </div><!-- .grid_6 -->
       </div><!-- #content -->
       
      <div class="clear"></div>
    </div><!-- .container_12 -->
  </section><!-- #main -->
  
  <div class="clear"></div>
    
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>