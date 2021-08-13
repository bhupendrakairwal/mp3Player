<%-- 
    Document   : searchcheck
    Created on : Aug 3, 2020, 7:03:29 PM
    Author     : Lenovo
--%>

 <%@page import="java.sql.*" %>
<%
    if(request.getParameter("song").length()==0){
          
        response.sendRedirect("index.jsp?error=1");
        

    }
    
    else{
        
    try{    
        
             String name=request.getParameter("song");

                 Class.forName("com.mysql.jdbc.Driver");
             Connection cn;
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
             Statement st=cn.createStatement();
             ResultSet rs;
            
            rs=st.executeQuery("select * from song where status=1 and sname='"+name+"' ");
            if(rs.next()){  
                             String Acode=rs.getString(3);
                             String Scode=rs.getString(2);
                             String About=rs.getString(6);
                             String Song=rs.getString(5);
                                %>
                            <html>
                                <head></head>
                                <body>
                                    <%
                                         out.println(Song);
                                    
                                    }


  else{
               out.println("errordb");


}
                                    %>
                                    </body>
                                
                            </html>
                                
                                
                                
                                <%
                

              cn.close();  
                
        }
            
           
      catch(SQLException e){
               out.println(e.getMessage());
              }

      
    
    }



%>
