<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
 <h1> <strong>MAWLANA BHASHANI SCIENCE 
AND TECHNOLOGY UNIVERSITY</strong></h1>
<br>
<h2><strong>Dept. of Information and Communication technology</strong></h2>
  
  <h2>Welcome to ICT Routine program </h2>
     <h2> Please LogIn</h2> <br>
    <form action="LogS" method="post">
 
   Password: <input type="password"name="pass"/><br>
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
      <a href= "account.jsp">Create a account</a> <br><br>
    <center>  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <font size="50" color="#9ab3b6"><strong>ICT Routine </strong></font>
   </center>
       
 
  </body>
</html>
