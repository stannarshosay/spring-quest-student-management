<%@page import="com.quest.studentmanagement.models.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Add Teacher</title>
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
		
	 	List<Subject> subjects = (List<Subject>)request.getAttribute("subjects");
	
	%>
		
   	<a href="/admin/teacher">Go Back</a><br>
   
   	<h1>Add Teacher</h1> 
   	
   	<form action="/admin/teacher/add" method="POST">
   			   		   
		<input type="text" name="name" placeholder="Enter Name" title="Teacher's Name" required> <br><br>
		
		<input type="text" name="qualification" placeholder="Enter Qualification" title="Teacher's Qualification" required> <br><br>
		
		
		<select name="subjectId">
		
			<% for(Subject subject : subjects) { %>
			
		 		<option value="<%=subject.getId()%>"><%=subject.getSubjectName()%></option>
		 	
		 	<% } %>
		 	
		</select>
		
		
		<br><br>
		   
   		<button type="submit" title="Click to add teacher">Add</button>
   		
	 </form>
   	
   
</body>
</html>