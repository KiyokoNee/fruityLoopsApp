<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Fruit Store</title>
		<link rel="stylesheet" href="/css/style.css" />
	</head>
	<body>
		<div id="container">
			<h1>Fruit Store</h1>
			<table>
				<tbody>
					<tr>
						<th>Name</th>
						<th>Price</th>
					</tr>
					<c:forEach var="fruit" items="${fruits}">
						<c:set var="color" value="black" />
						 <c:if test="${fruit.name.substring(0,1) == 'g' || fruit.name.substring(0,1) == 'G' }">
						 	<c:set var="color" value="orange" />
						 </c:if> 
						<tr>
							<td style="color:${color}"><c:out value="${fruit.name}"></c:out></td>
							<td><c:out value="${fruit.price}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</body>
</html>