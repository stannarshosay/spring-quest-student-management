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
		
   	<a href="/admin/subject">Go Back</a><br>
   
   	<h1>Add Subject</h1> 
   	
   	<form action="/admin/subject/add" method="POST">
   			   		   
		<input type="text" name="subjectName" placeholder="Enter Subject" title="Subject's Name" required>
		   
   		<button type="submit" title="Click to add subject">Add</button>
   		
	 </form>
   	
   
</body>
</html>