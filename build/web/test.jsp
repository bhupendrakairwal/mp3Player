<%-- 
    Document   : test
    Created on : Aug 3, 2020, 10:04:13 PM
    Author     : Lenovo
--%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Musicstore a Entertainment Category Flat Responsive web template | Home :: W3layouts</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="js/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
                  
                  
                  <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidebar {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidebar a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.sidebar .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

.openbtn {
  font-size: 20px;
  cursor: pointer;
  background-color: red;
  color: white;
  padding: 10px 15px;
  border: none;
}

.openbtn:hover {
  background-color: black;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 700px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}
</style>
                  
	</head>
	<body>
		<!---start-wrap--->
		<div class="wrap">
			<!---start-header--->
			<div class="header">
			<!---start-top-header--->
			<div class="top-header">
                            
                               
				<div class="top-header-left">
                                     <div id="mySidebar" class="sidebar">
                                  <a href="javascript:void(0)" class="closebtn" onClick="closeNav()">?</a>
                                  <a href="#">About</a>
                                  <a href="#">Services</a>
                                  <a href="#">Clients</a>
                                  <a href="#">Contact</a>
                                </div>

                                <div id="main">
                                  <button class="openbtn" onClick="openNav()">?</button>  

                                </div>
					<ul>
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Specials</a></li>
						<li><a href="#">Delivery</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
				<div class="top-header-right">
					<ul>
						<li><a href="#">CURRENCY:</a></li>
						<li>
							<select>
								<option>Dollar</option>
								<option>Euro</option>
								<option>Pound</option>
							</select>
						</li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="sub-header">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="logo" /></a>
				</div>
				<div class="sub-header-center">
					<form>
						<input type="text"><input type="submit"  value="search" />
					</form>
				</div>
				<div class="sub-header-right">
					<ul>
						<li><a href="#">log in</a></li>
						<li><a href="#">Your account</a></li>
						<li><a href="#">CART: (EMPTY) <img src="images/cart.png" title="cart" /></a></li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="top-nav">
				<ul>
					<li class="active1"><a href="index.html">Home</a></li>
					<li><a href="favorites.html">Favourites</a></li>
					<li><a href="artists.html">Artists</a></li>
					<li><a href="specials.html">Specials</a></li>
					<li><a href="specials.html">Recent-albums</a></li>
					<li><a href="contact.html">Feedback</a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			<!---end-top-header--->
			<!---End-header--->
			</div>
			
				<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li><img src="images/slider1.jpg" alt=""></li>
					      <li><img src="images/slider3.jpg" alt=""></li>
					      <li><img src="images/slider1.jpg" alt=""></li>
					    </ul>
						 <!-- Slideshow 2 -->
					</div>
					<!--End-image-slider---->
				<div class="content">
					<div class="products-box">
					<div class="products">
						<h5><span>FEATURED</span> PRODUCTS</h5>
						<div class="section group">
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a4.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><label>$700.00</label>$512.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
						   </div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a5.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								<h4><label>$700.00</label>$300.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
						    </div>
							<div class="grid_1_of_5 images_1_of_5">
								<img src="images/a6.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><label>$700.00</label>$120.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
							</div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a7.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><label>$700.00</label>$500.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
							</div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a8.jpg">
								 <h3>Lorem Ipsum is simply</h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><label>$600.00</label>$120.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
							</div>
						</div>
						<a class="button1" href="#">View all</a>
						<div class="clear"> </div>
					</div>
					<div class="products products-secondbox">
						<h5><span>Our</span> Specials</h5>
						<div class="section group">
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a9.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><span>$600.00</span>$512.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
						   </div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a10.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><span>$400.00</span>$352.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
						    </div>
							<div class="grid_1_of_5 images_1_of_5">
								<img src="images/a11.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								  <h4><span>$300.00</span>$202.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
							</div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a12.jpg">
								 <h3>Lorem Ipsum is simply </h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><span>$400.00</span>$322.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
							</div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="images/a1.jpg">
								 <h3>Lorem Ipsum is simply</h3>
								 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, in reprehenderit.</p>
								 <h4><span>$700.00</span>$602.00</h4>
							     <div class="button"><span><a href="singlepage.html">Read More</a></span></div>
							</div>
							<a class="button1" href="#">View all</a>
						<div class="clear"> </div>
						</div>
					</div>
				</div>
			</div>
		</div>
			<div class="clear"> </div>
			<div class="footer">
				<div class="wrap">
				<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h3>INFORMATION</h3>
					<ul>
						<li><a href="#">About us</a></li>
						<li><a href="#">Sitemap</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms and conditions</a></li>
						<li><a href="#">Legal Notice</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>OUR OFFERS</h3>
					<ul>
						<li><a href="#">New products</a></li>
						<li><a href="#">top sellers</a></li>
						<li><a href="#">Specials</a></li>
						<li><a href="#">Products</a></li>
						<li><a href="#">Comments</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>YOUR ACCOUNT</h3>
					<ul>
						<li><a href="#">Your Account</a></li>
						<li><a href="#">Personal info</a></li>
						<li><a href="#">Prices</a></li>
						<li><a href="#">Address</a></li>
						<li><a href="#">Locations</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4 footer-lastgrid">
					<h3>Get in touch</h3>
					<ul>
						<li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="images/twitter.png" title="Twiiter" /></a></li>
						<li><a href="#"><img src="images/rss.png" title="Rss" /></a></li>
						<li><a href="#"><img src="images/gpluse.png" title="Google+" /></a></li>
					</ul>
					<p>&copy; 2013 Musicstore. All Rights Reserved | Design by <a href="#">W3layouts</a></p>
				</div>
			</div>
			</div>
		</div>
		<!---End-wrap--->
                <script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
	</body>
</html>


