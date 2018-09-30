<%@taglib uri="http://www.springframework.org/security/tags"  prefix="security"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>${title}</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="Home">mobideal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
       <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="nav-item">
        <a class="nav-link" href="adminHome">AdminHome</a>
      </li> 
      </security:authorize>
        <security:authorize access="hasRole('ROLE_USER')">
 
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/Home">Home</a>
      </li>
      </security:authorize>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
      Product
      </a>
      <div class="dropdown-menu">
      <c:forEach items="${categoryList}" var="category">
      <a class="dropdown-item" href="${pageContext.request.contextPath}/getAllProductsBycategory/${category.categoryId}">${category.categoryName}</a>
      </c:forEach>
      </div>
      </li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
      
         <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/SignUp">SignUp</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
        </li>
      
      
      <security:authorize access="isAuthenticated()">
        <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/LogOut">Logout</a>
      </li>
      </security:authorize>
   
      
      
    </ul>
  </div>  
</nav>


