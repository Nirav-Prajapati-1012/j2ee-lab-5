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
String yr = request.getParameter("un");
boolean isLeapYear = false;
String resultMessage = "";
try
{
	int year = Integer.parseInt(yr);

if((year%4==0 && year % 100 !=0)|| (year % 400 == 0))
{
	isLeapYear = true;
	
}
resultMessage = isLeapYear ? year + " is a leap year." : year + " is not a leap year.";
}
catch (NumberFormatException e) {
    resultMessage = "Invalid year entered.";
}
%>
<p><%= resultMessage %></p>
</body>
</html>
