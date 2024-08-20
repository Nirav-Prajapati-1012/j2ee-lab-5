<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operation = request.getParameter("operation");
        
        
        double num1 = 0;
        double num2 = 0;
        double result = 0;
        String message = "";
        
        try {
            
            num1 = Double.parseDouble(num1Str);
            num2 = Double.parseDouble(num2Str);
            
         
            switch (operation) {
                case "add":
                    result = num1 + num2;
                    message = "addition: " + result;
                    break;
                case "subtract":
                    result = num1 - num2;
                    message = "subtraction: " + result;
                    break;
                case "multiply":
                    result = num1 * num2;
                    message = "multiplication: " + result;
                    break;
                case "divide":
                    if (num2 != 0) {
                        result = num1 / num2;
                        message = "division: " + result;
                    } else {
                        message = "Error.";
                    }
                    break;
                default:
                    message = "Invalid operation selected.";
                    break;
            }
        } catch (NumberFormatException e) {
            message = "Error: Invalid number format.";
        }
    %>
    
    <p><strong><%= message %></strong></p>


</body>
</html>