<%-- 
    Document   : logout
    Created on : Jul 27, 2020, 10:00:10 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.*"contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cookie c=new Cookie("user","null");
    c.setMaxAge(0);
    response.addCookie(c);
    response.sendRedirect("index.jsp");
 %>