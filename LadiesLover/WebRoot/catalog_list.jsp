<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="UTF-8">

  <link rel="shortcut icon" href="images/favicon.html">
  <meta name="description" content="">
  <meta name="keywords" content="">

  <title>Ladies' Love - 我的账户</title>

  <link rel="shortcut icon" href="favicon.ico">
  <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
  <link href="css/grid.css" media="screen" rel="stylesheet" type="text/css">
 
  <script src="js/jquery-1.7.2.min.js" ></script>
  <script src="js/html5.js" ></script>
  <script src="js/jflow.plus.js" ></script>
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
  
  
  <div class="clear"></div>
  
  <section id="main">
    <div class="container_12">
       <div id="sidebar" class="grid_3">
	      <aside id="categories_nav">
		     <h3>我的账户</h3>
		     
		     <nav class="left_menu">
			    <ul>
				   <li><a href="#">已购买商品 <span>(21)</span></a></li>
				   <li><a href="#">我的心愿单 <span> (27)</span></a></li>
			    </ul>
		     </nav><!-- .left_menu -->
	      </aside><!-- #categories_nav -->
	      
       </div><!-- .sidebar -->
      
       <div id="content" class="grid_9">
	      <h1 class="page_title">已购买商品</h1>
	      
	     
	      
	      <div class="listing_product">
			<div class="product_li">
				<div class="grid_3">
					<img class="sale" src="images/new.png" alt="New"/>
					<div class="prev">
						<a href="product_page.jsp"><img src="images/product_1.png" alt="" title="" /></a>
					</div><!-- .prev -->
				</div><!-- .grid_3 -->
				
				<div class="grid_4">
					<div class="entry_content">
						<a href="product_page.jsp"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
						<div class="review">
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<span>1 REVIEW(S)</span>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
						<a class="more" href="product_page.jsp">Learn More</a>
					</div><!-- .entry_content -->
				</div><!-- .grid_4 -->
				
				<div class="grid_2">
					<div class="cart">
						<div class="price">
							<div class="price_new">$550.00</div>
							<div class="price_old">$725.00</div>
						</div>
						<a href="#" class="bay">Add to Cart</a>
						<a href="#" class="obn"></a>
						<a href="#" class="like"></a>
					</div><!-- .cart -->
				</div><!-- .grid_2 -->
				
				<div class="clear"></div>
			</div><!-- .article -->
			
			<div class="product_li">
				<div class="grid_3">
					<img class="sale" src="images/sale.png" alt="Sale"/>
					<div class="prev">
						<a href="product_page.jsp"><img src="images/product_2.png" alt="" title="" /></a>
					</div><!-- .prev -->
				</div><!-- .grid_3 -->
				
				<div class="grid_4">
					<div class="entry_content">
						<a href="product_page.jsp"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
						<div class="review">
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<span>1 REVIEW(S)</span>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
						<a class="more" href="product_page.jsp">Learn More</a>
					</div><!-- .entry_content -->
				</div><!-- .grid_4 -->
				
				<div class="grid_2">
					<div class="cart">
						<div class="price">
							<div class="price_new">$550.00</div>
						</div>
						<a href="#" class="bay">Add to Cart</a>
						<a href="#" class="obn"></a>
						<a href="#" class="like"></a>
					</div><!-- .cart -->
				</div><!-- .grid_2 -->
				
				<div class="clear"></div>
			</div><!-- .article -->
			
			<div class="product_li">
				<div class="grid_3">
					<img class="sale" src="images/top.png" alt="Top"/>
					<div class="prev">
						<a href="product_page.jsp"><img src="images/product_3.png" alt="" title="" /></a>
					</div><!-- .prev -->
				</div><!-- .grid_3 -->
				
				<div class="grid_4">
					<div class="entry_content">
						<a href="product_page.jsp"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
						<div class="review">
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<span>1 REVIEW(S)</span>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
						<a class="more" href="product_page.jsp">Learn More</a>
					</div><!-- .entry_content -->
				</div><!-- .grid_4 -->
				
				<div class="grid_2">
					<div class="cart">
						<div class="price">
							<div class="price_new">$550.00</div>
							<div class="price_old">$725.00</div>
						</div>
						<a href="#" class="bay">Add to Cart</a>
						<a href="#" class="obn"></a>
						<a href="#" class="like"></a>
					</div><!-- .cart -->
				</div><!-- .grid_2 -->
				
				<div class="clear"></div>
			</div><!-- .article -->
			
			<div class="product_li">
				<div class="grid_3">
					<div class="prev">
						<a href="product_page.jsp"><img src="images/product_4.png" alt="" title="" /></a>
					</div><!-- .prev -->
				</div><!-- .grid_3 -->
				
				<div class="grid_4">
					<div class="entry_content">
						<a href="product_page.jsp"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
						<div class="review">
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<span>1 REVIEW(S)</span>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
						<a class="more" href="product_page.jsp">Learn More</a>
					</div><!-- .entry_content -->
				</div><!-- .grid_4 -->
				
				<div class="grid_2">
					<div class="cart">
						<div class="price">
							<div class="price_new">$550.00</div>
							<div class="price_old">$725.00</div>
						</div>
						<a href="#" class="bay">Add to Cart</a>
						<a href="#" class="obn"></a>
						<a href="#" class="like"></a>
					</div><!-- .cart -->
				</div><!-- .grid_2 -->
				
				<div class="clear"></div>
			</div><!-- .article -->
			
			<div class="product_li">
				<div class="grid_3">
					<img class="sale" src="images/new.png" alt="New"/>
					<div class="prev">
						<a href="product_page.jsp"><img src="images/product_5.png" alt="" title="" /></a>
					</div><!-- .prev -->
				</div><!-- .grid_3 -->
				
				<div class="grid_4">
					<div class="entry_content">
						<a href="product_page.jsp"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
						<div class="review">
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<span>1 REVIEW(S)</span>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
						<a class="more" href="product_page.jsp">Learn More</a>
					</div><!-- .entry_content -->
				</div><!-- .grid_4 -->
				
				<div class="grid_2">
					<div class="cart">
						<div class="price">
							<div class="price_new">$550.00</div>
							<div class="price_old">$725.00</div>
						</div>
						<a href="#" class="bay">Add to Cart</a>
						<a href="#" class="obn"></a>
						<a href="#" class="like"></a>
					</div><!-- .cart -->
				</div><!-- .grid_2 -->
				
				<div class="clear"></div>
			</div><!-- .article -->
			
			<div class="product_li">
				<div class="grid_3">
					<div class="prev">
						<a href="product_page.jsp"><img src="images/product_6.png" alt="" title="" /></a>
					</div><!-- .prev -->
				</div><!-- .grid_3 -->
				
				<div class="grid_4">
					<div class="entry_content">
						<a href="product_page.jsp"><h3 class="title">Beanpod Candles Orange Vanilla, Tea Light</h3></a>
						<div class="review">
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<span>1 REVIEW(S)</span>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra faucibus congue. Aenean luctus dolor et purus malesuada luctus. Quisque ullamcorper ante viverra lectus fermentum quis rutrum erat sollicitudin. Fusce tortor massa.</p>
						<a class="more" href="product_page.jsp">Learn More</a>
					</div><!-- .entry_content -->
				</div><!-- .grid_4 -->
				
				<div class="grid_2">
					<div class="cart">
						<div class="price">
							<div class="price_new">$550.00</div>
							<div class="price_old">$725.00</div>
						</div>
						<a href="#" class="bay">Add to Cart</a>
						<a href="#" class="obn"></a>
						<a href="#" class="like"></a>
					</div><!-- .cart -->
				</div><!-- .grid_2 -->
				
				<div class="clear"></div>
			</div><!-- .article -->
	    
	      <div class="clear"></div>
	      </div><!-- .listing_product -->
	      
	      <div class="clear"></div>
	      
	      <div class="pagination">
		     <ul>
			    <li class="prev"><span>&#8592;</span></li>
			    <li class="curent"><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li><span>...</span></li>
			    <li><a href="#">100</a></li>
			    <li class="next"><a href="#">&#8594;</a></li>
		     </ul>
	      </div><!-- .pagination -->
	      <p class="pagination_info">Displaying 1 to 12 (of 100 products)</p>
       </div><!-- #content -->
       
      <div class="clear"></div>
      
    </div><!-- .container_12 -->
  </section><!-- #main -->
  
  <div class="clear"></div>
    
 <jsp:include page="footer.jsp" flush="true"/>
</body>
</html>