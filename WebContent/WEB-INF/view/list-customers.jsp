<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<html>
<head>
  <!-- Basic Page Needs -->
  <meta charset="utf-8">
  <title>Customer Tracker: track your customers</title>
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
</c:if>  <div class="section hero">
    <div class="container">
      <div class="row">
        <div class="five columns">
          <h4 class="hero-heading">Welcome <strong> ${user} </strong>! Register customers, see and do more here.</h4>
          <a class="button button-primary" href="#jump">CUSTOMER LIST</a>
          <a class="button" href="${cp}/">GO BACK</a>
        </div>
        <div class = "seven columns">
           	<c:if test="${param.login != null}"> 
       		  <div class="success">       
					  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
					  <strong>Success!</strong>   You have logged in successfully.
			  </div>
			</c:if>
			<fieldset>
				<form:form action="saveCustomer" method="POST" modelAttribute="customer">
	
					<form:label path="firstName" >First Name </form:label>
			
					<form:input path="firstName" cssClass="u-full-width" maxlength="200"/>
					<form:errors path="firstName" cssClass="error"/>
			
					<form:label path="lastName" >Last Name </form:label>
			
					<form:input path="lastName" cssClass="u-full-width"/>
					<form:errors path="lastName" cssClass="error"/>
			
					<form:label path="email" >Email</form:label>
			
					<form:input path="email" cssClass="u-full-width"/>
					<form:errors path="email" cssClass="error"/>
					<div>
						<input class="button-primary" value="Submit" type="submit">
					</div>
				</form:form>		
			</fieldset>
		</div>
	  </div>
     </div>
    </div>

  <div class="section values">
    <div class="container">
      <div class="row">
        <div class="one-third column value">
          <h2 class="value-multiplier">99%</h2>
          <h5 class="value-heading">More productivity</h5>
          <p class="value-description">More customers tracked means better product to market delivery.</p>
        </div>
        <div class="one-third column value">
          <h2 class="value-multiplier">90%</h2>
          <h5 class="value-heading">Engagement</h5>
          <p class="value-description">Know your customers, tune up your products</p>
        </div>
        <div class="one-third column value">
          <h2 class="value-multiplier">0%</h2>
          <h5 class="value-heading">Privacy issues</h5>
          <p class="value-description">Track your customers through our encrypted systems.</p>
        </div>
      </div>
    </div>
  </div>

  <div class="section get-help">
	<div class="seven-columns" id="search">
		<fieldset>
			<form:form method="GET" action="searchById" modelAttribute="customer">
				<form:input path="id" placeholder="Search by Id" />			
				<input class="button-primary" value="SEARCH" type="submit">
				
			</form:form>
		</fieldset>
  	</div>
    <div class="container" id="jump">
      <h3 class="section-heading">Customer List</h3>
      <p class="section-description">See your customers' profile</p>
	  <fieldset>
		<form:form action="listCustomers" method="GET">		
		<table class="u-full-width">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
				
			</tr>
			<c:forEach var="tempCustomer" items="${customers}">
		<tr>
			<td>${tempCustomer.firstName}</td>
		<td>${tempCustomer.lastName}</td>
		<td>${tempCustomer.email}</td>		
		<c:url var="deleteLink" value="/customer/deleteCustomer">
			<c:param name="customerId" value="${tempCustomer.id}"/>
		</c:url>
		<c:url var="updateLink" value="/customer/updateCustomer">
			<c:param name="customerId" value="${tempCustomer.id}"/>
		</c:url>
		<td>
			<a class="button" href="${deleteLink}" onclick="return confirm('Are you sure you want to delete the customer?');">Delete</a>
			<a class="button" href="${updateLink}">Update</a>
			</td>
		</tr>
		</c:forEach>
		</table>
		</form:form>
	  </fieldset>
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