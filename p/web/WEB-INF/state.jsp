<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>

<%
 // String idd=request.getParameter("id1");
  String idd="9a1r7h";
out.print("HELLO");

      String sql="select * from link where id='"+idd+"'";  
      rs=smt.executeQuery(sql);
      int s=1;
      while(rs.next())
      {
          s=rs.getInt("state");
      }
      out.print(s);
      if(s==0)
      {
          s=1;
      }
      else
      {
          s=0;
      }
       out.print(s);      
          String qry="update link set state="+s+" where id='"+idd+"'";
          int r=smt.executeUpdate(qry);
          
          
            
%>