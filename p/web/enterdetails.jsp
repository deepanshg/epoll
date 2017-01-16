<%-- 
    Document   : checkemail
    Created on : 01-Oct-2016, 21:02:24
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<%
    try{
    String n=request.getParameter("name");
    String e=request.getParameter("email");
    String p=request.getParameter("pass");
    String ph=request.getParameter("phone");
    String sql="insert into user(name,email,password,phone) values('"+n+"','"+e+"','"+p+"','"+ph+"')";
    int r=smt.executeUpdate(sql);
    if(r>0)
    {
        session.setAttribute("username",n);
        session.setAttribute("email",e);
        out.print("<script>window.location =\"http://localhost:8080/p/faces/account.jsp \"</script>");
    }
    else
    {
         out.print("<script>window.location =\"http://localhost:8080/p/faces/index.jsp \"</script>");
    }}
    catch(Exception e)
    {
        out.print(e);
    }
    %>