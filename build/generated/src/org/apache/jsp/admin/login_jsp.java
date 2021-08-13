package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
       response.sendRedirect("index.jsp");
   }
   else{
       
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("\t<title>Login</title>\n");
      out.write("\t<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />\n");
      out.write("\t<link rel=\"icon\" href=\"assets/img/icon.ico\" type=\"image/x-icon\"/>\n");
      out.write("\n");
      out.write("\t<!-- Fonts and icons -->\n");
      out.write("\t<script src=\"assets/js/plugin/webfont/webfont.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\tWebFont.load({\n");
      out.write("\t\t\tgoogle: {\"families\":[\"Open+Sans:300,400,600,700\"]},\n");
      out.write("\t\t\tcustom: {\"families\":[\"Flaticon\", \"Font Awesome 5 Solid\", \"Font Awesome 5 Regular\", \"Font Awesome 5 Brands\"], urls: ['assets/css/fonts.css']},\n");
      out.write("\t\t\tactive: function() {\n");
      out.write("\t\t\t\tsessionStorage.fonts = true;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("\t\n");
      out.write("\t<!-- CSS Files -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"assets/css/azzara.min.css\">\n");
      out.write("</head>\n");
      out.write("<body class=\"login\">\n");
      out.write("\t<div class=\"wrapper wrapper-login\">\n");
      out.write("\t\t<div class=\"container container-login animated fadeIn\">\n");
      out.write("\t\t\t<h3 class=\"text-center\">Sign In To Admin</h3>\n");
      out.write("                        <form action=\"logincheck.jsp\" method=\"post\">\n");
      out.write("                        <div class=\"login-form\">\n");
      out.write("                             ");

               if(email!=null){
               out.println(email);
               out.println("<br>");
               }
               else{
                   
      out.write("\n");
      out.write("\t\t\t\t<div class=\"form-group form-floating-label\">\n");
      out.write("\t\t\t\t\t<input name=\"email\" type=\"text\" class=\"form-control input-border-bottom\" required>\n");
      out.write("\t\t\t\t\t<label for=\"email\" class=\"placeholder\">Enter Email</label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                   ");

                       }

      out.write("\n");
      out.write("\t\t\t\t<div class=\"form-group form-floating-label\">\n");
      out.write("\t\t\t\t\t<input name=\"pass\" type=\"password\" class=\"form-control input-border-bottom\" required>\n");
      out.write("\t\t\t\t\t<label for=\"password\" class=\"placeholder\">Password</label>\n");
      out.write("\t\t\t\t\t<div class=\"show-password\">\n");
      out.write("\t\t\t\t\t\t<i class=\"flaticon-interface\"></i>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                  \n");
      out.write("\t\t\t\t<div class=\"row form-sub m-0\">\n");
      out.write("\t\t\t\t\t<div class=\"custom-control custom-checkbox\">\n");
      out.write("\t\t\t\t\t\t<input type=\"checkbox\" class=\"custom-control-input\" id=\"rememberme\">\n");
      out.write("\t\t\t\t\t\t<label class=\"custom-control-label\" for=\"rememberme\">Remember Me</label>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<a href=\"#\" class=\"link float-right\">Forget Password ?</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-action mb-3\">\n");
      out.write("                                    <input type=\"submit\"  value=\"Sign In\" class=\"btn btn-primary btn-rounded btn-login\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"login-account\">\n");
      out.write("\t\t\t\t\t<span class=\"msg\">Don't have an account yet ?</span>\n");
      out.write("\t\t\t\t\t<a href=\"#\" id=\"show-signup\" class=\"link\">Sign Up</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                        </form>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<div class=\"container container-signup animated fadeIn\">\n");
      out.write("\t\t\t<h3 class=\"text-center\">Sign Up</h3>\n");
      out.write("\t\t\t<div class=\"login-form\">\n");
      out.write("\t\t\t\t<div class=\"form-group form-floating-label\">\n");
      out.write("\t\t\t\t\t<input  id=\"fullname\" name=\"fullname\" type=\"text\" class=\"form-control input-border-bottom\" required>\n");
      out.write("\t\t\t\t\t<label for=\"fullname\" class=\"placeholder\">Fullname</label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group form-floating-label\">\n");
      out.write("\t\t\t\t\t<input  id=\"email\" name=\"email\" type=\"email\" class=\"form-control input-border-bottom\" required>\n");
      out.write("\t\t\t\t\t<label for=\"email\" class=\"placeholder\">Email</label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group form-floating-label\">\n");
      out.write("\t\t\t\t\t<input  id=\"passwordsignin\" name=\"pass\" type=\"password\" class=\"form-control input-border-bottom\" required>\n");
      out.write("\t\t\t\t\t<label for=\"passwordsignin\" class=\"placeholder\">Password</label>\n");
      out.write("\t\t\t\t\t<div class=\"show-password\">\n");
      out.write("\t\t\t\t\t\t<i class=\"flaticon-interface\"></i>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group form-floating-label\">\n");
      out.write("\t\t\t\t\t<input  id=\"confirmpassword\" name=\"confirmpassword\" type=\"password\" class=\"form-control input-border-bottom\" required>\n");
      out.write("\t\t\t\t\t<label for=\"confirmpassword\" class=\"placeholder\">Confirm Password</label>\n");
      out.write("\t\t\t\t\t<div class=\"show-password\">\n");
      out.write("\t\t\t\t\t\t<i class=\"flaticon-interface\"></i>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"row form-sub m-0\">\n");
      out.write("\t\t\t\t\t<div class=\"custom-control custom-checkbox\">\n");
      out.write("\t\t\t\t\t\t<input type=\"checkbox\" class=\"custom-control-input\" name=\"agree\" id=\"agree\">\n");
      out.write("\t\t\t\t\t\t<label class=\"custom-control-label\" for=\"agree\">I Agree the terms and conditions.</label>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-action\">\n");
      out.write("\t\t\t\t\t<a href=\"#\" id=\"show-signin\" class=\"btn btn-danger btn-rounded btn-login mr-3\">Cancel</a>\n");
      out.write("\t\t\t\t\t<a href=\"index.jsp\" class=\"btn btn-primary btn-rounded btn-login\">Sign Up</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<script src=\"assets/js/core/jquery.3.2.1.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/core/popper.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/core/bootstrap.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/ready.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");

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
