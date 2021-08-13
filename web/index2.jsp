<%-- 
    Document   : index2
    Created on : Aug 3, 2020, 6:51:01 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.*" %>
<%  String email=null;     
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
     if(c[i].getName().equals("user")){
         email=c[i].getValue();
         break;
     }
 }
  
 if(email!=null&&session.getAttribute(email)!=null){
      
    try{ 
        
     Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement est=cn.createStatement();
             ResultSet ers;
            
             ers=est.executeQuery("select * from userdata where email='"+email+"'");             
              
               if(ers.next()){
                   
             %>

             <% 
    try{
     Class.forName("com.mysql.jdbc.Driver");
             Connection cns;
                     cns=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
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
                <script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
                      #font{
                          font-size: 20px;
                      }
                  </style>
                  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.dropbtn {
  background-color: red;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: red;
}

.dropdown {
  position: relative;
  display: inline-block;
  
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: red;}

.show {display: block;}
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
					<ul>
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Specials</a></li>
						<li><a href="#">Artist</a></li>
						<li><a href="#">New Release</a></li>
					</ul>
				</div>
                               
				<div class="top-header-right">
                                    <div class="dropdown">
				  <ul id="name" class="dropdown">
                                    <li>Welcome ! <%out.println(""+ers.getString(2)+"");%>&nbsp;</li>
                                   <li><a onClick="myFunction()" class="dropbtn"><i id="name2" class='fas fa-user-alt' style='font-size:20px'></i></a></li>
                                  </ul>
						
				</div>
                                   <div  id="myDropdown" class="dropdown-content">
                                              <a id="name" href="index.jsp">Home</a>
                                              <a id="name" href="#about">About</a>
                                              <a id="name" href="logout.jsp">Logout</a>
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
					<ul id="font">
						<li><a href="#">favourits</a></li>
						<li><a href="playlist.jsp">Playlist</a></li>
						
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
                                   
                                      
     
  
             
                                    
                                    <li> <a href="showalbum.jsp?Catcode=<%=Category_code%>"><%out.println(""+rs.getString(3)+"");%></a></li>
      
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
                                                                 <div class="button"><span><a href="addcheck.jsp?Acode=<%=Acode%>&Catcode=<%=Catcode%>">Add to playlist</a></span></div>
						 
                                                  
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
                                                                 <div class="button"><span><a href="addcheck.jsp?Acode=<%=Acode%>&Catcode=<%=Catcode%>">Add to playlist</a></span></div>
						  </div>
                                                    <%
                                                    
                                                    }
                                                    %> 
							
                                            <div class="clear"> </div>
                                            <%        cn1.close();
                }
            
           
      catch( SQLException e){
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

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
	</body>
</html>
<%        cns.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

      
           
              %>
              
              
              
<%                  
               cn.close();
           }           
            
}
       catch( SQLException e){
               out.println(e.getMessage());
              
    }

}
else {


      response.sendRedirect("index.jsp");
  }    
              %>



