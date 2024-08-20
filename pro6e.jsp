<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
</head>
<body>
    <h1>Error Occurred</h1>
    
    <p><strong>Error Message:</strong> <%= request.getAttribute("errorMessage") %></p>
    
    <a href="pro6.html">Go back to the form</a>
</body>
</html>
