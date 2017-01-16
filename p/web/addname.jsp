<%-- 
    Document   : addname
    Created on : 24-Jul-2016, 02:10:53
    Author     : Deepansh
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
          String id=(String)session.getAttribute("id");  
            out.print(id);
            String name=request.getParameter("pollname");
            out.print("<br>"+name);
            String sql="insert into name(pollname,id) values ('"+name+"','"+id+"')";
            int r=smt.executeUpdate(sql);
            if(r>0)
            response.sendRedirect("addquestion.jsp");
            
        %>
</html>
