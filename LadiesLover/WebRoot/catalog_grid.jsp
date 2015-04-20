<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="UTF-8">

  <meta name="description" content="">
  <meta name="keywords" content="">

  <title>Ladies' Love - 商品列表</title>

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
   
  <!-- <div class="container_12">
    <div class="grid_12">
       <div class="breadcrumbs">
	      <a href="index.jsp">Home</a><span>&#8250;</span><a href="#">Category</a><span>&#8250;</span><span class="current">This page</span>
       </div>
    </div>
  </div> -->
  
  <div class="clear"></div>
  
  <section id="main">
    <div class="container_12">
       <div id="sidebar" class="grid_3">

       	<aside id="categories_styles">
		     <h3>款式</h3>

		     <nav class="left_menu">
			    <ul>
				   <li><a href="#">运动 <span>(21)</span></a></li>
				   <li><a href="#">休闲 <span> (27)</span></a></li>
				   <li><a href="#">正式 <span>(33)</span></a></li>
				   <li><a href="#">其他 <span>(17)</span></a></li>
			    </ul>
		     </nav><!-- .left_menu -->
	      </aside><!-- #categories -->

	      <aside id="categories_brand">
		     <h3>品牌</h3>

		     <nav class="left_menu">
			    <ul>
				   <li><a href="#">牌子1 <span>(21)</span></a></li>
				   <li><a href="#">牌子2 <span> (27)</span></a></li>
				   <li><a href="#">牌子3 <span>(33)</span></a></li>
				   <li><a href="#">其他 <span>(17)</span></a></li>
			    </ul>
		     </nav><!-- .left_menu -->
	      </aside><!-- #categories -->

	      <aside id="categories_heel">
		     <h3>跟高</h3>

		     <nav class="left_menu">
			    <ul>
				   <li><a href="#">3cm <span>(21)</span></a></li>
				   <li><a href="#">5cm <span> (27)</span></a></li>
				   <li><a href="#">7cm <span>(33)</span></a></li>
				   <li><a href="#">其他 <span>(17)</span></a></li>
			    </ul>
		     </nav><!-- .left_menu -->
	      </aside><!-- #categories -->

	      <aside id="categories_price">
		     <h3>价格</h3>

		     <nav class="left_menu">
			    <ul>
				   <li><a href="#">&lt;100 <span>(21)</span></a></li>
				   <li><a href="#">100 - 200 <span> (27)</span></a></li>
				   <li><a href="#">200 - 300 <span>(33)</span></a></li>
				   <li><a href="#">其他 <span>(17)</span></a></li>
			    </ul>
		     </nav><!-- .left_menu -->
	      </aside><!-- #categories -->
	     
       </div><!-- .sidebar -->
      
       <div id="content" class="grid_9">
	      <h1 class="page_title">商品列表</h1>
	      
	      <!-- <div class="options">
		     <div class="grid-list">
			   <a class="grid curent" href="index.jsp"><span>img</span></a>
			   <a class="list" href="catalog_list.jsp"><span>img</span></a>
		     </div>
		     
		     <div class="show">
			    Show
			    <select>
				   <option>1</option>
				   <option>2</option>
				   <option>3</option>
				   <option>4</option>
				   <option>5</option>
				   <option>6</option>
				   <option>7</option>
				   <option>8</option>
				   <option>9</option>
				   <option>10</option>
				   <option>11</option>
				   <option>12</option>
			     </select>
			    
			    per page
		     </div>
		     
		     <div class="sort">
			   Sort By
			    <select>
				   <option>Position</option>
				   <option>Price</option>
				   <option>Rating</option>
				   <option>Name</option>
			     </select>
			    
			    <a class="sort_up" href="#">&#8593;</a>
		     </div>
	      </div> -->
	      
	      <div class="grid_product">
		     <div class="grid_3 product">
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_1.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/sale.png" alt="Sale"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_2.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/new.png" alt="New"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_3.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/top.png" alt="Top"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_4.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_5.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_6.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/sale.png" alt="Sale"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_7.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/top.png" alt="Top"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/produkt_slid1.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/new.png" alt="New"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_2.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_8.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/sale.png" alt="Sale"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_9.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
		     
		     <div class="grid_3 product">
			    <img class="sale" src="images/new.png" alt="New"/>
			    <div class="prev">
				   <a href="product_page.jsp"><img src="images/product_10.png" alt="" title="" /></a>
			    </div><!-- .prev -->
			    <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
			    <div class="cart">
				   <div class="price">
					  <div class="vert">
						 <div class="price_new">$550.00</div>
						 <div class="price_old">$725.00</div>
					  </div>
				   </div>
				   <a href="#" class="like"></a>
				   <a href="#" class="bay"></a>
			    </div><!-- .cart -->
		     </div><!-- .grid_3 -->
	    
	      <div class="clear"></div>
	      </div><!-- .grid_product -->
	      
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