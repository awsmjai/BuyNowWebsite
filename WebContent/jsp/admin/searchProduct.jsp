<!DOCTYPE HTML>
<html>
<head>
<title>Admin | Products</title>
<%@page import="com.mz.model.Product"%>
<%@ page import="java.util.*"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../../css/admin/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<!-- Custom Theme files -->
<link href="../../css/admin/style.css" rel='stylesheet' type='text/css' />
<link href="../../css/admin/font-awesome.css" rel="stylesheet">
<script src="../../js/admin/jquery.min.js"> </script>
<script src="../../js/admin/bootstrap.min.js"> </script>

<!-- Mainly scripts -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

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

<script type="text/javascript">
			$(document).ready(function() {
				$('#priceOperator').change(function() {
					if ($('#priceOperator').val() === 'Between') {
						$('#secondPrice').show();
					} else {
						
						$('#secondPrice').hide();
		
					}
				});
				
			});
</script>


<style type="text/css">
@import
	url(http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

/* body {
	background-color: #3e94ec;
	font-family: "Roboto", helvetica, arial, sans-serif;
	font-size: 16px;
	font-weight: 400;
	text-rendering: optimizeLegibility;
} */
div.table-title {
	display: block;
	margin: auto;
	max-width: 600px;
	padding: 5px;
	width: 100%;
}

.table-title h3 {
	color: #fafafa;
	font-size: 30px;
	font-weight: 400;
	font-style: normal;
	font-family: "Roboto", helvetica, arial, sans-serif;
	text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
	text-transform: uppercase;
}

/*** Table Styles **/
.table-fill {
	background: white;
	border-radius: 3px;
	border-collapse: collapse;
	height: 320px;
	margin: auto;
	max-width: 600px;
	padding: 5px;
	width: 100%;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
	animation: float 5s infinite;
}

th {
	color: #D5DDE5;;
	background: #1b1e24;
	border-bottom: 4px solid #9ea7af;
	border-right: 1px solid #343a45;
	font-size: 23px;
	font-weight: 100;
	padding: 24px;
	text-align: left;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	vertical-align: middle;
}

th:first-child {
	border-top-left-radius: 3px;
}

th:last-child {
	border-top-right-radius: 3px;
	border-right: none;
}

tr {
	border-top: 1px solid #C1C3D1;
	border-bottom-: 1px solid #C1C3D1;
	color: #666B85;
	font-size: 16px;
	font-weight: normal;
	text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}

tr:hover td {
	background: #4E5066;
	color: #FFFFFF;
	border-top: 1px solid #22262e;
	border-bottom: 1px solid #22262e;
}

tr:first-child {
	border-top: none;
}

tr:last-child {
	border-bottom: none;
}

tr:nth-child(odd) td {
	background: #EBEBEB;
}

tr:nth-child(odd):hover td {
	background: #4E5066;
}

tr:last-child td:first-child {
	border-bottom-left-radius: 3px;
}

tr:last-child td:last-child {
	border-bottom-right-radius: 3px;
}

td {
	background: #FFFFFF;
	padding: 20px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 18px;
	text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
	border-right: 1px solid #C1C3D1;
}

td:last-child {
	border-right: 0px;
}

th.text-left {
	text-align: left;
}

th.text-center {
	text-align: center;
}

th.text-right {
	text-align: right;
}

td.text-left {
	text-align: left;
}

td.text-center {
	text-align: center;
}

td.text-right {
	text-align: right;
}
</style>
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
					<a class="navbar-brand" href="index.jsp">Admin</a>
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
					<div class="clearfix"></div>
				</div>
			</div>
		</nav>
	</div>


	<div class="clearfix"></div>

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">

				<li><a href="showProduct" class=" hvr-bounce-to-right"><i
						class="fa fa-dashboard nav_icon "></i><span class="nav-label">Dashboards</span>
				</a></li>

				<li><a href="addProduct.jsp" class=" hvr-bounce-to-right"><i
						class="fa fa-plus-circle nav_icon"></i> <span class="nav-label">Add
							Product</span></a></li>
				<li><a href="searchProduct.jsp" class=" hvr-bounce-to-right"><i
						class="fa fa-search nav_icon"></i> <span class="nav-label">Search
							Product</span> </a></li>
			</ul>
		</div>
	</div>
	<div id="page-wrapper" class="gray-bg dashbard-1">
		<div class="content-main">

			<!--banner-->
			<div class="banner">
				<h2>
					<a href="index.jsp">Home</a> <i class="fa fa-angle-right"></i> <span>Search
						Product</span>
				</h2>
			</div>
			<div class="validation-system">

				<div class="validation-form">

					<form action="searchProduct" method="post">

						<div class="vali-form">
							<div class="col-md-6 form-group1">
								<label class="control-label">Product Name</label> <input
									type="text" name="name" placeholder="Name">
							</div>
							<div class="col-md-6 form-group1 form-last">
								<label class="control-label">Product Id</label> <input
									type="text" name="id" placeholder="Product Id">
							</div>

						</div>
						<div class="clearfix"></div>
						<div class="vali-form">
							<div class="col-md-6 form-group1">
								<label class="control-label">Product Price</label> <input
									type="text" name="price" placeholder="Product Price"
									style="width: 85%;">
							</div>
							<div class="col-md-6 form-group1 form-last">
								<select id="priceOperator"
									style="margin-top: 34px; margin-left: -98px;"
									name="priceOperator">
									<option value="SelectPrice">Select</option>
									<option value=">">></option>
									<option value="<"><</option>
									<option value=">=">>=</option>
									<option value="<="><=</option>
									<option value="Between">Between</option>
								</select> <input type="text" id="secondPrice" name="secondPrice"
									style="display: none;" />
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="col-md-12 form-group">
							<center>
								<button type="submit" style="margin-top: 45px; width: 101px;"
									class="btn btn-primary">Search</button>
							</center>

						</div>
						<div class="clearfix"></div>
					</form>

					<!---->
				</div>
			</div>
			<div class="banner">
				<table class="table-fill">
					<%
				        List<Product> list = (List<Product>) request.getAttribute("result");
			          %>
					<thead>
						<tr>
							<th class="text-left">Id</th>
							<th class="text-left">Image</th>
							<th class="text-left">Name</th>
							<th class="text-left">Price</th>
							<th class="text-left">Description</th>
							<th class="text-left">Update</th>
							<th class="text-left">Delete</th>
						</tr>
					</thead>

					<tbody class="table-hover">
						<%
						    if(list!=null){
				            for (int i = 0; i < list.size(); i++) {
					        Product product = list.get(i);
					        
			             %>
						<tr>
							<td class="text-left">
								<%
						            out.println(product.getProductId());
					              %>
							</td>

							<td class="text-left"><img
								style="width: 120px; height: 120px"
								src="../../product/<%=product.getProductImageName()%>" alt=""></td>

							<td class="text-left">
								<%
						            out.println(product.getProductName());
					              %>
							</td>
							<td class="text-left">
								<%
						            out.println(product.getProductPrice());
					              %>
							</td>
							<td class="text-left">
								<%
						            out.println(product.getProductDescription());
					              %>
							</td>
							<td class="text-left">
							  <i class="fa fa-pencil" aria-hidden="true"></i>
							</td>
							
							<td class="text-left">
							  <i class="fa fa-trash-o" aria-hidden="true"></i>
							</td>
						</tr>

						<%
				            }
						    }
			              %>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<!---->
	<!--scrolling js-->
	<script src="../../js/admin/jquery.nicescroll.js"></script>
	<script src="../../js/admin/scripts.js"></script>
	<!--//scrolling js-->
</body>
</html>

