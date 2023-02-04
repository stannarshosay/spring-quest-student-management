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
    <title>Admin | Subjects</title>
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
	
   	<a href="/admin">Go Back</a><br>
   
   	<h1>Manage Subjects</h1> 
   
   	<a href="/admin/subject/add">Add Subject</a>
   
   	<br><br>
   	
   	<table border="1" style="border-collapse: collapse;">
		 <thead>
			 <tr>
				<th>ID</th> 
				<th>Subject</th>
				<th>Update</th>
				<th>Remove</th>
			 </tr>			 
		 </thead>  
		 <tbody>
		 
		 
			 <% 
			    for(Subject subject : subjects) {
			 %>
				 <tr>
					 <td><%=subject.getId()%></td>
					 <td><%=subject.getSubjectName()%></td>
					 <td>
					 	<a href="/admin/subject/update/<%=subject.getId()%>">Update</a>
					 </td>
					 <td>
					 	<a href="/admin/subject/remove/<%=subject.getId()%>" style="color:red">Remove</a>
					 </td>
				 </tr>
			 <%
			    }
			 %>
			 
			 
			 
		 </tbody>  
		   
	</table>
   
   
   
</body>
</html>