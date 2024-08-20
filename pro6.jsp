<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Process Input</title>
</head>
<body>
    <h1>Processing Input</h1>
    
    <% 
        String numberStr = request.getParameter("number");
        int number = 0;
        
        try {
            number = Integer.parseInt(numberStr);
            
            if (number == 0) {
                throw new ArithmeticException("You entered zero, which is not allowed.");
            }
        
            out.println("<p>You entered: " + number + "</p>");
            
        } catch (Exception e) {
            
            request.setAttribute("errorMessage", e.getMessage());
            pageContext.forward("pro6e.jsp");
        }
    %>
</body>
</html>
