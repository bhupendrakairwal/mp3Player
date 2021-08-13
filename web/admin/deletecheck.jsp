<%-- 
    Document   : deletecheck
    Created on : Jul 25, 2020, 9:29:52 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.*" %>
<%Cookie c[]=request.getCookies();
   String email=null;
  for(int i=0;i<c.length;i++){
  if(c[i].getName().equals("user")){
    email=c[i].getValue();
    break;
    
     }
  } 
if(email==null&&session.getAttribute(email)==null){
       response.sendRedirect("index.jsp");
   }
else{
       
 try{   
        String id=request.getParameter("id");
            //int n=Integer.parseInt(request.getParameter("id"));
          Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
            // ResultSet rs;
             int rs=st.executeUpdate("delete from category where sn="+id);
            out.println(id);
             cn.close();
             response.sendRedirect("delete.jsp");    
 }
    catch(ClassNotFoundException e){
               out.println(e.getMessage());
              }
    
 }
%>

