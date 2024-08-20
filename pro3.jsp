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
String un = request.getParameter("un");
String ps = request.getParameter("ps");

%>
<h3>Your Name is: <%= un %></h3>
<h3>Your Password is: <%= ps %></h3>
</body>
</html>
