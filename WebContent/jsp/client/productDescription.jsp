<!doctype html>

<!--[if IE 9 ]><html class="ie9" lang="en"><![endif]-->

<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->

	

<head>

        <%@page import="com.mz.model.Product"%>
        <%@ page import="java.util.*"%>
        
		<title>BuyNow - Home</title>

		<meta charset="utf-8">

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!--meta info-->

		<meta name="author" content="">

		<meta name="keywords" content="">

		<meta name="description" content="">

		<link rel="icon" type="image/ico" href="../../images/client/fav.ico">

		<!--stylesheet include-->
		
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        
		<link rel="stylesheet" type="text/css" media="all" href="../../css/client/colorpicker.css">

		<link rel="stylesheet" type="text/css" media="all" href="../../css/client/bootstrap.min.css">

		<link rel="stylesheet" type="text/css" media="all" href="../../css/client/settings.css">

		<link rel="stylesheet" type="text/css" media="all" href="../../css/client/owl.carousel.css">

		<link rel="stylesheet" type="text/css" media="all" href="../../css/client/owl.transitions.css">

		<link rel="stylesheet" type="text/css" media="all" href="../../css/client/jquery.custom-scrollbar.css">

		 <link rel="stylesheet" type="text/css" media="all" href="../../css/client/style.css">

		<!--font include-->

		<link href="../../css/client/font-awesome.min.css" rel="stylesheet">

		<script src="../../js/client/modernizr.js"></script>

	</head>

	<body>

		

		<!--boxed layout-->

		<div class="wide_layout relative w_xs_auto">

			<!--[if (lt IE 9) | IE 9]>

				<div style="background:#fff;padding:8px 0 10px;">

				<div class="container" style="width:1170px;"><div class="row wrapper"><div class="clearfix" style="padding:9px 0 0;float:left;width:83%;"><i class="fa fa-exclamation-triangle scheme_color f_left m_right_10" style="font-size:25px;color:#e74c3c;"></i><b style="color:#e74c3c;">Attention! This page may not display correctly.</b> <b>You are using an outdated version of Internet Explorer. For a faster, safer browsing experience.</b></div><div class="t_align_r" style="float:left;width:16%;"><a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode" class="button_type_4 r_corners bg_scheme_color color_light d_inline_b t_align_c" target="_blank" style="margin-bottom:2px;">Update Now!</a></div></div></div></div>

			<![endif]-->

			<!--markup header-->

			<header role="banner" class="type_5">

				<!--header top part-->


				<!--header bottom part-->

				<section class="h_bot_part">

                  <%
                    String numofItems = String.valueOf(request.getAttribute("key"));
                  %>
                  
					<div class="menu_wrap">

						<div class="container">

							<div class="clearfix row">

								<div class="col-lg-2 t_md_align_c m_md_bottom_15">

									<a href="index-2.html" class="logo d_md_inline_b">

										<img src="../../images/client/logo.png" alt="">

									</a>

								</div>

								<div class="col-lg-10 clearfix t_sm_align_c">

									<div class="clearfix t_sm_align_l f_left f_sm_none relative s_form_wrap m_sm_bottom_15 p_xs_hr_0 m_xs_bottom_5">

										<!--button for responsive menu-->

										<button id="menu_button" class="r_corners centered_db d_none tr_all_hover d_xs_block m_xs_bottom_5">

											<span class="centered_db r_corners"></span>

											<span class="centered_db r_corners"></span>

											<span class="centered_db r_corners"></span>

										</button>

										

										<button class="f_right search_button tr_all_hover f_xs_none d_xs_none">

											<i class="fa fa-search"></i>

										</button>

										<!--search form-->

										<div class="searchform_wrap type_2 bg_tr tf_xs_none tr_all_hover w_inherit">

											<div class="container vc_child h_inherit relative w_inherit">

												<form role="search" class="d_inline_middle full_width">

													<input type="text" name="search" placeholder="Type text and hit enter" class="f_size_large p_hr_0">

												</form>

												<button class="close_search_form tr_all_hover d_xs_none color_dark">

													<i class="fa fa-times"></i>

												</button>

											</div>

										</div>

									</div>

									<ul class="f_right horizontal_list d_sm_inline_b f_sm_none clearfix t_align_l site_settings">

										<!--like-->

										<!--shopping cart-->

										<li class="m_left_5 relative container3d" id="shopping_button">

											<a role="button" href="#" class="button_type_3 color_light bg_scheme_color d_block r_corners tr_delay_hover box_s_none">

												<span class="d_inline_middle shop_icon">

													<i class="fa fa-shopping-cart"></i>

													<span class="count tr_delay_hover type_2 circle t_align_c"><%=numofItems%></span>

												</span>

												<!-- <b>$355</b> -->

											</a>

											<div class="shopping_cart top_arrow tr_all_hover r_corners">

												<div class="f_size_medium sc_header">Recently added item(s)</div>

												<ul class="products_list">
												  <%
								                    List<Product> list = (List<Product>) request.getAttribute("list1");
								  				    if(list!=null){
								  		              for (int i = 0; i < list.size(); i++) {
								  			          Product product = list.get(i);
								  			        
								  			        
								  		              System.out.println(product.getProductId());
								  		              System.out.println(product.getProductImageName());
								                  %>

													<li>

														<div class="clearfix">

															<!--product image-->

															<img class="f_left m_right_10" src="../../product/<%=product.getProductImageName()%>" alt="">

															<!--product description-->

															<div class="f_left product_description">

																<a href="#" class="color_dark m_bottom_5 d_block"><%=product.getProductDescription()%></a>

																<span class="f_size_medium"><%=product.getProductName()%></span>

															</div>

															<!--product price-->

															<div class="f_left f_size_medium">

																<div class="clearfix">

																	1 x <b class="color_dark">Rs.<%=product.getProductPrice()%></b>

																</div>

																<button class="close_product color_dark tr_hover"><i class="fa fa-times"></i></button>

															</div>

														</div>

													</li>

													<li>
													<%
								  		              }
								  				    }
													%>

												</ul>

												<!--total price-->

												<ul class="total_price bg_light_color_1 t_align_r color_dark">

													<li class="m_bottom_10">Tax: <span class="f_size_large sc_price t_align_l d_inline_b m_left_15">$0.00</span></li>

													<li class="m_bottom_10">Discount: <span class="f_size_large sc_price t_align_l d_inline_b m_left_15">$37.00</span></li>

													<li>Total: <b class="f_size_large bold scheme_color sc_price t_align_l d_inline_b m_left_15">$999.00</b></li>

												</ul>

												<div class="sc_footer t_align_c">

													<a href="#" role="button" class="button_type_4 d_inline_middle bg_light_color_2 r_corners color_dark t_align_c tr_all_hover m_mxs_bottom_5">View Cart</a>

													<a href="#" role="button" class="button_type_4 bg_scheme_color d_inline_middle r_corners tr_all_hover color_light">Checkout</a>

												</div>

											</div>

										</li>

									</ul>

								</div>

							</div>

						</div>

						<hr class="divider_type_6">

					</div>

				</section>

			</header>

			<!--slider-->

			
			<div class="page_content_offset">

				<div class="container">
                 <%
				        Product product = (Product) request.getAttribute("productData");
					    String imageNameStr;
					    String productNameStr;
					    int productpriceStr;
					    String productDescriptionStr;
						
					        /*   
					         int id = product.getProductId();
					        imageNameStr = product.getProductImageName();
					        productNameStr = product.getProductName();
					        productpriceStr = product.getProductPrice();
					        productDescriptionStr = product.getProductDescription(); 
					        
					        System.out.println("productId: "+ id);
					        System.out.println("imageNameStr: "+ imageNameStr);
					        System.out.println("productNameStr: "+ productNameStr);
					        System.out.println("productpriceStr: "+ productpriceStr);
					        System.out.println("productDescriptionStr: "+ productDescriptionStr); */
				           
			             %>
					
					<div class="clearfix m_bottom_30 t_xs_align_c">

						<div class="photoframe type_2 shadow r_corners f_left f_sm_none d_xs_inline_b product_single_preview relative m_right_30 m_bottom_5 m_sm_bottom_20 m_xs_right_0 w_mxs_full">

							<span class="hot_stripe"><img src="../../images/client/sale_product.png" alt=""></span>

							<div class="relative d_inline_b m_bottom_10 qv_preview d_xs_block">

								<img style="width: 400px;" id="zoom_image" src="../../product/<%=product.getProductImageName()%>" data-zoom-image="../../product/<%=product.getProductImageName()%>" class="tr_all_hover" alt="">

								<a href="../../product/<%=product.getProductImageName()%>" class="d_block button_type_5 r_corners tr_all_hover box_s_none color_light p_hr_0">

									<i class="fa fa-expand"></i>

								</a>

							</div>

							<!--carousel-->


						</div>

						<div class="p_top_10 t_xs_align_l">

							<!--description-->

							<h2 class="color_dark fw_medium m_bottom_10"><%=product.getProductName()%></h2>


							<hr class="m_bottom_10 divider_type_3">

							<h5 class="fw_medium m_bottom_10">Product Dimensions and Weight</h5>

							<hr class="divider_type_3 m_bottom_10">

							<p class="m_bottom_10"><%=product.getProductDescription()%></p>

							<hr class="divider_type_3 m_bottom_15">

							<div class="m_bottom_15">

								<!-- <s class="v_align_b f_size_ex_large">$152.00</s> --><span class="v_align_b f_size_big m_left_5 scheme_color fw_medium">Rs. <%=product.getProductPrice()%></span>

							</div>

							
							<div class="d_ib_offset_0 m_bottom_20">

								<a href="addToList?productId=<%=product.getProductId()%>"><button class="button_type_12 r_corners bg_scheme_color color_light tr_delay_hover d_inline_b f_size_large">Add to Cart</button></a>
                                &nbsp;&nbsp;&nbsp;
                                <a href="checkout.jsp"><button class="button_type_12 r_corners bg_scheme_color color_light tr_delay_hover d_inline_b f_size_large">Buy Now</button></a>
							</div>

						</div>

					</div>

					<!--tabs-->

									</div>
			</div>
					

		<button class="t_align_c r_corners type_2 tr_all_hover animate_ftl" id="go_to_top"><i class="fa fa-angle-up"></i></button>

		<!--scripts include-->

		<script src="../../js/client/jquery-2.1.0.min.js"></script>

		<script src="../../js/client/retina.js"></script>

		<script src="../../js/client/jquery.themepunch.plugins.min.js"></script>

		<script src="../../js/client/jquery.themepunch.revolution.min.js"></script>

		<script src="../../js/client/styleswitcher.js"></script>

		<script src="../../js/client/colorpicker.js"></script>

		<script src="../../js/client/waypoints.min.js"></script>

		<script src="../../js/client/owl.carousel.min.js"></script>

		<script src="../../js/client/jquery.tweet.min.js"></script>

		<script src="../../js/client/jquery.custom-scrollbar.js"></script>

		<script src="../../js/client/scripts.js"></script>

<script type="text/javascript" src="../../js/client/addthis_widget.js#pubid=xa-5306f8f674bfda4c"></script>

	</body>



</html>