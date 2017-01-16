<%-- 
    Document   : creation
    Created on : 16-Jul-2016, 02:00:42
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="random.ran"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>
<%@include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="exter.css" rel="stylesheet"/>
        <title>Create Poll</title>
    </head>
     <%
         
         String _na=(String)session.getAttribute("username");
                          if(_na==null)
                          {response.sendRedirect("/p/faces/login.jsp");
                          }
      
        
        ran ob=new ran();
        String r=ob.nextSessionId();
        String link="addquestion.jsp?pollpage="+r;
        session.setAttribute("id",r);  
        
        out.print(link);    
        %>      
        <body>        
     <div style="border:0px tomato solid;height:500px;width: 1000px;margin-left: 60px;margin-top: 100px;float:left">
           <ul>
            <li class="nostyle">
                <h2><b>Name Of Poll</b></h2>
            </li>
        
        <form action="addname.jsp" method="POST">
   
            <input type="text" name="pollname"  >&nbsp;&nbsp;
        
        
    <input type="submit" value="Create Poll" id="j">
        
    </form>
                
           </ul>
                </div>
        </body>
</html>
