<%@page import="pizza.Pizza"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	String pizzamenu = request.getParameter("pizzamenu");
	String topping[] = request.getParameterValues("topping");
	int num = Integer.parseInt(request.getParameter("num"));
	Integer basketNo = 	(Integer)session.getAttribute("basNo");
	
	if(basketNo == null){
		basketNo = 0;
	}
	
	Pizza pizza = new Pizza(pizzamenu, topping, num);
	session.setAttribute("pizzaNo"+ basketNo, pizza);
	session.setAttribute("basNo",++basketNo);
	
	
%>
장바구니에 넣었습니다.
	<button onclick="location.href='input.jsp'">메뉴판으로</button><br>
	장바구니 목록
	<table border="1" width="1000px">
		<tr>
			<th>장바구니 번호 </th>
			<th>메뉴 이름 </th>
			<th> 추가되는 토핑</th>
			<th> 개수</th>	
		</tr>
		<tr>
			<td> 
				<%
					for(int i=0; i<basketNo; i++){
						out.print(i+"<br>");
					}
				%>
			</td>

			<td>
				<%
					Pizza pizzaList;
					for(int i=0; i<basketNo; i++){
						pizzaList = (Pizza)session.getAttribute("pizzaNo"+i);
						out.print(pizzaList.getKind()+"<br>");
					}
				%>
			 </td>
			
			<td>
				<%
					String toppingList[];
					for(int i=0; i<basketNo; i++){
						pizzaList = (Pizza)session.getAttribute("pizzaNo"+i);
						toppingList =pizzaList.getTopping();
						for(String top:toppingList){
							out.print(top+" ");
						}
						out.print("<br>");
					}
				%>
			 </td>
			
			<td> 
				<%
					for(int i=0; i<basketNo; i++){
						pizzaList = (Pizza)session.getAttribute("pizzaNo"+i);
						out.print(pizzaList.getNum()+"<br>");
					}
				%>
			</td>
		</tr>
	
	</table>

</body>
</html>