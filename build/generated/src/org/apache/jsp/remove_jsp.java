package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class remove_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write(" \n");
   
    Cookie c[]=request.getCookies();
   String email=null;
  for(int i=0;i<c.length;i++){
  if(c[i].getName().equals("user")){
    email=c[i].getValue();
    break;
    
     }
  }  
    
    
    
   if(request.getParameter("Acode").length()==0 ||
           request.getParameter("Catcode").length()==0
            ){
    
    response.sendRedirect("playlist.jsp?err=1");
    
    }
 else{ 
       try{
              
           String Acode=request.getParameter("Acode");
             String Catcode=request.getParameter("Catcode");
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
             cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             Statement st1=cn.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select * from userdata where email='"+email+"'");
         
         
             int status=0;
                  
              if(rs.next()){
                       String ucode=rs.getString(5);
                       st1.execute("update list set status=0 where ucode='"+ucode+"' and Acode='"+Acode+"' and Catcode='"+Catcode+"'");
                               
              
             
                  } 
              
             cn.close(); 
             response.sendRedirect("playlist.jsp?Acode="+Acode+"&Catcode="+Catcode);
        } 
       
        
       
        
           catch(Exception e){
                               out.println(e.getMessage());
                       }
       
       
   }
    
    
      out.write('\n');
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
