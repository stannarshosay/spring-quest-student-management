<%@page import="java.io.IOException"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Subjects</title>
    <style>
		th,td{
			padding: 10px 20px;
		}
	</style>
</head>
<body>


	<%
		//list of subjects
		
		
	
	%>



	
   	<a href="/admin">Go Back</a><br>
   
   	<h1>Manage Subjects</h1> 
   
   	<a href="/admin/subject/add">Add Subject</a>
   
   	<br><br>
   	
   	<table border="1" style="border-collapse: collapse;">
		 <thead>
			 <tr>
				<th>ID</th> 
				<th>Subject</th> 
			 </tr>			 
		 </thead>  
		 <tbody>
			 
			 <tr>
				 <td>1</td>
				 <td>Maths</td>
			 </tr>
			 
			 <tr>
				 <td>2</td>
				 <td>Science</td>
			 </tr>
			 
			 <tr>
				 <td>3</td>
				 <td>History</td>
			 </tr>
			 
		 </tbody>  
		   
	</table>
   
   
   
</body>
</html>