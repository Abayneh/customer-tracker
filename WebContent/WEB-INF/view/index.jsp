<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<html lang="en">
<head>


  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
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

  <link rel="icon" type="image/png" href="${cp}/resources/images/icon.png">

</head>
<body>
<c:if test="${param.error == null}">
	<jsp:include page="navbar.jsp"/>
</c:if>
  <div class="section hero">
    <div class="container">
      <div class="row">
        <div class="five columns">
          <h4 class="hero-heading">Tracking your customers hasn't been easier. Welcome to your customer tracker!</h4>
          <a class="button button-primary" href="${cp}/customer/list">TRY TRACKER</a>
          <a class="button" href="${cp}/signup">SIGN UP</a>
        </div>
        <div class="seven columns">
            <div class="main">
          		<img class="phone" src="${cp}/resources/images/people.jpg">
          	</div>
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
    <div class="container">
      <h3 class="section-heading">Need help getting started?</h3>
      <p class="section-description">See our easy to follow documentation!</p>
      <a class="button button-primary" href="#">View tracker docs</a>
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