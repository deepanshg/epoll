<%-- 
    Document   : retrive
    Created on : 14-Jul-2016, 20:29:07
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="java.net.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    
    <%
        
         String sb = request.getQueryString();
         String u=sb.toString();
    //     URL url=new URL(u);
         out.print(sb+"<br>"+"<br>");
             
             
        String[] option=new String[5];
        String question;
        try{
            String sql="select * from question where _question='hi'";
            rs=smt.executeQuery(sql);
            while(rs.next())
            {
                int l;
                
                question=rs.getString("_question");
                for(l=0;l<5;l++)
                {
                    String p=rs.getString(l+2);
                    if(!p.equals(""))
                    {
                        option[l]=p;
                    }
                    else{
                        break;
                    }
                }
                for(int i=0;i<l;i++)
                {
                    out.print(option[i]);
                }
                
                
                
            out.print(question);    
            }
            
            
            out.print("<form action=\"ss.jsp\" method=\"GET\">"+
                  "<br>"+
                    "<input type = \"radio\" name = \"Q1\" value=\"0\"\">"+option[0]+
                    "<input type = \"radio\" name = \"Q1\" value=\"1\"\">"+option[1]+
                    "<input type=\"SUBMIT\" value=\"submit\""
                                        
            );
            
            
          //  String ss=request.getRequestURL();
                  

            
        }
        
        catch(Exception e)
        {
            out.print(e+"ERROR");
        }
       /* 
        String sql="select * fom question";
        rs=smt.executeQuery(sql);
            while(rs.next())
            {
                String r=rs.getString("_question");
                out.print(r);
            }
        */
        %>
    
</html>
