<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UptateStudent.jsp' starting page</title>
    
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
  <hr> Update<hr/><br>
   
     <form action="UpdateInfo"method="post"> 
      
   Day &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;       : <input type="text"name="ID"/><br>
 Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;       : <input type="text"name="DD"/><br> 
    C_code and T_Name(8.00 am-8.50 am)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <input type="text"name="Name"/><br> 
    C_code and T_Name(9.00 am-9.50 am)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :  <input type="text"name="F"/><br> 
    C_code and T_Name(10.00 am-10.50 am) &nbsp; &nbsp;&nbsp; : <input type="text"name="D"/><br> 
   C_code and T_Name(11.00 am-11.50 am)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <input type="text"name="C"/><br> 
    C_code and T_Name(12.00 pm-12.50 pm) &nbsp; &nbsp; &nbsp; : <input type="text"name="Dr"/><br> 
    C_code and T_Name(2.00 pm-2.50 pm) &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; : <input type="text"name="S"/><br> 
    C_code and T_Name(3.00 pm-3.50 pm)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <input type="text"name="B"/><br>
    C_code and T_Name(4.00 pm-4.50 pm) &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; : <input type="text"name="N"/><br><br>
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
 <button onclick="myFunction()">submit</button>

<script>
function myFunction() {
    alert("ur choice is submitted !!!!");
}
</script> <br><br>
   

  
<a href= "Admin.jsp">Admin Page</a> 
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <font size="50" color="#9ab3b6"><strong>ICT Routine </strong></font>
     </center><br> <br>
   
  </body>
</html>
