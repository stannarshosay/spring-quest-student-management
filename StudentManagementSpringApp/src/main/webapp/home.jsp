<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Home</title>
</head>
<body>

	<% 
	
		response.setHeader("Pragma", "No-cache");
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	    response.setDateHeader("Expires", -1);
		
		String username = (String)session.getAttribute("username");
		
		if(username != null){
			
			response.sendRedirect("/admin");
			
		}
	
	%>

   <h1>Welcome To Student Management System!</h1> 
   
   
   <form action="/login" method="POST">
   		
   		<input type="text" name="username" placeholder="Username" required>
   		<input type="password" name="password" placeholder="Password" required>
   		
   		<button type="submit">Login</button>
   
   </form>
   
</body>
</html>