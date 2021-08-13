<%-- 
    Document   : logincheck2
    Created on : Aug 3, 2020, 10:10:50 PM
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


if(email==null){
    if(request.getParameter("email")==null){
          response.sendRedirect("login.jsp");
    }
    
      
else 
{
    email=request.getParameter("email");
 }
}
if(request.getParameter("pass")==null){
   response.sendRedirect("login.jsp?pass.err=1");
}

else{
    String pass=request.getParameter("pass");
    try{
                Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select *from userdata where email='"+email+"' ");
             if(rs.next()){
                 if(pass.equals(rs.getString("Password"))){
                     Cookie ct=new Cookie("user",email);
                     ct.setMaxAge(3600);
                     response.addCookie(ct);
                     session.setAttribute(email,pass);
                     session.setMaxInactiveInterval(3600);
                     response.sendRedirect("index.jsp");
                   }
                 else{
                     response.sendRedirect("login.jsp?pass.invalid=1");
                 }
                     
             }
             else{
                 response.sendRedirect("login.jsp?email.err=1");
             }
             cn.close();
    } 
    catch(Exception e){
        out.println(e.getMessage());
        
    }
}
%>
