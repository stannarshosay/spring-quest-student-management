<%@page import="com.quest.studentmanagement.models.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Teachers</title>
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
		List<Teacher> teachers = (List<Teacher>)request.getAttribute("teachers");
	%>

	<a href="/admin">Go Back</a><br>	
	
   	<h1>Manage Teachers</h1> 
   	
   	<form action="/admin/teacher/search" method="POST">
   		
   		<input type="text" name="term" placeholder="Search" required>
   		
   		<button type="submit">Search</button>
   	
   	</form>
   	
   	<br>
   
   	<a href="/admin/teacher/add">Add Teacher</a>
   
   	<br><br>
   	
   	<table border="1" style="border-collapse: collapse;">
		 <thead>
			 <tr>
				<th>ID</th> 
				<th>Name</th>
				<th>Qualification</th>
				<th>Subject</th>
				<th>Update</th>
				<th>Delete</th>
			 </tr>			 
		 </thead>  
		 <tbody>
		 
		 
			 <% 
			    for(Teacher teacher : teachers) {
			 %>
				 <tr>
					 <td><%=teacher.getId()%></td>
					 <td><%=teacher.getName()%></td>
					 <td><%=teacher.getQualification()%></td>
					 <td><%=teacher.getSubject().getSubjectName()%></td>
					 <td>
					 	<a href="/admin/teacher/update/<%=teacher.getId()%>">Update</a>
					 </td>
					 <td>
					 	<a href="/admin/teacher/remove/<%=teacher.getId()%>" style="color:red">Remove</a>
					 </td>
				 </tr>
			 <%
			    }
			 %>
			 
			 
			 
		 </tbody>  
		   
	</table>
   
   
   
</body>
</html>