<%@page import="com.quest.studentmanagement.models.Subject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Update Subject</title>
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
		
		Subject subject = (Subject)request.getAttribute("subject");
	
	%>
		
   	<a href="/admin/subject">Go Back</a><br>
   
   	<h1>Update Subject</h1> 
   	
   	<form action="/admin/subject/update" method="POST">
   		
   		<input type="number" name="id" value="<%=subject.getId()%>" placeholder="Enter ID" title="Subject's ID" required readonly>	   		   
   			   		   
		<input type="text" name="subjectName" value="<%=subject.getSubjectName()%>" placeholder="Enter Subject" title="Subject's Name" required>
		   
   		<button type="submit" title="Click to update subject">Update</button>
   		
	 </form>
   	
   
</body>
</html>