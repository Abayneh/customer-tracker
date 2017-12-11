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
<c:if test="${param.error == null}">
	<jsp:include page="navbar.jsp"/>
</c:if>
  <div class="section hero">
    <div class="container">
      <div class="row">
        <div class="six columns">
        	<div class="item">
         		<img src="${cp}/resources/images/register.png">
        	</div>
        </div>
		<div class="six columns">
	          <h4 class="hero-heading">Sign up here</h4>
				<fieldset>
					<form:form method="GET" action="${cp}/saveUser"> <!--  action="${cp}/user/registration" modelAttribute="user" -->
						<form:label path="username" >Username </form:label>		
						<form:input path="username" cssClass="u-full-width" maxlength="200"/>
						<form:errors path="username" cssClass="error"/>
				
						<form:label path="password" >Password </form:label>	
						<form:input path="password" cssClass="u-full-width"/>
						<form:errors path="password" cssClass="error"/>
				
						<form:label path="email" >Email</form:label>
						<form:input path="email" cssClass="u-full-width"/>
						<form:errors path="email" cssClass="error"/>
						<div>
							<input class="button-primary" value="SIGN UP" type="submit">
							<p>Already registered? 
							 <a href="${cp}/login">Login</a>
							 | <a href="${cp}">Home</a>
							 </p>
							
						</div>
					</form:form>		
				</fieldset>	
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