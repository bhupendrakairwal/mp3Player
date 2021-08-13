<%-- 
    Document   : addcheck
    Created on : Jul 25, 2020, 9:16:56 PM
    Author     : Lenovo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
   if(     request.getParameter("category").length()==0 
           
          )
     
    {
    response.sendRedirect("addcat.jsp?err=1");
    
    }
    else{
        try{
        Class.forName("com.mysql.jdbc.Driver");
           Connection cn;
             cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
         Statement st=cn.createStatement();
         
           ResultSet rs=st.executeQuery("select MAX(sn) from category");
          int sn=0;
           if(rs.next()){
          sn=rs.getInt(1);
          }
         sn=sn+1;
         LinkedList l=new LinkedList();
         for(char c='A';c<='Z';c++){
             l.add(c+"");
         }
         for(char c='a';c<='z';c++){
             l.add(c+"");
         }
         for(int i=0;i<=9;i++){
                l.add(i);
         }
         Collections.shuffle(l);
                String Code="";
                for(int i=0;i<6;i++){
                    Code +=l.get(i);
                
                }
                Code=Code+"_"+sn;
         int status=1;
    
         String category=request.getParameter("category");
         Statement st1=cn.createStatement();
         st.execute("INSERT INTO category VALUES('"+sn+"','"+Code+"','"+category+"','"+status+"')");
          
         cn.close();  
         response.sendRedirect("addcat.jsp");
          
        }
    catch(Exception e){
               out.println(e.getMessage());
           }
    }    
    
    %>