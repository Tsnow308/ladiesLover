<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    <!--  <div id="top">
      <div class="grid_3">
        <div class="phone_top">
          Call Us +777 (100) 1234
        </div>
      </div>

      <div class="grid_6">
        <div class="welcome">
          游客&nbsp;欢迎，您可以 <a href="login.jsp">登录</a> 或 <a href="login.jsp">注册新账户</a>.
        </div>
      </div>
    </div> --><!-- #top -->

    



    <div class="clear"></div>

    <header id="branding">
      <div class="grid_3">
        <hgroup>
          <h1 id="site_logo" ><a href="index.jsp" title=""><img src="images/logo.png" alt="Online Store Theme Logo"/></a></h1>
          <!--<h2 id="site_description">专注女鞋</h2>-->
        </hgroup>
      </div><!-- .grid_3 -->

      <!-- <div class="grid_3">
        <form class="search">
          <input type="text" name="search" class="entry_form" value="" placeholder="Search entire store here..."/>
  </form>
      </div> --><!-- .grid_3 -->

      <div class="grid_header_up_right">
        <ul id="cart_nav">
          <li>
            <a class="cart_li" href="shopping_cart.jsp">shopping_cart</a>
            <!-- <ul class="cart_cont">
              <li class="no_border"><p>Recently added item(s)</p></li>
              <li>
                <a href="product_page.jsp" class="prev_cart"><div class="cart_vert"><img src="images/cart_img.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>
              
              <li>
                <a href="product_page.jsp" class="prev_cart"><div class="cart_vert"><img src="images/produkt_slid1.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>
        <li class="no_border">
    <a href="shopping_cart.jsp" class="view_cart">View shopping cart</a>
    <a href="checkout.jsp" class="checkout">Procced to Checkout</a>
        </li>
            </ul> -->
          </li>
        </ul>

        <nav class="private">
          <ul id="userStatus">
            <!--<li><a href="catalog_list.jsp">my account</a></li>
    <li class="separator">|</li>-->

            <%
              if((String)session.getAttribute("username")!=null){
                String username=(String)session.getAttribute("username");
                out.print("<li><a href=\"catalog_list.jsp\">"+ username +"</a></li>");
              } else {
                out.print("<li><a href=\"login.jsp\">login</a></li><li class=\"separator\">|</li><li><a href=\"login.jsp\">register</a></li>");
              }
            %>


            </ul>
        </nav><!-- .private -->

      </div><!-- .grid_6 -->
    </header><!-- #branding -->
  </div><!-- .container_12 -->

  <div class="clear"></div>

  <div id="block_nav_primary">
    <div class="container_12">
      <div class="grid_12">
        <nav class="primary">
          <ul>
            <li class="curent"><a href="index.jsp">home</a></li>
            <li><a href="catalog_grid.jsp">women</a></li>
            <li><a href="catalog_grid.jsp">girls</a></li>
            <!--<li><a href="catalog_grid.jsp">children</a></li>-->
            <li><a href="catalog_grid.jsp">sports</a></li>
            <li><a href="catalog_grid.jsp">casual</a></li>
            <li><a href="catalog_grid.jsp">heels</a></li>
            <li><a href="catalog_grid.jsp">sale</a></li>
            <li><a href="catalog_grid.jsp">best</a></li>
          </ul>
        </nav><!-- .primary -->
      </div><!-- .grid_12 -->
    </div><!-- .container_12 -->
  </div><!-- .block_nav_primary -->

  <div class="clear"></div>