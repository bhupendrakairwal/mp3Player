<%-- 
    Document   : mp3player
    Created on : Aug 3, 2020, 6:58:35 PM
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
              if(request.getParameter("Acode").length()==0){
                 
               response.sendRedirect("showalbum.jsp?Error");
              }
 else{
     try{      
          String Album_code=request.getParameter("Acode");
          String Catcode=request.getParameter("Catcode");
          Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             Statement st1=cn.createStatement();
             Statement st2=cn.createStatement();
             ResultSet rs;
             ResultSet rs1;
             ResultSet rs2;
             rs=st.executeQuery("select * from album where status=1 and Ccode='"+Catcode+"' and Acode='"+Album_code+"' ");
              
             
             %>                     
                         
             <div class="content">
					<div class="products-box">
					<div class="products">
                                        
						<h5><span>Songs</span></h5>
						<div class="section group">
                                                     <% 
                                               if(rs.next()){
                                                   String Acode=rs.getString(2);
                                                   String album=rs.getString(5);
                                                   String about=rs.getString(6);
                                                   rs1=st1.executeQuery("select * from song where Acode='"+Acode+"'");
                                                   
                                            
                                            %>
							
                                            <div class="grid_1_of_5 images_1_of_5">
                                                            <img src="upload/<%=Acode+".jpg"%>" width="180" height="180">
								 <h3><%out.println(""+rs.getString(5)+"");%></h3>
                                                                 <p><h3><%out.println(""+rs.getString(6)+"");%></h3>
 		  
                                            <div class="clear"> </div>
                                            </div><br><br><br>
                                            
              <%
               while(rs1.next()){
                   
                          rs2= st2.executeQuery("select * from song where status=1 and Acode='"+Album_code+"'");
                           if(rs2.next()){
                                         String Scode=rs2.getString(2);
                  
              %>                              
                                            
  <div class="album-tracks">
      <div class="col-sm-7">
     <div class="output-group col-sm-7">
                                     
                                       <table width=100% border=0 cellspacing=5>
                                                <tr>
                                                <list class="list-group">
                                                <ol>
                                                    <td style="font-size:25px"><p><li><%out.println(""+rs1.getString(5)+"");%></li></p></td><td><%out.println(""+rs1.getString(6)+"");%></td><td><%
    
           String S_code=request.getParameter("Scode");
            String mp3=S_code+".mp3";



%>
<audio controls>
  <!-- <source src="upload/<%=mp3%>" type="audio/ogg"> -->
  <source src="song/<%=mp3%>" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>
  </td><br>
                                                </tr>
                                                <ol>
                                                    </list>
                                              </table>
                                    </div>
        </div>
  </div>
                                                <%   
                       }
}
                                                %>
                                                   
                                                 
                                                   
                                                   
   <%
                                                            
                                                            }
                                                            

                                                            %>                                               
                                                           
				
                                                  </div>  
                                                <br>
						<a class="button1" href="#">View all</a>
						<div class="clear"> </div>
					</div>
         
                                                          
					
				</div>
			</div>
		</div>
             <%        cn.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }


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
	


