<%-- 
    Document   : ss
    Created on : 15-Jul-2016, 15:09:09
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String q=request.getParameter("0");
        String ques=request.getParameter("_question");
        out.print("Gdg"+q+ques);
        
        %>
</html>
