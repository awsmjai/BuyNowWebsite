<!doctype html>

<!--[if IE 9 ]><html class="ie9" lang="en"><![endif]-->

<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->



<head>

<%@page import="com.mz.model.Product"%>
<%@ page import="java.util.*"%>
<title>BuyNow - Home</title>

<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!--meta info-->

<meta name="author" content="">

<meta name="keywords" content="">

<meta name="description" content="">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="icon" type="image/ico" href="../../images/client/fav.ico">

<!--stylesheet include-->

<link rel="stylesheet" type="text/css" media="all"
	href="../../css/client/colorpicker.css">

<link rel="stylesheet" type="text/css" media="all"
	href="../../css/client/bootstrap.min.css">

<link rel="stylesheet" type="text/css" media="all"
	href="../../css/client/settings.css">

<link rel="stylesheet" type="text/css" media="all"
	href="../../css/client/owl.carousel.css">

<link rel="stylesheet" type="text/css" media="all"
	href="../../css/client/owl.transitions.css">

<link rel="stylesheet" type="text/css" media="all"
	href="../../css/client/jquery.custom-scrollbar.css">

<link rel="stylesheet" type="text/css" media="all"
	href="../../css/client/style.css">

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

				<div class="menu_wrap">

					<div class="container">

						<div class="clearfix row">

							<div class="col-lg-2 t_md_align_c m_md_bottom_15">

								<a href="index-2.html" class="logo d_md_inline_b"> <img
									src="../../images/client/logo.png" alt="">

								</a>

							</div>

							<div class="col-lg-10 clearfix t_sm_align_c">

								<div
									class="clearfix t_sm_align_l f_left f_sm_none relative s_form_wrap m_sm_bottom_15 p_xs_hr_0 m_xs_bottom_5">

									<!--button for responsive menu-->

									<button id="menu_button"
										class="r_corners centered_db d_none tr_all_hover d_xs_block m_xs_bottom_5">

										<span class="centered_db r_corners"></span> <span
											class="centered_db r_corners"></span> <span
											class="centered_db r_corners"></span>

									</button>


									<button
										class="f_right search_button tr_all_hover f_xs_none d_xs_none">

										<i class="fa fa-search"></i>

									</button>

									<!--search form-->

									<div
										class="searchform_wrap type_2 bg_tr tf_xs_none tr_all_hover w_inherit">

										<div class="container vc_child h_inherit relative w_inherit">

											<form role="search" class="d_inline_middle full_width">

												<input type="text" name="search"
													placeholder="Type text and hit enter"
													class="f_size_large p_hr_0">

											</form>

											<button
												class="close_search_form tr_all_hover d_xs_none color_dark">

												<i class="fa fa-times"></i>

											</button>

										</div>

									</div>

								</div>

								<ul
									class="f_right horizontal_list d_sm_inline_b f_sm_none clearfix t_align_l site_settings">

									<!--like-->

									<!--shopping cart-->

									<li class="m_left_5 relative container3d" id="shopping_button">

										<a role="button" href="#"
										class="button_type_3 color_light bg_scheme_color d_block r_corners tr_delay_hover box_s_none">

											<span class="d_inline_middle shop_icon"> <i
												class="fa fa-shopping-cart"></i> <span
												class="count tr_delay_hover type_2 circle t_align_c">3</span>

										</span> <b>$355</b>

									</a>

										<div class="shopping_cart top_arrow tr_all_hover r_corners">

											<div class="f_size_medium sc_header">Recently added
												item(s)</div>

											<ul class="products_list">

												<li>

													<div class="clearfix">

														<!--product image-->

														<img class="f_left m_right_10"
															src="../../images/client/shopping_c_img_1.jpg" alt="">

														<!--product description-->

														<div class="f_left product_description">

															<a href="#" class="color_dark m_bottom_5 d_block">Cursus
																eleifend elit aenean auctor wisi et urna</a> <span
																class="f_size_medium">Product Code PS34</span>

														</div>

														<!--product price-->

														<div class="f_left f_size_medium">

															<div class="clearfix">

																1 x <b class="color_dark">$99.00</b>

															</div>

															<button class="close_product color_dark tr_hover">
																<i class="fa fa-times"></i>
															</button>

														</div>

													</div>

												</li>

												<li>

													<div class="clearfix">

														<!--product image-->

														<img class="f_left m_right_10"
															src="../../images/client/shopping_c_img_2.jpg" alt="">

														<!--product description-->

														<div class="f_left product_description">

															<a href="#" class="color_dark m_bottom_5 d_block">Cursus
																eleifend elit aenean auctor wisi et urna</a> <span
																class="f_size_medium">Product Code PS34</span>

														</div>

														<!--product price-->

														<div class="f_left f_size_medium">

															<div class="clearfix">

																1 x <b class="color_dark">$99.00</b>

															</div>

															<button class="close_product color_dark tr_hover">
																<i class="fa fa-times"></i>
															</button>

														</div>

													</div>

												</li>

												<li>

													<div class="clearfix">

														<!--product image-->

														<img class="f_left m_right_10"
															src="../../images/client/shopping_c_img_3.jpg" alt="">

														<!--product description-->

														<div class="f_left product_description">

															<a href="#" class="color_dark m_bottom_5 d_block">Cursus
																eleifend elit aenean auctor wisi et urna</a> <span
																class="f_size_medium">Product Code PS34</span>

														</div>

														<!--product price-->

														<div class="f_left f_size_medium">

															<div class="clearfix">

																1 x <b class="color_dark">$99.00</b>

															</div>

															<button class="close_product color_dark tr_hover">
																<i class="fa fa-times"></i>
															</button>

														</div>

													</div>

												</li>

											</ul>

											<!--total price-->

											<ul class="total_price bg_light_color_1 t_align_r color_dark">

												<li class="m_bottom_10">Tax: <span
													class="f_size_large sc_price t_align_l d_inline_b m_left_15">$0.00</span></li>

												<li class="m_bottom_10">Discount: <span
													class="f_size_large sc_price t_align_l d_inline_b m_left_15">$37.00</span></li>

												<li>Total: <b
													class="f_size_large bold scheme_color sc_price t_align_l d_inline_b m_left_15">$999.00</b></li>

											</ul>

											<div class="sc_footer t_align_c">

												<a href="#" role="button"
													class="button_type_4 d_inline_middle bg_light_color_2 r_corners color_dark t_align_c tr_all_hover m_mxs_bottom_5">View
													Cart</a> <a href="#" role="button"
													class="button_type_4 bg_scheme_color d_inline_middle r_corners tr_all_hover color_light">Checkout</a>

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

		<section class="revolution_slider">

			<div class="r_slider">

				<ul>

					<li class="f_left" data-transition="curtain-1" data-slotamount="7"
						data-custom-thumb="../../images/client/slide_02.jpg"><img
						src="../../images/client/slider/overview_wireless_hero.jpg" alt=""
						data-bgrepeat="no-repeat" data-bgfit="cover"
						data-bgposition="center center">

						<div
							class="caption sfl str f_size_large color_light tt_uppercase slider_title_3"
							data-x="736" data-y="97" data-speed="500" data-start="2500">
							<b style="color: grey;">Meet New Mac</b>
						</div>

						<div class="caption sfr stl slider_divider" data-x="787"
							data-y="129" data-speed="500" data-start="2500"></div>

						<div
							class="caption lft stb color_light slider_title tt_uppercase t_align_c"
							data-x="588" data-y="140" data-speed="1500"
							data-easing="easeOutBounce">
							<b style="color: black;">Attractive &amp; Powerfull</b>
						</div>

						<div class="caption sft stb color_light slider_title_2"
							data-x="761" data-y="272" data-speed="900" data-start="2300">
							Rs<b style="color: black;">75000</b>
						</div>

						<div class="caption sft stb color_light" data-x="742" data-y="335"
							data-speed="900" data-start="2600">

							<a
								href="http://themeforest.net/item/flatastic-ecommerce-html-template/7221813?ref=mad_velikorodnov"
								role="button"
								class="button_type_4 bg_scheme_color color_light r_corners tt_uppercase">Buy
								Now</a>

						</div></li>

					<li class="f_left" data-transition="cube" data-slotamount="7"
						data-custom-thumb="../../images/client/slide_01.jpg"><img
						src="../../images/client/slider/slider01.jpg" alt=""
						data-bgrepeat="no-repeat" data-bgfit="cover"
						data-bgposition="center center">

						<div
							class="caption lft ltb f_size_large tt_uppercase slider_title_3 scheme_color"
							data-x="264" data-y="126" data-speed="300" data-start="1700">New
							arrivals</div>

						<div class="caption sfb stt slider_divider type_2" data-x="298"
							data-y="153" data-speed="400" data-start="1700"></div>

						<div
							class="caption lft ltb color_light slider_title tt_uppercase t_align_c"
							data-x="95" data-y="170" data-speed="500" data-easing="ease"
							data-start="1400">
							<b><span class="scheme_color">New Ultrabook 2016</span><br>
							<span class="color_dark">Made-For-Gaming</span></b>
						</div>

						<div class="caption lfb ltt color_light" data-x="206" data-y="318"
							data-speed="500" data-start="1700">

							<a
								href="http://themeforest.net/item/flatastic-ecommerce-html-template/7221813?ref=mad_velikorodnov"
								role="button"
								class="button_type_4 bg_scheme_color color_light r_corners tt_uppercase">All
								Variants</a>

						</div></li>

					<li class="f_left" data-transition="cube" data-slotamount="7"
						data-custom-thumb="../../images/client/slide_03.jpg"><img
						src="../../images/client/slider/iph.jpg" alt=""
						data-bgrepeat="no-repeat" data-bgfit="cover"
						data-bgposition="center center">

						<div class="caption lft ltt" data-x="center" data-y="58"
							data-speed="1500" data-start="1200" data-easing="easeOutBounce">

							<img src="../../images/client/slider_layer_img.png" alt="">

						</div>

						<div
							class="caption sfb stb color_light slider_title tt_uppercase t_align_c"
							data-x="center" data-y="246" data-speed="1000" data-easing="ease"
							data-start="2500">
							<b class="color_dark">up to 70% off</b>
						</div>

						<div class="caption sfb stb color_light" data-x="center"
							data-y="352" data-speed="1000" data-start="2900">

							<a
								href="http://themeforest.net/item/flatastic-ecommerce-html-template/7221813?ref=mad_velikorodnov"
								role="button"
								class="button_type_4 bg_scheme_color color_light r_corners tt_uppercase">Shop
								Now</a>

						</div></li>

				</ul>

			</div>

		</section>

		<!--content-->

		<div class="page_content_offset">

			<div class="container">

				<div class="bestsellers_carousel m_bottom_30 m_xs_bottom_15">
				<%
					List<Product> list = (List<Product>) request.getAttribute("result");
				if(list!=null){
		            for (int i = 0; i < list.size(); i++) {
			        Product product = list.get(i);
			        
			        
		            System.out.println(product.getProductId());
		            System.out.println(product.getProductImageName());
				%>
				

					 <figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long">

					<!--product preview-->
					<!-- <a href="#" class="d_block relative pp_wrap"> --> <!--hot product-->

						<!-- <span class="hot_stripe type_2"><img
							src="../../images/client/hot_product_type_2.png" alt=""></span> --> 
				        <img src="../../product/<%=product.getProductImageName()%>" class="tr_all_hover" alt="">

						<!-- <span data-popup="#quick_view_product"
						class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick
							View</span> -->

					<!-- </a> -->

					<!--description and price of product-->

					  <figcaption>

						<h5 class="m_bottom_10">
							<a href="#" class="color_dark ellipsis"><%=product.getProductName()%></a>
							<br>
							<b><u>Description</u>: </b><%=product.getProductDescription()%>
							
						</h5>

						<div class="clearfix">

							<p class="scheme_color f_left f_size_large m_bottom_15">Rs. <%=product.getProductPrice()%></p>

							<!--rating-->



						</div>
                
				<a href="getProductDescription?id=<%=product.getProductId()%>"><button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Add to Cart</button></a> 
						<a href="cart.jsp"><button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Buy
						Now</button></a>

					 </figcaption>

					</figure>




				
				<%
				            }
						 }
                    %>
                    </div>
			</div>
		</div>
	</div>
	<!--banners-->



	<button class="t_align_c r_corners type_2 tr_all_hover animate_ftl"
		id="go_to_top">
		<i class="fa fa-angle-up"></i>
	</button>

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

	<script type="text/javascript"
		src="../../js/client/addthis_widget.js#pubid=xa-5306f8f674bfda4c"></script>




</body>



</html>