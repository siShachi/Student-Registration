<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'account.jsp' starting page</title>
    
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
     <h2> Create Accoumt.........</h2> <br>
    <form action="AccountS" method="post">
   Name    :   <input type="text"name="UserName"/><br>
   Password:  <input type="password"name="pass"/><br>
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
   
   <button type="submit">submit</button><br><br>  
   
   </center>

      
 
  </body>
</html>
