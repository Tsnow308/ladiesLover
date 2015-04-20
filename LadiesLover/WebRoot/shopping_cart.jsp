<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="UTF-8">

  <meta name="description" content="">
  <meta name="keywords" content="">

  <title>Ladies' Love - 购物车</title>

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
  <script src="js/address.js"></script>

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
  <script>
       $(document).ready(function() {
	      $("select").selectBox();
       });
  </script>
  <script type="text/javascript">
        function continue_shopping(){
            window.location.href="catalog_grid.jsp";
        }
        function update_cart(){
            window.location.href="shopping_cart.jsp";
        }

  </script>

</head>
<body  onLoad="loadProvince()">
  <div class="container_12">
    <jsp:include page="header.jsp" flush="true"/>

  <section id="main" class="entire_width">
    <div class="container_12">
       <div class="grid_12">
       <h1 class="page_title">购物车</h1>

       <table class="cart_product">
	      <tr>
		     <th class="images"></th>
		     <th class="bg name">产品名称</th>
		     <th class="edit"> </th>
		     <th class="bg price">单价</th>
		     <th class="qty">数量</th>
		     <th class="bg subtotal">小结</th>
		     <th class="close"> </th>
	      </tr>
	      <tr>
		     <td class="images"><a href="product_page.jsp"><img src="images/product_6.png" alt="Product 6"></a></td>
		     <td class="bg name">Paddywax Fragrance Diffuser Set, Gardenia Tuberose,<br/> Jasmine, 4-Ounces</td>
		     <td class="edit"><a title="Edit" href="#">Edit</a></td>
		     <td class="bg price">$75.00</td>
		     <td class="qty"><input type="text" name="" value="" placeholder="1000" /></td>
		     <td class="bg subtotal">$750.00</td>
		     <td class="close"><a title="close" class="close" href="#"></a></td>
	      </tr>
	      <tr>
		     <td class="images"><a href="product_page.jsp"><img src="images/produkt_slid1.png" alt="Product Slide 1"></a></td>
		     <td class="bg name">California Scents Spillproof Organic Air Fresheners,<br/> Coronado Cherry, 1.5 Ounce Cannister</td>
		     <td class="edit"><a title="Edit" href="#">Edit</a></td>
		     <td class="bg price">$75.00</td>
		     <td class="qty"><input type="text" name="" value="" placeholder="1000" /></td>
		     <td class="bg subtotal">$750.00</td>
		     <td class="close"><a title="close" class="close" href="#"></a></td>
	      </tr>
	      <tr>
		     <td colspan="7" class="cart_but">
			    <button class="continue" onclick="continue_shopping()"><span>icon</span>继续购物</button>
			    <button class="update" onclick="update_cart()"><span>icon</span>刷新购物车</button>
		     </td>
	      </tr>
       </table>
       </div><!-- .grid_12 -->

       <div id="content_bottom">
        <div class="grid_4">
          <div class="bottom_block estimate">
            <h3>设置收件地址</h3>
	    <form name="form_address">
	      <p>
		     <strong>省:</strong><sup class="surely">*</sup><br/>
        
		     <select id="province" name="province" onchange="cityName(this.selectedIndex)" size="1">
          <option value="请选择省">请选择省</option>
		     </select>
       
	      </p>
	      <p>
		     <strong>市/区:</strong><br/>
		     <select id="city" name="city">
			    <option>请选择城区</option>
		     </select>
	      </p>

        <p>
         <strong>街道:</strong><br/>
         <input type="text" name="" value="" />
        </p>

	      <p>
		     <strong>邮编:</strong><br/>
		     <input type="text" name="" value="" />
	      </p>
	      <!-- <input type="submit" id="get_estimate" value="Get a Quote" /> -->
	    </form>

          </div><!-- .estimate -->
        </div><!-- .grid_4 -->

        <div class="grid_4">
          <div class="bottom_block discount">
            <h3>设置收件人</h3>
	    <form>
	      <p>
         <strong>收件人:</strong><br/>
         <input type="text" name="" value="" />
        </p>
        <p>
         <strong>手机:</strong><br/>
         <input type="text" name="" value="" />
        </p>
	    </form>
          </div><!-- .discount -->
        </div><!-- .grid_4 -->

        <div class="grid_4">
          <div class="bottom_block total">
	      <table class="subtotal">
		     <tr>
			    <td>总计</td><td class="price">$1, 500.00</td>
		     </tr>
		     <tr class="grand_total">
			    <td>结算</td><td class="price">$1, 500.00</td>
		     </tr>
	      </table>
	    <button class="checkout">提交订单</button>
            <!-- <a href="#">Checkout with Multiple Addresses</a> -->
          </div><!-- .total -->
        </div><!-- .grid_4 -->

        <div class="clear"></div>
      </div><!-- #content_bottom -->
      <div class="clear"></div>

      <div class="clear"></div>

      

    </div><!-- .container_12 -->
  </section><!-- #main -->

  <div class="clear"></div>

<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>
