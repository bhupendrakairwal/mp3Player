package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class logincheck_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 
   Cookie c[]=request.getCookies();
   String email=null;
  for(int i=0;i<c.length;i++){
  if(c[i].getName().equals("user")){
    email=c[i].getValue();
    break;
    
     }
  }     
      String pass=null;
       email = (String)request.getSession().getAttribute("email");
        pass = (String)request.getSession().getAttribute("pass");

                

  /*if(email==null){
    if(request.getParameter("email")==null){
          response.sendRedirect("login.jsp");
    }
    
      
else 
{
    email=request.getParameter("email");
 }
}
if(request.getParameter("pass")==null){
   response.sendRedirect("login.jsp?pass.err=1");
}*/
//else{
    //String pass=request.getParameter("pass");
    try{
                Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select *from userdata where email='"+email+"' ");
             if(rs.next()){
                 if(pass.equals(rs.getString("Password"))){
                     Cookie ct=new Cookie("user",email);
                     ct.setMaxAge(3600);
                     response.addCookie(ct);
                     session.setAttribute(email,pass);
                     session.setMaxInactiveInterval(3600);
                     response.sendRedirect("index2.jsp");
                   }
                 else{
                     response.sendRedirect("login.jsp?pass.invalid=1");
                 }
                     
             }
             else{
                 response.sendRedirect("login.jsp?email.err=1");
             }
             cn.close();
    } 
    catch(Exception e){
        out.println(e.getMessage());
        
    }
//}

      out.write('\n');
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
