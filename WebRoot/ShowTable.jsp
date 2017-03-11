<%@ page language="java" import="java.util.*,sv.User" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ShowTable.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <center>
  <h2>
     <table cellSpacing=0 cellPadding=0 width="50%" border=1>
           <tr>
    <td>Day </td>
    <td>Semester</td>
   <td>8.00am-8.50am</td>
   <td>9.00am-9.50am</td>
   <td>10.00am-10.50am</td>
   <td>11.00am-11.50am</td>
   <td>12.00pm-12.50pm</td>
   <td>2.00pm-2.50pm</td>
   <td>3.00pm-3.50pm</td>
   <td>4.00pm-4.50pm</td>
    </tr>
    <%
    List<User> ml = (List<User>) request.getAttribute("data");
    if (ml!=null)
    {
      for (int i=0; i<ml.size(); i++)
      {
        User obj = ml.get(i);
        %>
    
    <tr>
    <td><%= obj.getId() %> </td>
    <td><%= obj.getName() %></td>
   <td><%= obj.getF() %></td>
   <td><%= obj.getD() %></td>
   <td><%= obj.getC() %></td>
   <td><%= obj.getDr() %></td>
   <td><%= obj.getS() %></td>
   <td><%= obj.getB() %></td>
   <td><%= obj.getN() %></td>
    <td><%= obj.getDd() %></td>
    </tr>
    <%
    }
    } %>
    </table>
    </h2> <br>
    
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <font size="50" color="#9ab3b6"><strong>ICT Routine </strong></font>
  </center>>   
  </body>
</html>
