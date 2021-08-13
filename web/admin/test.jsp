<%-- 
    Document   : test
    Created on : Jul 25, 2020, 9:43:33 PM
    Author     : Lenovo
--%>

<%
   if( request.getParameter("id").length()==0 ||
           request.getParameter("Sname").length()==0 ||
           request.getParameter("about").length()==0 )
     {
    out.println("error");
   }
   else{
      String album=request.getParameter("id");
             String category=request.getParameter("Sname");
             String about=request.getParameter("about");
       
        out.println(album);
        out.println(category);
        out.println(about);
   
   }
   %>