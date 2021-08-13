<%-- 
    Document   : remove
    Created on : Aug 3, 2020, 7:02:38 PM
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
    
    response.sendRedirect("playlist.jsp?err=1");
    
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
             ResultSet rs;
             rs=st.executeQuery("select * from userdata where email='"+email+"'");
         
         
             int status=0;
                  
              if(rs.next()){
                       String ucode=rs.getString(5);
                       st1.execute("update list set status=0 where ucode='"+ucode+"' and Acode='"+Acode+"' and Catcode='"+Catcode+"'");
                               
              
             
                  } 
              
             cn.close(); 
             response.sendRedirect("playlist.jsp?Acode="+Acode+"&Catcode="+Catcode);
        } 
       
        
       
        
           catch(Exception e){
                               out.println(e.getMessage());
                       }
       
       
   }
    
    %>
