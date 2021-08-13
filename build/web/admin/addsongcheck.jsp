<%-- 
    Document   : addsongcheck
    Created on : Jul 25, 2020, 9:21:54 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%   
    if(     request.getParameter("id").length()==0 ||
            request.getParameter("Sname").length()==0 ||
           request.getParameter("about").length()==0 )
     
    {
    response.sendRedirect("addsongform.jsp?err=1");
    
    }
    else{
        try{ String  Acode=request.getParameter("id");
             String  sname=request.getParameter("Sname");
             String about=request.getParameter("about");
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
             cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs=st.executeQuery("select MAX(sn) from song");
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
                String Scode="";
                for(int i=0;i<6;i++){
                    Scode +=l.get(i);
                
                }
                Scode=Scode+"_"+sn;
         
          int status=1;
              st.execute("INSERT INTO song VALUES('"+sn+"','"+Scode+"','"+Acode+"','"+status+"','"+sname+"','"+about+"')");
                 
         
          cn.close();  
         response.sendRedirect("addsong.jsp?id="+Scode+"&id1="+Acode+"");
         }
    catch(Exception e){
               out.println(e.getMessage());
           }
    }    
    
    %>
