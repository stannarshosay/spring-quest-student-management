<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Home</title>
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
	
   <h1>Admin Panel</h1> 
   
   <a href="/admin/teacher">Manage Teachers</a><br>
   <a href="/admin/subject">Manage Subjects</a><br>
   <a href="/logout">Logout</a>
   
</body>
</html>