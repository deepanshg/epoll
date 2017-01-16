

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%
      
            Connection con = null;
            Statement smt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql:///poll", "root", "");
                smt=con.createStatement();
                
                

            } catch (Exception e) {
                out.println(e);

            }

        %>
        
       
</html>
