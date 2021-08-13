package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
  String email=null;     
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
                   
             
      out.write("\n");
      out.write("\n");
      out.write("             ");
 
    try{
     Class.forName("com.mysql.jdbc.Driver");
             Connection cns;
                     cns=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select * from category where status=1");
             
             
      out.write("\n");
      out.write("             \n");
      out.write("             <!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t\t<title>Musicstore a Entertainment Category Flat Responsive web template | Home :: W3layouts</title>\n");
      out.write("\t\t<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"  media=\"all\" />\n");
      out.write("\t\t<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/responsiveslides.css\">\n");
      out.write("\t\t<script src=\"js/jquery.min.js\"></script>\n");
      out.write("                <script src='https://kit.fontawesome.com/a076d05399.js'></script>\n");
      out.write("\t\t<script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("\t\t  <script>\n");
      out.write("\t\t    // You can also use \"$(window).load(function() {\"\n");
      out.write("\t\t\t    $(function () {\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t      // Slideshow 1\n");
      out.write("\t\t\t      $(\"#slider1\").responsiveSlides({\n");
      out.write("\t\t\t        maxwidth: 1600,\n");
      out.write("\t\t\t        speed: 600\n");
      out.write("\t\t\t      });\n");
      out.write("\t\t\t});\n");
      out.write("\t\t  </script>\n");
      out.write("                   <style>\n");
      out.write("                      #name {\n");
      out.write("                          color:white\n");
      out.write("                      }\n");
      out.write("                  </style>\n");
      out.write("                  <style>\n");
      out.write("                      #name2 {\n");
      out.write("                          color:black\n");
      out.write("                      }\n");
      out.write("                      #font{\n");
      out.write("                          font-size: 20px;\n");
      out.write("                      }\n");
      out.write("                  </style>\n");
      out.write("                  <script src='https://kit.fontawesome.com/a076d05399.js'></script>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<style>\n");
      out.write(".dropbtn {\n");
      out.write("  background-color: red;\n");
      out.write("  color: white;\n");
      out.write("  padding: 16px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropbtn:hover, .dropbtn:focus {\n");
      out.write("  background-color: red;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown {\n");
      out.write("  position: relative;\n");
      out.write("  display: inline-block;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content {\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  background-color: black;\n");
      out.write("  min-width: 160px;\n");
      out.write("  overflow: auto;\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("  z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a {\n");
      out.write("  color: black;\n");
      out.write("  padding: 12px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown a:hover {background-color: red;}\n");
      out.write("\n");
      out.write(".show {display: block;}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\t\t<!---start-wrap--->\n");
      out.write("\t\t<div class=\"wrap\">\n");
      out.write("                    \n");
      out.write("\t\t\t<!---start-header--->\n");
      out.write("\t\t\t<div class=\"header\">\n");
      out.write("\t\t\t<!---start-top-header--->\n");
      out.write("                      \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t<div class=\"top-header\">\n");
      out.write("                            <div class=\"top-header-left\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Specials</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Artist</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">New Release</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                               \n");
      out.write("\t\t\t\t<div class=\"top-header-right\">\n");
      out.write("                                    <div class=\"dropdown\">\n");
      out.write("\t\t\t\t  <ul id=\"name\" class=\"dropdown\">\n");
      out.write("                                    <li>Welcome ! ");
out.println(""+ers.getString(2)+"");
      out.write("&nbsp;</li>\n");
      out.write("                                   <li><a onClick=\"myFunction()\" class=\"dropbtn\"><i id=\"name2\" class='fas fa-user-alt' style='font-size:20px'></i></a></li>\n");
      out.write("                                  </ul>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                   <div  id=\"myDropdown\" class=\"dropdown-content\">\n");
      out.write("                                              <a id=\"name\" href=\"index.jsp\">Home</a>\n");
      out.write("                                              <a id=\"name\" href=\"#about\">About</a>\n");
      out.write("                                              <a id=\"name\" href=\"logout.jsp\">Logout</a>\n");
      out.write("                                            </div>\n");
      out.write("                                 \n");
      out.write("\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                                      \n");
      out.write("\t       \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t<div class=\"sub-header\">\n");
      out.write("\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t<a href=\"index.html\"><img src=\"images/logo.png\" title=\"logo\" /></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"sub-header-center\">\n");
      out.write("                       <!--search -->\n");
      out.write("\t\t\t\t\t<form method=\"post\" action=\"test.jsp\">\n");
      out.write("                                            <input type=\"text\" name=\"song\" placeholder=\"Search\"><input type=\"submit\" value=\"search\"/>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"sub-header-right\">\n");
      out.write("\t\t\t\t\t<ul id=\"font\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">favourits</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"playlist.jsp\">Playlist</a></li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("          \t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t<div class=\"top-nav\">\n");
      out.write("                            <div class=\"nav\">\n");
      out.write("                            <div class=\"sub-menu\">\n");
      out.write("                      \n");
      out.write("                                   <ul class=\"sub_menu\"> \n");
      out.write("                                    \n");
      out.write("                                   <li class=\"active1\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                            ");
 
                                         while(rs.next()){
                                              String Category_code=rs.getString(2);
                                              String Category=rs.getString(3);
                                        
                                    
                                    
                                    
                                    
      out.write("\n");
      out.write("                                   \n");
      out.write("                                      \n");
      out.write("     \n");
      out.write("  \n");
      out.write("             \n");
      out.write("                                    \n");
      out.write("                                    <li> <a href=\"showalbum.jsp?Catcode=");
      out.print(Category_code);
      out.write('"');
      out.write('>');
out.println(""+rs.getString(3)+"");
      out.write("</a></li>\n");
      out.write("      \n");
      out.write("                                    ");

                                           }
                                        
      out.write("\n");
      out.write("\t\t\t<!---end-top-header-->\n");
      out.write("                             \n");
      out.write("\t\t\t\t\t                                        \n");
      out.write("                                  </ul> \n");
      out.write("                                \n");
      out.write("                               \n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                                        \n");
      out.write("                           <div class=\"clear\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                                     ->\n");
      out.write("\t\t\t<!---End-header--->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t<!--start-image-slider---->\n");
      out.write("\t\t\t\t\t<div class=\"image-slider\">\n");
      out.write("\t\t\t\t\t\t<!-- Slideshow 1 -->\n");
      out.write("\t\t\t\t\t    <ul class=\"rslides\" id=\"slider1\">\n");
      out.write("\t\t\t\t\t      <li><img src=\"images/slider1.jpg\" alt=\"\"></li>\n");
      out.write("\t\t\t\t\t      <li><img src=\"images/slider3.jpg\" alt=\"\"></li>\n");
      out.write("\t\t\t\t\t      <li><img src=\"images/slider1.jpg\" alt=\"\"></li>\n");
      out.write("\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t\t <!-- Slideshow 2 -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!--End-image-slider---->\n");
      out.write("                                        ");
 
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
             
             
      out.write("\n");
      out.write("\t\t\t\t<div class=\"content\">\n");
      out.write("\t\t\t\t\t<div class=\"products-box\">\n");
      out.write("\t\t\t\t\t<div class=\"products\">\n");
      out.write("                                            \n");
      out.write("\t\t\t\t\t\t<h5><span>Bollywood</span>  Albums</h5>\n");
      out.write("                                                <div class=\"section group\">\n");
      out.write("                                                ");
  
                                                    while(rs1.next()){
                                                            String Catcode=rs1.getString(7);
                                                            String Acode=rs1.getString(2);
                     
                                                            
                                                
                                                
                                                
                                                
      out.write("\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                <div class=\"grid_1_of_5 images_1_of_5\">\n");
      out.write("                                                    \n");
      out.write("                                                            <img src=\"upload/");
      out.print(Acode+".jpg");
      out.write("\" width=\"180\" height=\"180\">\n");
      out.write("\t\t\t\t\t\t\t\t <h3>");
out.println(""+rs1.getString(5)+"");
      out.write("</h3>\n");
      out.write("                                                                 <p><h3>");
out.println(""+rs1.getString(6)+"");
      out.write("</h3>\n");
      out.write("                                                                 <div class=\"button\"><span><a href=\"showsongs.jsp?Acode=");
      out.print(Acode);
      out.write("&Catcode=");
      out.print(Catcode);
      out.write("\">Play</a></span></div>\n");
      out.write("                                                                 <div class=\"button\"><span><a href=\"addcheck.jsp?Acode=");
      out.print(Acode);
      out.write("&Catcode=");
      out.print(Catcode);
      out.write("\">Add to playlist</a></span></div>\n");
      out.write("\t\t\t\t\t\t \n");
      out.write("                                                  \n");
      out.write("                                                  </div>\n");
      out.write("                                                    ");

                                                    
                                                    }
                                                    
      out.write(" \n");
      out.write("\t\t\t\t\t\t\t<a class=\"button1\" href=\"viewall.jsp?id=\">view all</a>\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                            \n");
      out.write("                                            ");
        cn1.close();
                }
           
      catch(SQLException e){
               out.println(e.getMessage());
              }


           
              
      out.write("\n");
      out.write("\t\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("\t\t\t\t\t\t\t                                        ");
 
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
             
             
      out.write("\n");
      out.write("\t\t\t\t<div class=\"content\">\n");
      out.write("\t\t\t\t\t<div class=\"products-box\">\n");
      out.write("\t\t\t\t\t<div class=\"products\">\n");
      out.write("                                            \n");
      out.write("\t\t\t\t\t\t<h5><span>Hollywood</span>  Albums</h5>\n");
      out.write("                                                <div class=\"section group\">\n");
      out.write("                                                ");
  
                                                    while(rs1.next()){
                                                            String Catcode=rs1.getString(7);
                                                            String Acode=rs1.getString(2);
                     
                                                            
                                                
                                                
                                                
                                                
      out.write("\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                <div class=\"grid_1_of_5 images_1_of_5\">\n");
      out.write("                                                    \n");
      out.write("                                                            <img src=\"upload/");
      out.print(Acode+".jpg");
      out.write("\" width=\"180\" height=\"180\">\n");
      out.write("\t\t\t\t\t\t\t\t <h3>");
out.println(""+rs1.getString(5)+"");
      out.write("</h3>\n");
      out.write("                                                                 <p><h3>");
out.println(""+rs1.getString(6)+"");
      out.write("</h3>\n");
      out.write("                                                                 <div class=\"button\"><span><a href=\"showsongs.jsp?Acode=");
      out.print(Acode);
      out.write("&Catcode=");
      out.print(Catcode);
      out.write("\">Play</a></span></div>\n");
      out.write("                                                                 <div class=\"button\"><span><a href=\"addcheck.jsp?Acode=");
      out.print(Acode);
      out.write("&Catcode=");
      out.print(Catcode);
      out.write("\">Add to playlist</a></span></div>\n");
      out.write("\t\t\t\t\t\t  </div>\n");
      out.write("                                                    ");

                                                    
                                                    }
                                                    
      out.write(" \n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                            <div class=\"clear\"> </div>\n");
      out.write("                                            ");
        cn1.close();
                }
            
           
      catch( SQLException e){
               out.println(e.getMessage());
              }

      
           
              
      out.write("\n");
      out.write("\t\t\t\t\t\t<a class=\"button1\" href=\"viewall.jsp?id=\">view all</a>\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("                                                </div>\n");
      out.write("\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t<div class=\"footer\">\n");
      out.write("\t\t\t\t<div class=\"wrap\">\n");
      out.write("\t\t\t\t<div class=\"section group\">\n");
      out.write("\t\t\t\t<div class=\"col_1_of_4 span_1_of_4\">\n");
      out.write("\t\t\t\t\t<h3>INFORMATION</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">About us</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Sitemap</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Terms and conditions</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Legal Notice</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col_1_of_4 span_1_of_4\">\n");
      out.write("\t\t\t\t\t<h3>OUR OFFERS</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">New products</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">top sellers</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Specials</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Products</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Comments</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col_1_of_4 span_1_of_4\">\n");
      out.write("\t\t\t\t\t<h3>YOUR ACCOUNT</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Your Account</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Personal info</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Prices</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Address</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Locations</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col_1_of_4 span_1_of_4 footer-lastgrid\">\n");
      out.write("\t\t\t\t\t<h3>Get in touch</h3>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><img src=\"images/facebook.png\" title=\"facebook\" /></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><img src=\"images/twitter.png\" title=\"Twiiter\" /></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><img src=\"images/rss.png\" title=\"Rss\" /></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><img src=\"images/gpluse.png\" title=\"Google+\" /></a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t<p>&copy; 2013 Musicstore. All Rights Reserved | Design by <a href=\"#\">W3layouts</a></p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!---End-wrap--->\n");
      out.write("           \n");
      out.write("                <script>\n");
      out.write("\n");
      out.write("/* When the user clicks on the button, \n");
      out.write("toggle between hiding and showing the dropdown content */\n");
      out.write("function myFunction() {\n");
      out.write("  document.getElementById(\"myDropdown\").classList.toggle(\"show\");\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Close the dropdown if the user clicks outside of it\n");
      out.write("window.onclick = function(event) {\n");
      out.write("  if (!event.target.matches('.dropbtn')) {\n");
      out.write("    var dropdowns = document.getElementsByClassName(\"dropdown-content\");\n");
      out.write("    var i;\n");
      out.write("    for (i = 0; i < dropdowns.length; i++) {\n");
      out.write("      var openDropdown = dropdowns[i];\n");
      out.write("      if (openDropdown.classList.contains('show')) {\n");
      out.write("        openDropdown.classList.remove('show');\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\t</body>\n");
      out.write("</html>\n");
        cns.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

      
           
              
      out.write("\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
                  
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
              
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
