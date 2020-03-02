<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String dogName = request.getParameter("dogName");
	String dogGender = request.getParameter("dogGender");
	String kind = request.getParameter("kind");
	
	response.sendRedirect(kind+".jsp"+"?dogName="+dogName+"&dogGender="+dogGender);
%>
</body>
</html>