<%-- 
    Document   : addalbumcheck
    Created on : Jul 25, 2020, 9:26:59 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
   if(     request.getParameter("name").length()==0 ||
           request.getParameter("category").length()==0 ||
           request.getParameter("about").length()==0 )
     
    {
    response.sendRedirect("addalbum.jsp?err=1");
    
    }
    else{
        try{ 
              String album=request.getParameter("name");
             String cat=request.getParameter("category");
             String about=request.getParameter("about");
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
             cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             Statement st1=cn.createStatement();
              Statement st2=cn.createStatement();
             ResultSet rs=st.executeQuery("select MAX(sn) from album");
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
                String Acode="";
                for(int i=0;i<6;i++){
                    Acode +=l.get(i);
                
                }
                Acode=Acode+"_"+sn;
         
          int status=1;
          
        ResultSet rs1=st1.executeQuery("select * from category");
          while(rs1.next()){ // out.println(rs1.getString(3));
               if(cat.equals(rs1.getString(2))){
               String category=rs1.getString(3);
               String Ccode=rs1.getString(2);
              st2.execute("INSERT INTO album VALUES('"+sn+"','"+Acode+"','"+status+"','"+category+"','"+album+"','"+about+"','"+Ccode+"')");
                 }
              
          }
          cn.close();  
        response.sendRedirect("addimg.jsp?id="+Acode);
       
        }
    catch(Exception e){
               out.println(e.getMessage());
           }
    }    
    
    %>