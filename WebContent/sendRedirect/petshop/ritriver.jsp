<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리트리버입니다</title>
</head>
<body>
<img src="images/dog1.jfif">
	강아지이름은 <%= request.getParameter("dogName") %><br>
	강아지성별은 <%= request.getParameter("dogGender") %><br>
	입양해주셔서 감사합니다.
</body>
</html>