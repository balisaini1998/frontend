<%@include file="Header.jsp" %>
<%@include file="Carousel.jsp" %>
<%@taglib uri="http://www.springframework.org/security/tags"  prefix="security"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Insert title here</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
    body {
     background: url('resources/images/sam1.jpg') fixed;
    background-size: cover;}
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

  </style>
	
</head>

<body>
<security:authorize access="hasRole('ROLE_ADMIN')">
<jsp:forward page="/adminHome"></jsp:forward>
</security:authorize>
<div class="container">    
  <div class="row">
    <div class="col-sm-4" height="70pt">
      <div class="panel panel-primary">
        <div class="panel-heading">combo</div>
        <div class="panel-body"><img src="E:/project_term6/Frontend/src/main/webapp/resources/images/6.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 2 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4" height="70pt"> 
      <div class="panel panel-danger">
        <div class="panel-heading">vivo mobiles offer</div>
        <div class="panel-body"><img src="E:/project_term6/Frontend/src/main/webapp/resources/images/7.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4" height="70pt"> 
      <div class="panel panel-success">
        <div class="panel-heading">Comparison</div>
        <div class="panel-body"><img src="E:/project_term6/Frontend/src/main/webapp/resources/images/8.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-6">
      <div class="panel panel-primary">
       <div class="panel-heading">Offer All Mobiles</div>
        <div class="panel-body"><img src="E:/project_term6/Frontend/src/main/webapp/resources/images/9.jpg" class="img-responsive" style="width:100%" "height:90pt" alt="Image"></div>
        <div class="panel-footer">Buy 5 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-6"> 
      <div class="panel panel-primary">
        <div class="panel-heading">DEAL</div>
        <div class="panel-body"><img src="resources/images/10.jpg" class="img-responsive" style="width:100%" "height:80pt" alt="Image"></div>
        <div class="panel-footer">Buy 10 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Sunday Deal</div>
        <div class="panel-body"><img src="resources/images/11.jpeg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 25 mobiles and get a gift card</div>
      </div>
          </div>
          <div class="col-sm-3"> 
      <div class="panel panel-primary">
        <div class="panel-heading">New Lunch</div>
        <div class="panel-body"><img src="resources/images/12.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 10 mobiles and get a gift card</div>
      </div>
          </div>
          <div class="col-sm-3"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Holiday Offer</div>
        <div class="panel-body"><img src="resources/images/13.jpeg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 20 mobiles and get a gift card</div>
      </div>
          </div>
          <div class="col-sm-3"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Apple Deal</div>
        <div class="panel-body"><img src="resources/images/14.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 60 mobiles and get a gift card</div>
      </div>
          </div>
  </div>
</div>
<br><br>
<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>


</body>
</html>
