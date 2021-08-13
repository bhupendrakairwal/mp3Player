<%-- 
    Document   : addcheck
    Created on : Aug 3, 2020, 10:06:14 PM
    Author     : Lenovo
--%>


<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %> 
<%   
    Cookie c[]=request.getCookies();
   String email=null;
  for(int i=0;i<c.length;i++){
  if(c[i].getName().equals("user")){
    email=c[i].getValue();
    break;
    
     }
  }  
    
    
    
   if(request.getParameter("Acode").length()==0 ||
           request.getParameter("Catcode").length()==0
            ){
    
    response.sendRedirect("addalbum.jsp?err=1");
    
    }
 else{ 
       try{
              
           String Acode=request.getParameter("Acode");
             String Catcode=request.getParameter("Catcode");
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
             cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             Statement st1=cn.createStatement();
             Statement st2=cn.createStatement();
             ResultSet rs1;
             rs1=st2.executeQuery("select * from userdata where email='"+email+"'");
             ResultSet rs=st.executeQuery("select MAX(sn) from list");
          int sn=0;
           if(rs.next()){
          sn=rs.getInt(1);
          }
         sn=sn+1;
         
          int status=1;
             
                 
              if(rs1.next()){
                       String ucode=rs1.getString(5);
                               
                  st1.execute("INSERT INTO list VALUES('"+sn+"','"+Acode+"','"+Catcode+"','"+email+"','"+status+"','"+ucode+"')");
              
             
                  } 
              
             cn.close(); 
             response.sendRedirect("playlist.jsp?Acode="+Acode+"&Catcode="+Catcode);
        } 
       
        
       
        
           catch(Exception e){
                               out.println(e.getMessage());
                       }
       
       
   }
    
    %>
