<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Products</title>
</head>
<body>
<%@ include file="header.jspf"%>
<br><br><br>

<!-- total pages: <a href="products?p=${totalPages}">${totalPages}</a> -->
 
<br>page:&nbsp;|&nbsp;
<c:forEach var="link" items="${requestScope.links}">
	<a href="products?p=${link}">${link}</a>&nbsp; 
</c:forEach>
|<br>

	<table border="1">
		<c:forEach var="product" items="${requestScope.products}">
			<tr>
				<!--  <td width="250px" height="250px"><c:out value="${product}"> </c:out></td>
				-->
				<td width="250px" height="250px">${product.picture} <br> 
					<a href="product?id=${product.productId}">${product.SKU}</a>
				 	<br> $ ${product.unitPrice} <br> 
				 	<a href="addCart?id=${product.productId}">add to cart</a>
				</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>