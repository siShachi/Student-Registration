

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
   Admin  Page............. <br><br>
  <a href= "AddStudent.jsp">Add </a> <br><br>
  <a href= "UptateStudent.jsp">Update</a> <br><br>
  <a href= "DeleteStudent.jsp">Delete</a> 
    </center>
   <center>
    <br><br><form action="viewServlet" method="post">
    <style>
/* unvisited link */
button:link {
    background-color: green;
}

/* visited link */
button:visited {
    background-color: green;
}

/* mouse over link */
button:hover {
    background-color: red;
}

/* selected link */
button:active {
   background-color: yellow;
} 
</style>
   
   <button type="submit">viewroutine</button><br><br>

   
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <font size="50" color="#9ab3b6"><strong>ICT Routine </strong></font>
   
   </center> <br><br>
   
      
  </body>
</html>
