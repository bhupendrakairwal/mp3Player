<%-- 
    Document   : logout
    Created on : Aug 3, 2020, 6:56:57 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%   String email=null;
    Cookie ct=new Cookie("user",email);

    ct.setMaxAge(0);
    response.addCookie(ct);
    session.invalidate(); 
    response.sendRedirect("index.jsp");
   %>
