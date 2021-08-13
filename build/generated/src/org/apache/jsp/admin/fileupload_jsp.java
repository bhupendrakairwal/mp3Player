package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;

public final class fileupload_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String contentType = request.getContentType();
System.out.println("Content type is :: " + contentType);
String imageSave=null;
byte dataBytes[]=null;
String saveFile=null;
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
{
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
dataBytes = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength)
{
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}
String Acode=request.getParameter("id");
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
 saveFile = Acode+".jpg";
// out.print(dataBytes);
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1, contentType.length());
// out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
try
{
FileOutputStream fileOut = new FileOutputStream(request.getRealPath("/")+"/upload/"+saveFile);

// fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
imageSave="Success";
response.sendRedirect("addsongform.jsp?id="+Acode+"");
}catch (Exception e)
{
System.err.println ("Error writing to file");
imageSave="Failure";
}
}

      out.write("\n");
      out.write("<html>\n");
      out.write("<HEAD>\n");
      out.write("<META http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<META name=\"GENERATOR\" content=\"IBM WebSphere Studio\">\n");
      out.write("<TITLE>File Upload Success/Failure</TITLE>\n");
      out.write("<STYLE>\n");
      out.write("table {\n");
      out.write("border:1px solid #000;\n");
      out.write("border-collapse:collapse;\n");
      out.write("font-family:arial,sans-serif;\n");
      out.write("font-size:80%;\n");
      out.write("}\n");
      out.write("td,th{\n");
      out.write("border:1px solid #000;\n");
      out.write("border-collapse:collapse;\n");
      out.write("} \n");
      out.write("tbody td{\n");
      out.write("background:#999; \n");
      out.write("} \n");
      out.write("tbody th{\n");
      out.write("text-align:left;\n");
      out.write("background:#69c;\n");
      out.write("}\n");
      out.write("tfoot td{\n");
      out.write("text-align:center;\n");
      out.write("font-weight:bold;\n");
      out.write("background:#FFFFFF;\n");
      out.write("}\n");
      out.write("</STYLE>\n");
      out.write("</HEAD>\n");
      out.write("<body>\n");
      out.write("<table align=\"center\" width=\"300\" height=\"100\">\n");
      out.write("<tbody>\n");
      out.write("<tr>\n");
      out.write("<th width=\"85\">Image Name:</th>\n");
      out.write("<td width=\"60\">");
      out.print(saveFile);
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<th width=\"85\">No Of Bytes:</th>\n");
      out.write("<td width=\"60\">");
      out.print(dataBytes.length);
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<th width=\"85\">Image Save:</th>\n");
      out.write("<td width=\"60\">");
      out.print(imageSave);
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</tbody>\n");
      out.write("<tfoot>\n");
      out.write("<tr>\n");
      out.write("<td colspan=\"2\">\n");
      out.write("<a style=\"color:#FF0000;\" href=\"index.jsp\" title=\"File Upload\">File Upload</a>\n");
      out.write("  \n");
      out.write("<a style=\"color:#FF0000;\" href=\"javascript:window.close();\" title=\"Close Upload Window\">\n");
      out.write("Close Window\n");
      out.write("</a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</tfoot>\n");
      out.write("</table>\n");
      out.write("\n");

   String img=saveFile;
   out.println("<img src='"+img+"' width=300 height=200 title='"+img+"'>");
  
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
