<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include  file="Header.jsp" %>


<br>

<div class="container">
<spring:form action="${pageContext.request.contextPath}/adminAddCategory" modelAttribute="cat" method="post">
<c:if test="${not empty cat.categoryName}">

CategoryId<spring:input type="text" path="categoryId" readonly="true" disabled="true"/>
<spring:hidden path="categoryId"/>
</c:if>

<div class="form-group">
<label for="categoryName">Category Name</label><spring:input class="form-control" type="text" path="categoryName"/>

</div>

<div class="form-group">
<label for="categoryDescription">Category Description</label><spring:input class="form-control" type="text" path="categoryDescription"/><br>

</div>

<c:if test="${empty cat.categoryName}"><input type="submit" value="Add"/></c:if>
<c:if test="${not empty cat.categoryName}"><input type="submit" value="Update"/></c:if>
</spring:form>


<c:if test="${not empty categoryList}">

<table border="1">
<table class="table">
  <thead class="thead-light">
<tr><td>categoryId</td>
<td>categoryName</td>
<td>categoryDesc</td>

<td>Edit</td>
<td>delete</td>
</tr>
  </thead>
  <tbody>
<c:forEach items="${categoryList}" var="cate">
<tr>
<td>${cate.categoryId}</td>
<td>${cate.categoryName}</td>
<td>${cate.categoryDescription}</td>

<td><a href="adminEditCategory/${cate.categoryId}">edit</a></td>


<td><a href="adminDeleteCategory/${cate.categoryId}">delete</a></td>
</tr>


</c:forEach>
</table>

</c:if>


</div>

</body>
</html>