<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Employee Management Application</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 
	crossorigin="anonymous">
</head>
<style>
body{
background-color :#25546b5c;
overflow: hidden;
}
.wrapper .icon-close{
position: absolute;
top: 0;
right: 0;
width: 45px;
height: 45px;
font-size: 2em;
justify-content: center;
align-items: center;
color: #000000;
}
</style>
<body>

	<header>
		<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: white">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><h2><b>Employee Management Application<b></h2></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        
    </div>
  </div>
</nav>
	</header>
	<br>
	
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${User != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${User == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${User != null}">
            			Edit Employee
            		</c:if>
						<c:if test="${User == null}">
            			Add New Employee
            		</c:if>
					</h2>
					<div class="wrapper">
					<span class="icon-close">
					<a href="<%=request.getContextPath()%>/list" class="btn-close" aria-label="Close" ></a></span>
					</div>
				</caption>

				<c:if test="${User != null}">
					<input type="hidden" name="id" value="<c:out value='${User.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${User.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${User.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${User.address}' />" class="form-control"
						name="address">
				</fieldset><br>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>