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
    String s=request.getParameter("vala");
    String sql1="select * from user where phone='"+s+"'";
        rs=smt.executeQuery(sql1);
            int t=0;
            while(rs.next())
            {       
                t++;
                out.print("Phone already registered");
                break;
                
            }
            if(t==0)
            {
                out.print("");
            }
    %>