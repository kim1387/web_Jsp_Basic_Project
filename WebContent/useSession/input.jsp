<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴판</title>
</head>
<body>
	<form action="basket.jsp" >
		<table border="1">
		<tr>
			<th>피자선택 </th>		<th>토핑선택 </th>		<th> 최종주문</th>	
		</tr>
	
		<tr>
			<td>
			
			<img alt="콤비네이션피자사진" src="images/combi.jpg" width="100" height="80"><br>콤비네이션피자
			<input type="radio" name="pizzamenu" value="콤비네이션피자"><br>
		
			<img alt="불고기피자사진" src="images/bulgogi.jpg" width="100" height="80"><br>불고기피자
			<input type="radio" name="pizzamenu" value="불고기피자"><br>
		
			<img alt="페퍼로니피자사진" src="images/pproni.jpg" width="100" height="80"><br>페퍼로니피자
			<input type="radio" name="pizzamenu" value="페퍼로니피자"><br>
			</td>		
			
			<td>
				치즈크러스트<input type="checkbox" name="topping" value="치즈크러스트"><br>
				고구마바이트<input type="checkbox" name="topping" value="고구마"><br>
				고구마바이트<input type="checkbox" name="topping" value="페페로니"><br>
				치즈 추가<input type="checkbox" name="topping" value="치즈"><br>
				올리브 추가<input type="checkbox" name="topping" value="올리브"><br>
			</td>
			
			
			<td>
				구매개수
				<select name="num">
				<option value="1">1개</option>
				<option value="2">2개</option>
				<option value="3">3개</option>
				<option value="4">4개</option>
				<option value="5">5개</option>
				</select>
				<br><br><br>

				<input type="submit" value="장바구니에 담기">
			</td>
		</tr>

		</table>
	</form>
</body>
</html>