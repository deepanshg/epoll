<%-- 
    Document   : fill
    Created on : 24-Jul-2016, 03:34:31
    Author     : Deepansh
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>
<%@include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        
       
        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FILL</title>
        	<style>
	#xaxis .domain {
		fill:none;
		stroke:#000;
	}
	#xaxis text, #yaxis text {
		font-size: 12px;
	}
        
        th,td{
            padding: 5px;
        }
	</style>
        
        
        
        
        
        
        <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
          <script>    
      var selectoption=-1;
      var t=1;
      var opt;
     var idd;
     var noo;
     function nextques()
     {
         var t=parseInt(noo);
         t=t+1;
         window.location="http://localhost:8080/p/faces/fill.jsp?"+idd+"/"+t;
     }
  
    function answer(k)
    {
    selectoption=k;
    
    }
    
    
    function resultprint()
    {
        document.getElementById("b1").disabled = true;
        document.getElementById("b2").disabled = false;
         idd=document.getElementById("h1").value; 
         noo=document.getElementById("h2").value;
        opt=document.getElementById("h3").value;
        var url="count.jsp?id="+idd+"&no="+noo+"&op="+selectoption;
                //    alert(url+"  "+opt);
        if(window.XMLHttpRequest)
                    {
                        request=new XMLHttpRequest();
                    }
                    else if(window.ActiveXObject)
                    {
                        request=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                   try  
                   {  
                       request.onreadystatechange=getInfo;  
                       request.open("GET",url,true);  
                       request.send();  
                   }  
                   catch(e)  
                   {  
                       alert("Unable to connect to server");  
                   }
       
              
        
    }
    
     function getInfo(){  
                   if(request.readyState==4){  
                       var vala=request.responseText;
        
        
        }
        
                if(t==1)
                {
                   
                    t--;
                    showgraph();
                }
        
       
    }
</script>
        <script>
            var dollars=new Array();
            var pos=0;
           var categories= [''];  
           
            
       function showgraph()
            {
                var sum=0;
            //    alert("COUNT");
        //        categories[0]=" ";
                for(yy=0;yy<opt;yy++)
                {
                    ttt=document.getElementById(yy).value;
                    dollars[yy]=ttt;
                    sum=sum+parseInt(ttt);
                    
                    var uu=document.getElementById(yy+6).value;
             //       alert(uu);
                    categories[yy+1]=uu;
               //     alert(dollars[yy]+" "+sum);
                }
                for(yy=0;yy<opt;yy++)
                {
                    dollars[yy]=Math.round((dollars[yy]*100)/sum);
                }
              // categories= ['', 'Camera & Photo', 'Cell Phones', 'Computers','eBook Readers'];
          //      var categories= ['' ,'Service','Television & Video','Car & Vehicle'];

		
        //        var dollars=[213,546,45];
        
//        dollars[0]=50;
//        dollars[1]=10;
//        dollars[2]=30;
//        dollars[3]=40;
		var colors = ['#0000b4','#0082ca','#0094ff','#0d4bcf','#0066AE'];

		var grid = d3.range(25).map(function(i){
			return {'x1':0,'y1':0,'x2':0,'y2':300};
		});

		var tickVals = grid.map(function(d,i){
			if(i>0){ return i*10; }
			else if(i===0){ return "100";}
		});

		var xscale = d3.scale.linear()
						.domain([0,100])
						.range([0,722]);

		var yscale = d3.scale.linear()
						.domain([0,categories.length-1])
						.range([0,300   ]);

		var colorScale = d3.scale.quantize()
						.domain([0,categories.length-1])
						.range(colors);

		var canvas = d3.select('#wrapper')
						.append('svg')
						.attr({'width':900,'height':550});

		var grids = canvas.append('g')
						  .attr('id','grid')
						  .attr('transform','translate(150,10)')
						  .selectAll('line')
						  .data(grid)
						  .enter()
						  .append('line')
						  .attr({'x1':function(d,i){ return i*30; },
								 'y1':function(d){ return d.y1; },
								 'x2':function(d,i){ return i*30; },
								 'y2':function(d){ return d.y2; },
							})
						  .style({'stroke':'#adadad','stroke-width':'1px'});

		var	xAxis = d3.svg.axis();
			xAxis
				.orient('bottom')
				.scale(xscale)
				.tickValues(tickVals);

		var	yAxis = d3.svg.axis();
			yAxis
				.orient('left')
				.scale(yscale)
				.tickSize(2)
				.tickFormat(function(d,i){ return categories[i]; })
				.tickValues(d3.range(17));

		var y_xis = canvas.append('g')
						  .attr("transform", "translate(150,0)")
						  .attr('id','yaxis')
						  .call(yAxis);

		var x_xis = canvas.append('g')
						  .attr("transform", "translate(150,300)")
						  .attr('id','xaxis')
						  .call(xAxis);

		var chart = canvas.append('g')
							.attr("transform", "translate(150,0)")
							.attr('id','bars')
							.selectAll('rect')
							.data(dollars)
							.enter()
							.append('rect')
							.attr('height',19)
							.attr({'x':0,'y':function(d,i){ return yscale(i)+19; }})
							.style('fill',function(d,i){ return colorScale(i); })
							.attr('width',function(d){ return 0; });


		var transit = d3.select("svg").selectAll("rect")
						    .data(dollars)
						    .transition()
						    .duration(1000) 
						    .attr("width", function(d) {return xscale(d); });

		var transitext = d3.select('#bars')
							.selectAll('text')
							.data(dollars)
							.enter()
							.append('text')
							.attr({'x':function(d) {return xscale(d)-40; },'y':function(d,i){ return yscale(i)+35; }})
							.text(function(d){ return d+"%"; }).style({'fill':'#fff','font-size':'14px'});

            }
	
        
        
        </script>
    </head>
    <body>
        

        
        
        
        
        
        <div style="border:0    px tomato solid;height: 700px;width: 835px; margin-left: 100px;  margin-top:100px;float: left ">
    <%
        int yyy=0;
        String q=request.getQueryString();
     //   out.print(q+"<br>");
        String id=q;    
        String name="poll";
        String ques="";
        String e;
        String[] option=new String[5];
        int no=0,i=0;
            
       
        if(id.contains("/"))
        {
            int l=id.length();
            e=id.substring(7,l);
            String s=id.substring(0,6);
          //  out.print("<br>"+l+e+"<br>"+s);
            id=s;
            no=Integer.parseInt(e);
        }
        else
        {
            no=1;
        }
       
         
  
          
            String sql="select * from name where id='"+id+"'";
            rs=smt.executeQuery(sql);
            
            while(rs.next())
            {       
                name=rs.getString("pollname");
              
            }
            
            %>
            
            <h1><%=name%></h1>
           
            <div style="border:0px tomato solid;margin-left: 30px;margin-top: 30px" class="row">
                <div class="col-md-4">
                 <b><h3>Question <%=no%>:-</h3></b>

            <%
            String p="1";
            String o="vd";
            
           o=Integer.toString(no);
            
            int tn=0;
           
            sql="select * from question where id='"+id+"' and no="+o;
            rs=smt.executeQuery(sql);
            while(rs.next())
            {
                tn=rs.getInt("no");
            }
            int c=Integer.parseInt(o);
            if(tn<c)
            {
                response.sendRedirect("illegal.jsp");
            }
            
            sql="select * from question where id='"+id+"' and no="+o;
            rs=smt.executeQuery(sql);
            while(rs.next())
            {
                ques=rs.getString("_question");
                for(i=0;i<5;i++)
                {
                    String r=rs.getString("_option"+(i+1));
                    if(r.equals(""))
                    {
                        break;
                    }
                    else
                    {
                        option[i]=r;
                    }
                }
                          for(int t=0;t<i;t++)
                       { 
                           int y=6+t;
                    out.print("<input type=\"hidden\" id="+t+" value="+rs.getInt("_count"+(t+1))+">");
                     out.print("<input type=\"hidden\" id="+y+" value="+rs.getString("_option"+(t+1))+">");
                    }

                int pp=no+1;
                
                        p=Integer.toString(pp);
            }
            String url="p/faces/fill.jsp?"+id+p;
            %>
            
            
            <%
                out.print(ques+"<br>");
        
     //       out.print("<br><br>");
            out.print("<form action=\"ss.jsp\" method=\"GET\">   ");
          out.print("<input type=\"hidden\" id=\"h1\" value="+id+">");
          out.print("<input type=\"hidden\" id=\"h2\" value="+o+">");
         out.print("<input type=\"hidden\" id=\"h3\" value="+i+">");
         //out.print(rs.getString(1));
             %>
                   <table  style="border: 1px solid black;width: 350px">
                
                <tr style="border:1px black">
                    <th>
            <%
            for(int t=0;t<i;t++)
            {
           %>
           <tr style="border:1px solid black ">
                    <th>
                
            <%    out.print(  "<input type=\"radio\" name=\"opt\" onclick=\"answer("+t+")\"  value="+t+">&nbsp&nbsp"+option[t]+"<br>");
            
            %>
           </tr>
            </td>
            
            <%
            }
            %>
            </table><%
         //   out.print("<input type=\"button\" onclick=\"resultprint()\" value=\"submit\">");
           
          

        
        %>
        <input type="button" onclick="resultprint()" value="submit" style="width:350px" id="b1"/>
        <br> 
        <input type="button" disabled onclick="nextques()" value="Next" style="width:350px" id="b2"/>         
                </div>
        <div class="col-md-8">
        <div id="wrapper">
            
            
	</div>
        
        
        </div>
            </div>
        
        </div>
       
    </body>
</html> 
