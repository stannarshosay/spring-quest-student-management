<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Add Subject</title>
    <style>
		th,td{
			padding: 10px 20px;
		}
	</style>
</head>
<body>

	<% 
		response.setHeader("Pragma", "No-cache");
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	    response.setDateHeader("Expires", -1);
		
		String username = (String)session.getAttribute("username");
	
		if(username == null){
			
			response.sendRedirect("/");
			
		}
	
	%>
		
   	<a href="/admin/subject">Go Back</a><br>
   
   	<h1>Add Subject</h1> 
   	
   	<form action="/admin/subject/add" method="POST">
   			   		   
		<input type="text" name="subjectName" placeholder="Enter Subject" title="Subject's Name" required>
		   
   		<button type="submit" title="Click to add subject">Add</button>
   		
	 </form>
   	
   
</body>
</html>