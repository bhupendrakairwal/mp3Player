<%-- 
    Document   : test1
    Created on : Aug 3, 2020, 10:05:27 PM
    Author     : Lenovo
--%>

<%
  /* if( request.getParameter("id").length()==0 ||
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
   
   }*/
      String email=null;
    if(email==null&&session.getAttribute(email)==null){
       response.sendRedirect("login.jsp");
   }
    else{
              out.println(email);
    
    
    }
    
out.println("error");
   %>
