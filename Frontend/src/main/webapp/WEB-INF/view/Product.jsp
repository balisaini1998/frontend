<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@include file="Header.jsp" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<br>
<div class="container">
<spring:form action="${pageContext.request.contextPath}/adminAddProduct" modelAttribute="pro" method="post" enctype="Multipart/form-data">
<c:if test="${not empty pro.productName}">
ProductId<spring:input type="text" path="productId" readonly="true" disabled="true"/>
<spring:hidden path="productId"/>
</c:if>

<div class="form-group">
<label for="productName"></label>Product Name<spring:input class="form-control" type="text" path="productName"/>

</div>

<div class="form-group">
<label for="productDescription"></label>Product Description<spring:input class="form-control" type="text" path="productDescription"/><br>

</div>

<div class="form-group">
<label for="productQuantity"></label>Product Quantity<spring:input class="form-control" type="text" path="productQuantity"/><br>

</div>
<div class="form-group">
<label for="product Price"></label>Product Price<spring:input class="form-control" type="text" path="productPrice"/><br>

</div>
<div class="form-group">
<label for="category"></label>Category
<spring:select path="categoryId">
<c:forEach items="${categoryList}" var="cat">

<option value="${cat.categoryId}">${cat.categoryName}</option>
</c:forEach>
</spring:select>
</div>


<div class="form-group">
<spring:input path="image"  type="file"/>
</div>





<c:if test="${empty pro.productName}"><input type="submit" value="Add"/></c:if>
<c:if test="${not empty pro.productName}"><input type="submit" value="Update"/></c:if>
</spring:form>


<c:if test="${not empty productList}">

<table border="1" class="table">
  <thead class="thead-light">
<tr><td>productId</td>
<td>productName</td>
<td>productDesc</td>
<td>productQuantity</td>
<td>productPrice</td>

<td>Edit</td>
<td>delete</td>
</tr>
  </thead>
  <tbody>
<c:forEach items="${productList}" var="prod">
<tr>
<td>${prod.productId}</td>
<td>${prod.productName}</td>
<td>${prod.productDescription}</td>
<td>${prod.productQuantity}</td>
<td>${prod.productPrice}</td>




<td><a href="adminEditProduct/${prod.productId}">edit</a></td>


<td><a href="adminDeleteProduct/${prod.productId}">delete</a></td>
</tr>


</c:forEach>
</table>
</c:if>

</div>


</body>
</html>