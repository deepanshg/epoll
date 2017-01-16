<%-- 
    Document   : logout
    Created on : 04-Oct-2016, 02:05:56
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
          if(session.getAttribute("username")!=null)
            session.invalidate();
response.sendRedirect("/p/faces/index.jsp");%>
        
        
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
