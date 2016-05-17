<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">
.image {
	width: 120px;
	height: 120px
}
</style>
<%@page import="com.mz.model.Product"%>
<%@ page import="java.util.*"%>
<title>Admin | Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../../css/admin/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<!-- Custom Theme files -->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<link href="../../css/admin/style.css" rel='stylesheet' type='text/css' />
<link href="../../css/admin/font-awesome.css" rel="stylesheet">
<script src="../../js/admin/jquery.min.js"> </script>
<script src="../../js/admin/bootstrap.min.js"> </script>

<!-- Mainly scripts -->
<script src="../../js/admin/jquery.metisMenu.js"></script>
<script src="../../js/admin/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<link href="../../css/admin/custom.css" rel="stylesheet">
<script src="../../js/admin/custom.js"></script>
<script src="../../js/admin/screenfull.js"></script>
<script>
    $(function () {
      $('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

      if (!screenfull.enabled) {
        return false;
      }

      

      $('#toggle').click(function () {
        screenfull.toggle($('#container')[0]);
      });
      

      
    });
    </script>

</head>
<body>
	<div id="wrapper">

		<nav class="navbar-default navbar-static-top" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1>
					<a class="navbar-brand" href="index.html">Admin</a>
				</h1>
			</div>
			<div class=" border-bottom">
				<div class="full-left">
					<section class="full-top">
						<button id="toggle">
							<i class="fa fa-arrows-alt"></i>
						</button>
					</section>
					<form class=" navbar-left-right">
						<input type="text" value="Search..." onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Search...';}">
						<input type="submit" value="" class="fa fa-search">
					</form>
					
				</div>
           </div>


				<div class="clearfix"></div>

				<div class="navbar-default sidebar" role="navigation">
					<div class="sidebar-nav navbar-collapse">
						<ul class="nav" id="side-menu">

							<li><a href="showProduct" class=" hvr-bounce-to-right"><i
									class="fa fa-dashboard nav_icon "></i><span class="nav-label">Dashboards</span>
							</a></li>

							<li><a href="addProduct.jsp" class=" hvr-bounce-to-right"><i
									class="fa fa-indent nav_icon"></i> <span class="nav-label">Add
										Product</span></a></li>
							<li><a href="searchProduct.jsp" class=" hvr-bounce-to-right"><i
									class="fa fa-inbox nav_icon"></i> <span class="nav-label">Search
										Product</span> </a></li>

						</ul>
					</div>
				</div>
		</nav>
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="content-main">

				<div class="banner">
					<h2>
						<a href="index.jsp">Home</a> <i class="fa fa-angle-right"></i> <span>Add
							Product</span>
					</h2>
					<%String result= (String)request.getAttribute("updateMessage");%>
					<%if(result==null)
					  {
						
					  }else{
						%>
						  <h2><%=result %></h2>
						<% 
					  }
						%>
					<%-- <%String result= (String)request.getAttribute("productData");%>
					<%if(result==null)
					  {
						
					  }else{
						%>
						  <h2><%=result %></h2>
						<% 
					  }
						%> --%>
				</div>

				<div class="validation-system">

					<div class="validation-form">
					  <%
				        Product product = (Product) request.getAttribute("productData");
					    String imageNameStr;
					    String productNameStr;
					    int productpriceStr;
					    String productDescriptionStr;
						 /* if(list!=null){
				            for (int i = 0; i < list.size(); i++) {
					        Product product = list.get(i); */ 
					          
					         int id = product.getProductId();
					        imageNameStr = product.getProductImageName();
					        productNameStr = product.getProductName();
					        productpriceStr = product.getProductPrice();
					        productDescriptionStr = product.getProductDescription(); 
					        /* System.out.println(id);
					        System.out.println(imageNameStr);
					        System.out.println(productNameStr);
					        System.out.println(productpriceStr);
					        System.out.println(productDescriptionStr);  */
				           
			             %>
						<form action="updateProduct" method="post" enctype="multipart/form-data">

                          <div class="col-md-12 form-group1 group-mail">
								<label class="control-label">Product Image</label>
								<div>
									<img src="../../product/<%=product.getProductImageName()%>"
										class="image">
								</div>
								<br> <input type="file" id="imageName" name="imageName">
								<script type="text/javascript">
				                    $(function(){
				                      $('#imageName').change( function(e) {
				                      
				                      var img = URL.createObjectURL(e.target.files[0]);
				                      $('.image').attr('src', img);
				                      });
				                    });
                                </script>
							</div>
							<div class="vali-form">
								<div class="col-md-6 form-group1">
									<label class="control-label">Product Name</label> <input
										type="text" name="name" value="<%=product.getProductName()%>" >
								</div>
								<div class="col-md-6 form-group1 form-last">
									<label class="control-label">Product Id</label> <input
										type="text" name="id" value="<%=product.getProductId()%>">
								</div>

							</div>

							<div class="col-md-12 form-group1 group-mail">
								<label class="control-label">Product Price</label> <input
									type="text" name="price" value="<%=product.getProductPrice()%>">
							</div>
							<div class="clearfix"></div>
							

							<div class="clearfix"></div>
							<div class="col-md-12 form-group1 ">
								<label class="control-label">Product Description</label>
								<textarea name="description"><%=product.getProductDescription()%></textarea>
							</div>

                            <div class="clearfix"></div>
                            
                            <%-- <input type="hidden" name="hiddenImageName" value="<%=product.getProductImageName()%>"> --%>
                            
							<div class="col-md-12 form-group">
								<center>
									<button type="submit" class="btn btn-primary">Update</button>
								</center>
								
							</div>
                            <div class="clearfix"></div>
                            <%-- <%
				            }
						 }
			              %> --%>
						</form>

						<!---->
					</div>

				</div>



			</div>
		</div>
      </div>

		<script src="../../js/admin/jquery.nicescroll.js"></script>
		<script src="../../js/admin/scripts.js"></script>
		<!--//scrolling js-->
</body>
</html>

