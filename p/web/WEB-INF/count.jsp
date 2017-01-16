<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>

<%
  String idd=request.getParameter("id");
  String _no=request.getParameter("no");
  String optio=request.getParameter("op");
      int noo=Integer.parseInt(_no);
      int option=Integer.parseInt(optio);
      int _count=-1;
      String sql="select * from question where id='"+idd+"' and no="+noo;
      rs=smt.executeQuery(sql);
      while(rs.next())
      {
          _count=rs.getInt((option+9));
      }
      out.print(_count);
      _count=_count+1;
      
          String qry="update question set _count"+(option+1)+"="+_count+" where id='"+idd+"' and no="+noo ;
          smt.executeUpdate(qry);
        //          for(int i=0;i<4;i++)
        //          {
        //              out.print("10");
        //          }
         
          
             
          
          
          
            
%>