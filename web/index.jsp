<%-- 
    Document   : index
    Created on : Aug 3, 2020, 6:48:17 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.*" %>
<%   String email=null;     
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
     if(c[i].getName().equals("user")){
         email=c[i].getValue();
         break;
     }
 }
  
  if(email!=null&&session.getAttribute(email)!=null){
         response.sendRedirect("index2.jsp");
  
  }
     
  else{
      try{
     Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select * from category where status=1");
             
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
                  <style>
                      #name {
                          color:white
                      }
                  </style>
                  <style>
                      #name2 {
                          color:black
                      }
                  </style>
                   <script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="#">Specials</a></li>
						<li><a href="#">Artist</a></li>
						<li><a href="#">New Release</a></li>
					</ul>
				</div>
                            <!-- user name at header-->
				<div class="top-header-right">
				  <ul id="name">
                                    <li><a href="login.jsp" onClick="myFunction()" class="dropbtn">Login<i id="name2" class='fas fa-user-alt' style='font-size:20px'></i></a></li>    
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
                       <!--search -->
					<form method="post" action="test.jsp">
                                            <input type="text" name="song" placeholder="Search"><input type="submit" value="search"/>
					</form>
				</div>
				<div class="sub-header-right">
					<ul>
						<li><a href="login.jsp">Login</a></li>
                                                <li><a href="login.jsp">Create Playlist</a></li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
                     
			<div class="clear"> </div>
			<div class="top-nav">
                            <div class="nav">
                            <div class="sub-menu">
                      
                                   <ul class="sub_menu"> 
                                    
                                   <li class="active1"><a href="index.html">Home</a></li>
                             
                                      <%
                                         while(rs.next()){
                                              String Category_code=rs.getString(2);
                                              String Category=rs.getString(3);
                                        
                                    
                                    
                                    
                                    %>
                                   
                                      
                                    <li><a href="showalbum.jsp?Catcode=<%=Category_code%>"><%out.println(""+rs.getString(3)+"");%></a></li>
      
                                    <%
                                           }
                                        %>
			<!---end-top-header-->
                        
					
					                                        
                                  </ul>      
                        </div>
                        </div>
                                        
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
         String bollywood="bollywood";
      
           int id=0;
          /*if(request.getParameter("id").length()==0){
            id=Integer.parseInt(request.getParameter("id"));
               if(id<0){
                         id=0;
                          }
                 }*/
                       
                 int n=5 ;
                  int  start=id*n; 
                    int next=id+1;
                      int prev=id-1;
         
         
     Class.forName("com.mysql.jdbc.Driver");
             Connection cn1;
                     cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st1=cn1.createStatement();
             ResultSet rs1;
             rs1=st1.executeQuery("select * from album where category='"+bollywood+"' order by Rand() limit 5");
             
             %>
				<div class="content">
					<div class="products-box">
					<div class="products">
                                            
						<h5><span>Bollywood</span>  Albums</h5>
                                                <div class="section group">
                                                <%  
                                                    while(rs1.next()){
                                                            String Catcode=rs1.getString(7);
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
							<a class="button1" href="viewall.jsp?id=">view all</a>
						<div class="clear"> </div>
					</div>
                                            
                                            <%        cn1.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

      
           
              %>
	
              
              
              
							                                        <% 
    try{   
         String Hollywood="hollywood";
      
           int id=0;
          /*if(request.getParameter("id").length()==0){
            id=Integer.parseInt(request.getParameter("id"));
               if(id<0){
                         id=0;
                          }
                 }*/
                       
                 int n=5 ;
                  int  start=id*n; 
                    int next=id+1;
                      int prev=id-1;
         
         
     Class.forName("com.mysql.jdbc.Driver");
             Connection cn1;
                     cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st1=cn1.createStatement();
             ResultSet rs1;
             rs1=st1.executeQuery("select * from album where category='"+Hollywood+"' order by sn limit "+start+","+n);
             
             %>
				<div class="content">
					<div class="products-box">
					<div class="products">
                                            
						<h5><span>Hollywood</span>  Albums</h5>
                                                <div class="section group">
                                                <%  
                                                    while(rs1.next()){
                                                            String Catcode=rs1.getString(7);
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
							
                                            <div class="clear"> </div>
                                            <%        cn1.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

      
           
              %>
						<a class="button1" href="viewall.jsp?id=">view all</a>
						<div class="clear"> </div>
					</div>	
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
	</body>
</html>
<%        cn.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

}   
           
              %>


