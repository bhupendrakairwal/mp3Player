<%-- 
    Document   : registercheck
    Created on : Aug 3, 2020, 7:01:09 PM
    Author     : Lenovo
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    if(request.getParameter("name").length()==0 || 
            request.getParameter("email").length()==0 ||
            request.getParameter("password").length()==0 ||
            request.getParameter("cpassword").length()==0 
          )
    {
    response.sendRedirect("login.jsp?err=1");
    
    }
         String fullname=request.getParameter("name");
         String email=request.getParameter("email");
         String password=request.getParameter("password");
         String cpass=request.getParameter("cpassword");
    if(!password.equals(cpass))
       {
           response.sendRedirect("login.jsp?passnotmatch");
          }
    
    else{
        try{
        Class.forName("com.mysql.jdbc.Driver");
           Connection cn;
             cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
         Statement st=cn.createStatement();
           Statement st1=cn.createStatement();
         
           ResultSet rs=st1.executeQuery("select MAX(sn) from userdata");
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
                String ucode="";
                for(int i=0;i<6;i++){
                    ucode +=l.get(i);
                
                }
                ucode=ucode+""+sn;
         int status=1;
         
        
          st.execute("insert into userdata values('"+sn+"','"+fullname+"','"+email+"','"+password+"','"+ucode+"')");
          
         cn.close(); 
         request.getSession().setAttribute("email",email);
         request.getSession().setAttribute("pass", password);
         response.sendRedirect("/logincheck.jsp");
          
        }
        
    catch(Exception e){
               out.println(e.getMessage());
           }
    }    
    
    %>
    
    
