package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class mp3player_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  \n");

    
   /* 
    if(request.getParameter("Acode").length()==0 ||
             request.getParameter("Scode").length()==0
             )
     {
         response.sendRedirect("showalbum.jsp?error");
         
     }
     else{
     
           String Acode=request.getParameter("Acode");
           String Scode=request.getParameter("Scode");
            
           String mp3=Scode+".mp3";


*/

      out.write("\n");
      out.write("<!--<audio controls>\n");
      out.write("    <source src=\"upload/");
//=mp3
      out.write("\" type=\"audio/ogg\">\n");
      out.write("  <source src=\"song/");
//=mp3
      out.write("\" type=\"audio/mpeg\">\n");
      out.write("  Your browser does not support the audio element. \n");
      out.write("</audio> -->\n");
      out.write("  ");

  
  
   //  }
  
      out.write("\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
    
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
             
      out.write("\n");
      out.write("             \n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t\t<title>Musicstore a Entertainment Category Flat Responsive web template | Home :: W3layouts</title>\n");
      out.write("\t\t<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"  media=\"all\" />\n");
      out.write("\t\t<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/responsiveslides.css\">\n");
      out.write("\t\t<script src=\"js/jquery.min.js\"></script>\n");
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
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\t\t<!---start-wrap--->\n");
      out.write("\t\t<div class=\"wrap\">\n");
      out.write("\t\t\t<!---start-header--->\n");
      out.write("\t\t\t<div class=\"header\">\n");
      out.write("\t\t\t<!---start-top-header--->\n");
      out.write("\t\t\t<div class=\"top-header\">\n");
      out.write("\t\t\t\t<div class=\"top-header-left\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Specials</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Delivery</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"top-header-right\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">CURRENCY:</a></li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<select>\n");
      out.write("\t\t\t\t\t\t\t\t<option>Dollar</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option>Euro</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option>Pound</option>\n");
      out.write("\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t<div class=\"sub-header\">\n");
      out.write("\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t<a href=\"index.html\"><img src=\"images/logo.png\" title=\"logo\" /></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"sub-header-center\">\n");
      out.write("\t\t\t\t\t<form>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\"><input type=\"submit\"  value=\"search\" />\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"sub-header-right\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">log in</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Your account</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">CART: (EMPTY) <img src=\"images/cart.png\" title=\"cart\" /></a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("  \n");
      out.write("\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t<div class=\"top-nav\">\n");
      out.write("                      \n");
      out.write("                                   <ul class=\"list-group\"> \n");
      out.write("                                    \n");
      out.write("                                   <li class=\"active1\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                          ");

                                             String Category=" ";
                                          
      out.write("\n");
      out.write("                             \n");
      out.write("                                     ");

                                         if(rs.next()){
                                              Category=rs.getString(3);
                                    
                                    
                                    
                                    
      out.write("\n");
      out.write("                                    <li class=\"list-group-item\"><a href=\"showalbum.jsp?Catcode=");
      out.print(Cat_code);
      out.write('"');
      out.write('>');
out.println(Category);
      out.write("</a></li>\n");
      out.write("                                        \n");
      out.write("                                    ");

                                           }

                                        
      out.write("\n");
      out.write("\t\t\t<!---end-top-header-->\n");
      out.write("                        ");
        cn.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

}
           
              
      out.write("\n");
      out.write("                    </ul>      \n");
      out.write("                                        \n");
      out.write("                           <div class=\"clear\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                                     ->\n");
      out.write("\t\t\t<!---End-header--->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\n");
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
      out.write("          ");

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
              
             
             
      out.write("                     \n");
      out.write("                         \n");
      out.write("             <div class=\"content\">\n");
      out.write("\t\t\t\t\t<div class=\"products-box\">\n");
      out.write("\t\t\t\t\t<div class=\"products\">\n");
      out.write("                                        \n");
      out.write("\t\t\t\t\t\t<h5><span>Songs</span></h5>\n");
      out.write("\t\t\t\t\t\t<div class=\"section group\">\n");
      out.write("                                                     ");
 
                                               if(rs.next()){
                                                   String Acode=rs.getString(2);
                                                   String album=rs.getString(5);
                                                   String about=rs.getString(6);
                                                   rs1=st1.executeQuery("select * from song where Acode='"+Acode+"'");
                                                   
                                            
                                            
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                            <div class=\"grid_1_of_5 images_1_of_5\">\n");
      out.write("                                                            <img src=\"upload/");
      out.print(Acode+".jpg");
      out.write("\" width=\"180\" height=\"180\">\n");
      out.write("\t\t\t\t\t\t\t\t <h3>");
out.println(""+rs.getString(5)+"");
      out.write("</h3>\n");
      out.write("                                                                 <p><h3>");
out.println(""+rs.getString(6)+"");
      out.write("</h3>\n");
      out.write(" \t\t  \n");
      out.write("                                            <div class=\"clear\"> </div>\n");
      out.write("                                            </div><br><br><br>\n");
      out.write("                                            \n");
      out.write("              ");

               while(rs1.next()){
                   
                          rs2= st2.executeQuery("select * from song where status=1 and Acode='"+Album_code+"'");
                           if(rs2.next()){
                                         String Scode=rs2.getString(2);
                  
              
      out.write("                              \n");
      out.write("                                            \n");
      out.write("  <div class=\"album-tracks\">\n");
      out.write("      <div class=\"col-sm-7\">\n");
      out.write("     <div class=\"output-group col-sm-7\">\n");
      out.write("                                     \n");
      out.write("                                       <table width=100% border=0 cellspacing=5>\n");
      out.write("                                                <tr>\n");
      out.write("                                                <list class=\"list-group\">\n");
      out.write("                                                <ol>\n");
      out.write("                                                    <td style=\"font-size:25px\"><p><li>");
out.println(""+rs1.getString(5)+"");
      out.write("</li></p></td><td>");
out.println(""+rs1.getString(6)+"");
      out.write("</td><td>");

    
           String S_code=request.getParameter("Scode");
            String mp3=S_code+".mp3";




      out.write("\n");
      out.write("<audio controls>\n");
      out.write("    <!--<source src=\"upload/");
      out.print(mp3);
      out.write("\" type=\"audio/ogg\">  -->\n");
      out.write("  <source src=\"song/");
      out.print(mp3);
      out.write("\" type=\"audio/mpeg\">\n");
      out.write("  Your browser does not support the audio element.\n");
      out.write("</audio>\n");
      out.write("  </td><br>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <ol>\n");
      out.write("                                                    </list>\n");
      out.write("                                              </table>\n");
      out.write("                                    </div>\n");
      out.write("        </div>\n");
      out.write("  </div>\n");
      out.write("                                                ");
   
                       }
}
                                                
      out.write("\n");
      out.write("                                                   \n");
      out.write("                                                 \n");
      out.write("                                                   \n");
      out.write("                                                   \n");
      out.write("   ");

                                                            
                                                            }
                                                            

                                                            
      out.write("                                               \n");
      out.write("                                                           \n");
      out.write("\t\t\t\t\n");
      out.write("                                                  </div>  \n");
      out.write("                                                <br>\n");
      out.write("\t\t\t\t\t\t<a class=\"button1\" href=\"#\">View all</a>\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("         \n");
      out.write("                                                          \n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("             ");
        cn.close();
                }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }


}        
              
      out.write("\n");
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
      out.write("\t</body>\n");
      out.write("</html>\n");
      out.write("\t\n");
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
