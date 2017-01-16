

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%
      
            Connection con1 = null;
            Statement smt1 = null;
            ResultSet rs1 = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection("jdbc:mysql:///poll", "root", "");
                smt1=con1.createStatement();
                
                

            } catch (Exception e) {
                out.println(e);

            }

        %>
        
       
</html>
