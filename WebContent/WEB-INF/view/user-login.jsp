<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<html>
<head>
  <!-- Basic Page Needs -->
  <meta charset="utf-8">
  <title>Customer Tracker: user registration</title>
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Mobile Specific Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href='//fonts.googleapis.com/css?family=Raleway:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="${cp}/resources/css/normalize.css">
  <link rel="stylesheet" href="${cp}/resources/css/skeleton.css">
  <link rel="stylesheet" href="${cp}/resources/css/custom.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script type="text/javascript" src="${cp}/resources/js/jump.js"></script>  
  <link rel="icon" type="image/png" href="${cp}/resources/images/icon.png">
</head>
<body>

  <div class="section hero">
    <div class="container">
      <div class="row">
        <div class="six columns">
            <div class="item">
  				<img src="${cp}/resources/images/login.png">
  			</div>
        </div>
		<div class="six columns">
			<c:if test="${param.error != null}">        
				<div class="error">
				  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
				  <strong>Error!</strong>   Invalid username and password.
				</div>
			</c:if>
			<c:if test="${param.logout != null}">       
				<div class="info">
				  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
				  <strong>Info!</strong>   You have been logged out.
				</div>
			</c:if>
	        <h4 class="hero-heading">Login</h4>
			<fieldset>
				<c:url value="/login" var="loginUrl"/>
				<form action="${loginUrl}" method="post">
					<p>
						<label for="username">Username</label>
						<input type="text" id="username" name="username" class="u-full-width" maxlength="200"/>	
					</p>
					<p>
						<label for="password">Password</label>
						<input type="password" id="password" name="password" class="u-full-width" maxlength="200"/>	
					</p>
					<input type="hidden"                        
						name="${_csrf.parameterName}"
						value="${_csrf.token}"/>
					<input class="button-primary" value="LOGIN" type="submit">
					<p>New user? 
					<a href="${cp}/signup">Sign up</a> here
					</p>
				</form>
				
			</fieldset>	
		</div>
		<div class="one-third column">
		</div>
	  </div>
     </div>
    </div>
  <div class="section categories">
    <div class="container">
      <h3 class="section-heading">Customer Tracker</h3>
      <p class="section-description">Customer Tracker App V 1.0 </p>
      <div class="row">
        <div class="one-half column category">
        </div>
        <div class="one-half column category">
        </div>
      </div>
      <p>Terms of Service | Privacy Policy</p>
    </div>
  </div>
</body>
</html>