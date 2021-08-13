<%-- 
    Document   : showalbum
    Created on : Aug 3, 2020, 9:59:47 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.*" %>
<%    
      if(request.getParameter("Catcode").length()==0){
      
             response.sendRedirect("index.jsp?Err=1");
      
      
      }
      
      
      else{
          
          try{    
               String Cat_code=request.getParameter("Catcode");
     Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select * from category where status=1 and code='"+Cat_code+"'");
             %>
             
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
	</head>
	<body>
		<!---start-wrap--->
		<div class="wrap">
			<!---start-header--->
			<div class="header">
			<!---start-top-header--->
			<div class="top-header">
				<div class="top-header-left">
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
                      
                                   <ul class="list-group"> 
                                    
                                   <li class="active1"><a href="index.jsp">Home</a></li>
                                          <%
                                             String Category=" ";
                                          %>
                             
                                     <%
                                         if(rs.next()){
                                              Category=rs.getString(3);
                                    
                                    
                                    
                                    %>
                                    <li class="list-group-item"><a href="showalbum.jsp?Catcode=<%=Cat_code%>"><%out.println(Category);%></a></li>
                                        
                                    <%
                                           }

                                        %>
			<!---end-top-header-->
                        <%        cn.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

}
           
              %>
                    </ul>      
                                        
                           <div class="clear"> </div>
			</div>
                                     ->
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
          <%
     try{      
         
          String Catcode=request.getParameter("Catcode");
          Class.forName("com.mysql.jdbc.Driver");
             Connection cn1;
                     cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st1=cn1.createStatement();
             ResultSet rs1;
             rs1=st1.executeQuery("select * from album where status=1 and Ccode='"+Catcode+"' ");
             
             %>                     
                         
             <div class="content">
					<div class="products-box">
					<div class="products">
                                           
						<h5><span>Albums</span></h5>
						<div class="section group">
                                                     <% 
                                               while(rs1.next()){
                                                   String Acode=rs1.getString(2);
                                            
                                            %>
							<div class="grid_1_of_5 images_1_of_5">
                                                            <img src="upload/<%=Acode+".jpg"%>" width="180" height="180">
								 <h3><%out.println(""+rs1.getString(5)+"");%></h3>
                                                                 <p><h3><%out.println(""+rs1.getString(6)+"");%></h3>
                                                                 <div class="button"><span><a href="showsongs.jsp?Acode=<%=Acode%>&Catcode=<%=Catcode%>">Play</a></span></div>
						   </div>
                                                            <%
                                                            
                                                            }
                                                            
                                                            %>
                                                          
				
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
             <%        cn1.close();
                }
            
           
      catch( SQLException e){
               out.println(e.getMessage());
              }


           
              %>
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
	</body>
</html>
	


