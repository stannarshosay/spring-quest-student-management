<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oops | Error</title>
</head>
<body>

	<%		
		String errorMessage = (String)request.getAttribute("message");		
	%>
		
  
  	<h1>Oops! Something Went Wrong</h1>
  	<small>We are working on it.</small>
  	
  	<% if(errorMessage != null) { %>
	  	<div>
	  	  	<strong>ERROR : </strong>
	  	  	<span style="color:red"><%=errorMessage%></span>  	
	  	</div>
   	<% } %>
   
</body>
</html>